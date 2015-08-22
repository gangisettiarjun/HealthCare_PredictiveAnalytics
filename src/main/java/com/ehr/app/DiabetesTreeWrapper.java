package com.ehr.app;

import weka.core.Attribute;
import weka.core.Capabilities;
import weka.core.Capabilities.Capability;
import weka.core.Instance;
import weka.core.Instances;
import weka.core.RevisionUtils;
import weka.classifiers.Classifier;

public class DiabetesTreeWrapper extends Classifier {

  /**
   * Returns only the toString() method.
   *
   * @return a string describing the classifier
   */
  public String globalInfo() {
    return toString();
  }

  /**
   * Returns the capabilities of this classifier.
   *
   * @return the capabilities
   */
  public Capabilities getCapabilities() {
    weka.core.Capabilities result = new weka.core.Capabilities(this);

    result.enable(weka.core.Capabilities.Capability.NOMINAL_ATTRIBUTES);
    result.enable(weka.core.Capabilities.Capability.NUMERIC_ATTRIBUTES);
    result.enable(weka.core.Capabilities.Capability.DATE_ATTRIBUTES);
    result.enable(weka.core.Capabilities.Capability.MISSING_VALUES);
    result.enable(weka.core.Capabilities.Capability.NOMINAL_CLASS);
    result.enable(weka.core.Capabilities.Capability.MISSING_CLASS_VALUES);

    result.setMinimumNumberInstances(0);

    return result;
  }

  /**
   * only checks the data against its capabilities.
   *
   * @param i the training data
   */
  public void buildClassifier(Instances i) throws Exception {
    // can classifier handle the data?
    getCapabilities().testWithFail(i);
  }

  /**
   * Classifies the given instance.
   *
   * @param i the instance to classify
   * @return the classification result
   */
  public double classifyInstance(Instance i) throws Exception {
    Object[] s = new Object[i.numAttributes()];
    
    for (int j = 0; j < s.length; j++) {
      if (!i.isMissing(j)) {
        if (i.attribute(j).isNominal())
          s[j] = new String(i.stringValue(j));
        else if (i.attribute(j).isNumeric())
          s[j] = new Double(i.value(j));
      }
    }
    
    // set class value to missing
    s[i.classIndex()] = null;
    
    return DiabetesTree.classify(s);
  }

  /**
   * Returns the revision string.
   * 
   * @return        the revision
   */
  public String getRevision() {
    return RevisionUtils.extract("1.0");
  }

  /**
   * Returns only the classnames and what classifier it is based on.
   *
   * @return a short description
   */
  public String toString() {
    return "Auto-generated classifier wrapper, based on weka.classifiers.trees.J48 (generated with Weka 3.6.12).\n" + this.getClass().getName() + "/DiabetesTree";
  }

  /**
   * Runs the classfier from commandline.
   *
   * @param args the commandline arguments
   */
  public static void main(String args[]) {
    runClassifier(new DiabetesTreeWrapper(), args);
  }
}

class DiabetesTree {

