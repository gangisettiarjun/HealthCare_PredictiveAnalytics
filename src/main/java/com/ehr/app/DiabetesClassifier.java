package com.ehr.app;

import java.io.BufferedReader;
import java.io.FileReader;

import weka.core.Instances;

public class DiabetesClassifier {
	
	public String getDiabetesPrediction() {
		DiabetesTreeWrapper dtw = new DiabetesTreeWrapper();
		String result = null;
		
		try {
			Instances unlabeled = new Instances(new BufferedReader(new FileReader("diabetesinput.arff")));
			unlabeled.setClassIndex(unlabeled.numAttributes() - 1);
			for (int i = 0; i < unlabeled.numInstances(); i++) {
				double clsLabel = dtw.classifyInstance(unlabeled.instance(i));
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
