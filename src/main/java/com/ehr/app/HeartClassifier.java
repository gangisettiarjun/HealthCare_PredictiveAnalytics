package com.ehr.app;
import java.io.BufferedReader; 
import java.io.FileReader;
import weka.core.Instances;

public class HeartClassifier {
	public String getHeartPrediction() {
		WekaWrapper ww = new WekaWrapper();
		String result = null;
		
		try {
			Instances unlabeled = new Instances(new BufferedReader(new FileReader("heartinput.arff")));
			unlabeled.setClassIndex(unlabeled.numAttributes() - 1);
			for (int i = 0; i < unlabeled.numInstances(); i++) {
				double clsLabel = ww.classifyInstance(unlabeled.instance(i));
				System.out.println(clsLabel + " -> " + 
				unlabeled.classAttribute().value((int) clsLabel));
				result = unlabeled.classAttribute().value((int) clsLabel);
			}
		}
		
		catch (Exception e){
			e.printStackTrace();
		}
		return result;
	}
}
