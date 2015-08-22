package com.ehr.app;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ehr.dbconfig.SpringMongoConfig;
import com.ehr.model.DiabetesDataBean;
import com.ehr.model.DoctorBean;
import com.ehr.model.HeartDataBean;
import com.ehr.model.LoginBean;
import com.mongodb.BasicDBObject;
import com.mongodb.DB;
import com.mongodb.DBCollection;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.MongoException;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;
import org.springframework.data.mongodb.core.MongoOperations;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
 
/**
 * Handles requests for the application home page.
 */
@Controller
public class DecisionTreeController {
	
	private static final Logger logger = LoggerFactory.getLogger(DecisionTreeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		model.addAttribute("serverTime", formattedDate );
		return "login";
	}
	
	@RequestMapping(value = "/registration", method = RequestMethod.GET)
	public String signup() {
		return "registration";
	}
	
	@RequestMapping(value = "/diabetesform", method = RequestMethod.GET)
	public String diabetesForm() {
		return "DiabetesForm";
	}
	
	@RequestMapping(value = "/heartform", method = RequestMethod.GET)
	public String heartForm() {
		return "HeartForm";
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login() {
		return "login";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		return "login";
	}
	
	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public String dashBoard() {
		return "reports";
	}
	
	@RequestMapping(value = "/diabetesreport", method = RequestMethod.GET)
	public String diabetesPage() {
		return "DiabetesReport";
	}
	
	@RequestMapping(value = "/doctorLogin", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView doctorLogin(@ModelAttribute("LoginData") LoginBean user) {
		//System.out.pri
		//System.out.println("LoginBean USer : "+user);
		ModelAndView ReportsModel = new ModelAndView("reports");
		ModelAndView loginModel = new ModelAndView("login");
/*		System.out.println("Entered login 1");*/
		ApplicationContext ctx = new AnnotationConfigApplicationContext(SpringMongoConfig.class);
		MongoOperations mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");
		String username = user.getUsername();
		String password = user.getPassword();
/*		System.out.println("Entered login 2");
		System.out.println("Entered login UserName:"+username);
		System.out.println("Entered login Password:"+password);
		System.out.println("Entered login 3");*/
		Query searchUserQuery = new Query(Criteria.where("username").is(username));
		DoctorBean dcBean = mongoOperation.findOne(searchUserQuery, DoctorBean.class);
/*		System.out.println("Entered login 4");*/
		
		if(dcBean != null)
		{
		if (dcBean.getPassword().toString().equals(password.toString())){
			System.out.println("Entered login 7");
			return ReportsModel;
		}
		}
		
		return loginModel;

	}
	
	@RequestMapping(value = "/create/doctor", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView createProfile(@ModelAttribute("DoctorData") DoctorBean dcBean) {
		System.out.println("Entered profile method");
		ModelAndView loginModel = new ModelAndView("login");
		try {
/*            String textUri = "mongodb://arjun:test123@ds031902.mongolab.com:31902/ehrdatabase";
            MongoClientURI uri = new MongoClientURI(textUri);
            MongoClient client = new MongoClient(uri);
            DB db = client.getDB("ehrdatabase");
            DBCollection store = db.getCollection("DoctorProfile");
            BasicDBObject postUser = new BasicDBObject();
            postUser.put("username", dcBean.getUsername());
            postUser.put("password", dcBean.getPassword());
            postUser.put("fName", dcBean.getfName());
            postUser.put("lName", dcBean.getlName());
            postUser.put("department", dcBean.getDepartment());
            postUser.put("email", dcBean.getEmail());
            postUser.put("phoneNumber", dcBean.getPhoneNumber());
            store.insert(postUser);*/
			
			ApplicationContext ctx = 
		             new AnnotationConfigApplicationContext(SpringMongoConfig.class);
			MongoOperations mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");
			mongoOperation.save(dcBean);
		 
        }
        catch (MongoException e) {
            e.printStackTrace();
        }
		return loginModel;
	}
	
	
	//Method for Handling Incoming Heart Data, Transforming data and Running the Heart Classifier
	@RequestMapping(value = "/analyze/heartdata", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView analyzeHeartData(@ModelAttribute("HeartData") HeartDataBean hdBean) {
		ModelAndView heartTreeResult = new ModelAndView("HeartResult");
		HeartClassifier hcf = new HeartClassifier();
		String heartResult = null;
		StringBuilder sbText = new StringBuilder("@relation HeartData" + "\n"+ "\n"+
												"@attribute Age numeric" + "\n" +
												"@attribute Sex {0, 1}" + "\n"+
												"@attribute ChestPainType {1, 2, 3, 4}" + "\n"+
												"@attribute RestingBloodPressure numeric" + "\n"+
												"@attribute SerumCholesterol numeric" + "\n"+
												"@attribute FastingBloodSugar {0, 1}" + "\n"+
												"@attribute RestingElectroCardiographResults {0, 1, 2}" + "\n"+
												"@attribute MaximumHeartRate numeric" + "\n"+
												"@attribute ExerciseInducedAngina {0, 1}" + "\n"+
												"@attribute OldPeak numeric" + "\n"+
												"@attribute SlopeOfPeak {1, 2, 3}" + "\n"+
												"@attribute MajorVesselsColoredByFlouroscopy {0, 1, 2, 3}" + "\n"+
												"@attribute Thal {3, 6, 7}" + "\n"+
												"@attribute HeartProblem {1, 2}" + "\n"+ "\n"+
												"@data" + "\n");
		if (hdBean.getSex()=="Male"){
			hdBean.setSex("0");
		}
		if (hdBean.getSex()=="Female"){
			hdBean.setSex("1");
		}
		sbText.append(hdBean.getAge()+"," + hdBean.getSex() + "," + hdBean.getChestPainType()+ "," + hdBean.getRestingBloodPressure() + ","
					  + hdBean.getSerumCholestrol() + "," + hdBean.getFastingBloodSugar() + "," + hdBean.getRestingECGResult() + ","
					  + hdBean.getMaxHeartRate() + "," + hdBean.geteIAngina() + "," + hdBean.getOldPeak() + "," + hdBean.getSlopePeak() + ","
					  + hdBean.getVsFlouroscopy() + "," + hdBean.getThal() + "," + "?");
		
		try {
			  	File file = new File("heartinput.arff");
		        if(!file.exists()){
		            file.createNewFile();
		        }
			  	FileWriter fw = new FileWriter("heartinput.arff");
			  	System.out.print("Entered Writer");
			    BufferedWriter writer = new BufferedWriter(fw);
			    writer.write(sbText.toString());
			    writer.flush();
			    writer.close();
				heartResult = hcf.getHeartPrediction();
				System.out.println(heartResult);
				hdBean.setHeartProblem(heartResult);
				ApplicationContext ctx = 
			             new AnnotationConfigApplicationContext(SpringMongoConfig.class);
				MongoOperations mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");
				mongoOperation.save(hdBean);
			    
			} catch (IOException e) {
	            e.printStackTrace();
	        }
		
	        catch (MongoException e) {
	            e.printStackTrace();
	        }
		
	        catch (Exception e) {
	            e.printStackTrace();
	        }

		  heartTreeResult.addObject("HeartClassLabel", heartResult);
		  heartTreeResult.addObject("HeartData", hdBean);
		  return heartTreeResult;
	}
	

	//Method for Handling Incoming Diabetes Data, Transforming data and Running the Diabetes Classifier
	@RequestMapping(value = "/analyze/diabetesdata", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView createQuiz(@ModelAttribute("DiabetesData") DiabetesDataBean ddBean) {
		ModelAndView diabetesTreeResult = new ModelAndView("DiabetesResult");
		DiabetesClassifier dcf = new DiabetesClassifier();
		String diabetesResult = null;
		StringBuilder sbText = new StringBuilder("@relation DiabetesData" + "\n"+ "\n"+
												"@attribute NumberOfMedications numeric" + "\n" +
												"@attribute PlasmaGlucoseConcentration numeric" + "\n" +
												"@attribute DiastolicBloodPressure numeric" + "\n" +
												"@attribute TricepsSkinFoldThickness numeric" + "\n" + 
												"@attribute SerumInsulin numeric" + "\n" +
												"@attribute BodyMassIndex numeric" + "\n" +
												"@attribute DiabetesPedigreeFunction numeric" + "\n" +
												"@attribute Age numeric" + "\n" + 
												"@attribute DiabetesProblem {0, 1}" + "\n" + "\n" +
												"@data" + "\n");
		
		sbText.append(ddBean.getNumberOfMedications() + "," + ddBean.getPlasmaGlucoseConcentration()+ "," + ddBean.getDiastolicBloodPressure() + ","
					+ ddBean.getTricepsSkinFoldThickness() + "," + ddBean.getSerumInsulin()+ "," + ddBean.getBodyMassIndex()+ "," + 
					ddBean.getDiabetesPedigreeFunction() + "," + ddBean.getAge() + "," + "?");
		
		try {
			  	File file = new File("diabetesinput.arff");
		        if(!file.exists()){
		            file.createNewFile();
		        }
			  	FileWriter fw = new FileWriter("diabetesinput.arff");
			  	System.out.print("Entered Writer");
			    BufferedWriter writer = new BufferedWriter(fw);
			    writer.write(sbText.toString());
			    writer.flush();
			    writer.close();
				diabetesResult = dcf.getDiabetesPrediction();
				System.out.println(diabetesResult);
				ddBean.setDiabetesProblem(diabetesResult);
				ApplicationContext ctx = 
			             new AnnotationConfigApplicationContext(SpringMongoConfig.class);
				MongoOperations mongoOperation = (MongoOperations) ctx.getBean("mongoTemplate");
				mongoOperation.save(ddBean);
				
			    
			} catch (IOException e) {
	            e.printStackTrace();
	        }
		
	        catch (MongoException e) {
	            e.printStackTrace();
	        }
		
	        catch (Exception e) {
	            e.printStackTrace();
	        }

		  diabetesTreeResult.addObject("DiabetesClassLabel", diabetesResult);
		  diabetesTreeResult.addObject("DiabetesData", ddBean);
		  return diabetesTreeResult;
	}
	
}