  public static double classify(Object[] i)
    throws Exception {

    double p = Double.NaN;
    p = DiabetesTree.N44dc96f40(i);
    return p;
  }
  static double N44dc96f40(Object []i) {
    double p = Double.NaN;
    if (i[1] == null) {
      p = 0;
    } else if (((Double) i[1]).doubleValue() <= 123.0) {
    p = DiabetesTree.N6fe84e5c1(i);
    } else if (((Double) i[1]).doubleValue() > 123.0) {
    p = DiabetesTree.N17935a5f3(i);
    } 
    return p;
  }
  static double N6fe84e5c1(Object []i) {
    double p = Double.NaN;
    if (i[4] == null) {
      p = 0;
    } else if (((Double) i[4]).doubleValue() <= 142.0) {
      p = 0;
    } else if (((Double) i[4]).doubleValue() > 142.0) {
    p = DiabetesTree.N5a89a7102(i);
    } 
    return p;
  }
  static double N5a89a7102(Object []i) {
    double p = Double.NaN;
    if (i[7] == null) {
      p = 0;
    } else if (((Double) i[7]).doubleValue() <= 28.0) {
      p = 0;
    } else if (((Double) i[7]).doubleValue() > 28.0) {
      p = 1;
    } 
    return p;
  }
  static double N17935a5f3(Object []i) {
    double p = Double.NaN;
    if (i[5] == null) {
      p = 0;
    } else if (((Double) i[5]).doubleValue() <= 29.9) {
    p = DiabetesTree.N37d8156f4(i);
    } else if (((Double) i[5]).doubleValue() > 29.9) {
    p = DiabetesTree.N278086bb13(i);
    } 
    return p;
  }
  static double N37d8156f4(Object []i) {
    double p = Double.NaN;
    if (i[0] == null) {
      p = 0;
    } else if (((Double) i[0]).doubleValue() <= 1.0) {
      p = 0;
    } else if (((Double) i[0]).doubleValue() > 1.0) {
    p = DiabetesTree.N1aef37665(i);
    } 
    return p;
  }
  static double N1aef37665(Object []i) {
    double p = Double.NaN;
    if (i[2] == null) {
      p = 1;
    } else if (((Double) i[2]).doubleValue() <= 72.0) {
    p = DiabetesTree.Ndc9a20c6(i);
    } else if (((Double) i[2]).doubleValue() > 72.0) {
    p = DiabetesTree.N14b613cb9(i);
    } 
    return p;
  }
  static double Ndc9a20c6(Object []i) {
    double p = Double.NaN;
    if (i[1] == null) {
      p = 0;
    } else if (((Double) i[1]).doubleValue() <= 160.0) {
    p = DiabetesTree.N8550487(i);
    } else if (((Double) i[1]).doubleValue() > 160.0) {
      p = 1;
    } 
    return p;
  }
  static double N8550487(Object []i) {
    double p = Double.NaN;
    if (i[0] == null) {
      p = 1;
    } else if (((Double) i[0]).doubleValue() <= 4.0) {
    p = DiabetesTree.N77815e5a8(i);
    } else if (((Double) i[0]).doubleValue() > 4.0) {
      p = 0;
    } 
    return p;
  }
  static double N77815e5a8(Object []i) {
    double p = Double.NaN;
    if (i[4] == null) {
      p = 1;
    } else if (((Double) i[4]).doubleValue() <= 125.0) {
      p = 1;
    } else if (((Double) i[4]).doubleValue() > 125.0) {
      p = 0;
    } 
    return p;
  }
  static double N14b613cb9(Object []i) {
    double p = Double.NaN;
    if (i[1] == null) {
      p = 1;
    } else if (((Double) i[1]).doubleValue() <= 125.0) {
      p = 1;
    } else if (((Double) i[1]).doubleValue() > 125.0) {
    p = DiabetesTree.N54af1a9310(i);
    } 
    return p;
  }
  static double N54af1a9310(Object []i) {
    double p = Double.NaN;
    if (i[1] == null) {
      p = 0;
    } else if (((Double) i[1]).doubleValue() <= 151.0) {
      p = 0;
    } else if (((Double) i[1]).doubleValue() > 151.0) {
    p = DiabetesTree.N7e02075e11(i);
    } 
    return p;
  }
  static double N7e02075e11(Object []i) {
    double p = Double.NaN;
    if (i[5] == null) {
      p = 1;
    } else if (((Double) i[5]).doubleValue() <= 26.0) {
      p = 1;
    } else if (((Double) i[5]).doubleValue() > 26.0) {
    p = DiabetesTree.N38ce54a12(i);
    } 
    return p;
  }
  static double N38ce54a12(Object []i) {
    double p = Double.NaN;
    if (i[4] == null) {
      p = 0;
    } else if (((Double) i[4]).doubleValue() <= 14.0) {
      p = 0;
    } else if (((Double) i[4]).doubleValue() > 14.0) {
      p = 1;
    } 
    return p;
  }
  static double N278086bb13(Object []i) {
    double p = Double.NaN;
    if (i[2] == null) {
      p = 1;
    } else if (((Double) i[2]).doubleValue() <= 56.0) {
      p = 1;
    } else if (((Double) i[2]).doubleValue() > 56.0) {
    p = DiabetesTree.Nbd77b5a14(i);
    } 
    return p;
  }
  static double Nbd77b5a14(Object []i) {
    double p = Double.NaN;
    if (i[1] == null) {
      p = 1;
    } else if (((Double) i[1]).doubleValue() <= 155.0) {
    p = DiabetesTree.N6501b58915(i);
    } else if (((Double) i[1]).doubleValue() > 155.0) {
      p = 1;
    } 
    return p;
  }
  static double N6501b58915(Object []i) {
    double p = Double.NaN;
    if (i[2] == null) {
      p = 0;
    } else if (((Double) i[2]).doubleValue() <= 88.0) {
    p = DiabetesTree.N1c3bad616(i);
    } else if (((Double) i[2]).doubleValue() > 88.0) {
      p = 1;
    } 
    return p;
  }
  static double N1c3bad616(Object []i) {
    double p = Double.NaN;
    if (i[0] == null) {
      p = 0;
    } else if (((Double) i[0]).doubleValue() <= 7.0) {
      p = 0;
    } else if (((Double) i[0]).doubleValue() > 7.0) {
    p = DiabetesTree.N2255410b17(i);
    } 
    return p;
  }
  static double N2255410b17(Object []i) {
    double p = Double.NaN;
    if (i[6] == null) {
      p = 0;
    } else if (((Double) i[6]).doubleValue() <= 0.467) {
    p = DiabetesTree.N12e8f3b018(i);
    } else if (((Double) i[6]).doubleValue() > 0.467) {
      p = 1;
    } 
    return p;
  }
  static double N12e8f3b018(Object []i) {
    double p = Double.NaN;
    if (i[2] == null) {
      p = 1;
    } else if (((Double) i[2]).doubleValue() <= 74.0) {
      p = 1;
    } else if (((Double) i[2]).doubleValue() > 74.0) {
      p = 0;
    } 
    return p;
  }
}
