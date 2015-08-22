package com.ehr.app;

import weka.core.Attribute;
import weka.core.Capabilities;
import weka.core.Capabilities.Capability;
import weka.core.Instance;
import weka.core.Instances;
import weka.core.RevisionUtils;
import weka.classifiers.Classifier;

public class HeartTreeWrapper extends Classifier {

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
    
    return HeartTree.classify(s);
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
    return "Auto-generated classifier wrapper, based on weka.classifiers.trees.J48 (generated with Weka 3.6.12).\n" + this.getClass().getName() + "/HeartTree";
  }

  /**
   * Runs the classfier from commandline.
   *
   * @param args the commandline arguments
   */
  public static void main(String args[]) {
    runClassifier(new WekaWrapper(), args);
  }
}

class HeartTree {

  public static double classify(Object[] i)
    throws Exception {

    double p = Double.NaN;
    p = HeartTree.N57518e9a34(i);
    return p;
  }
  static double N57518e9a34(Object []i) {
    double p = Double.NaN;
    if (i[12] == null) {
      p = 0;
    } else if (i[12].equals("3")) {
    p = HeartTree.N1b02d3ef35(i);
    } else if (i[12].equals("6")) {
    p = HeartTree.N16456eb941(i);
    } else if (i[12].equals("7")) {
    p = HeartTree.N3cbc70e542(i);
    } 
    return p;
  }
  static double N1b02d3ef35(Object []i) {
    double p = Double.NaN;
    if (i[11] == null) {
      p = 0;
    } else if (i[11].equals("0")) {
    p = HeartTree.N2abaa6a536(i);
    } else if (i[11].equals("1")) {
    p = HeartTree.N66e9874b38(i);
    } else if (i[11].equals("2")) {
    p = HeartTree.N1409b19640(i);
    } else if (i[11].equals("3")) {
      p = 1;
    } 
    return p;
  }
  static double N2abaa6a536(Object []i) {
    double p = Double.NaN;
    if (i[3] == null) {
      p = 0;
    } else if (((Double) i[3]).doubleValue() <= 146.0) {
      p = 0;
    } else if (((Double) i[3]).doubleValue() > 146.0) {
    p = HeartTree.N3d17eb2d37(i);
    } 
    return p;
  }
  static double N3d17eb2d37(Object []i) {
    double p = Double.NaN;
    if (i[10] == null) {
      p = 0;
    } else if (i[10].equals("1")) {
      p = 0;
    } else if (i[10].equals("2")) {
      p = 1;
    } else if (i[10].equals("3")) {
      p = 0;
    } 
    return p;
  }
  static double N66e9874b38(Object []i) {
    double p = Double.NaN;
    if (i[1] == null) {
      p = 0;
    } else if (i[1].equals("0")) {
      p = 0;
    } else if (i[1].equals("1")) {
    p = HeartTree.N6b79bdd239(i);
    } 
    return p;
  }
  static double N6b79bdd239(Object []i) {
    double p = Double.NaN;
    if (i[2] == null) {
      p = 0;
    } else if (i[2].equals("1")) {
      p = 0;
    } else if (i[2].equals("2")) {
      p = 0;
    } else if (i[2].equals("3")) {
      p = 0;
    } else if (i[2].equals("4")) {
      p = 1;
    } 
    return p;
  }
  static double N1409b19640(Object []i) {
    double p = Double.NaN;
    if (i[8] == null) {
      p = 0;
    } else if (i[8].equals("0")) {
      p = 0;
    } else if (i[8].equals("1")) {
      p = 1;
    } 
    return p;
  }
  static double N16456eb941(Object []i) {
    double p = Double.NaN;
    if (i[11] == null) {
      p = 0;
    } else if (i[11].equals("0")) {
      p = 0;
    } else if (i[11].equals("1")) {
      p = 1;
    } else if (i[11].equals("2")) {
      p = 1;
    } else if (i[11].equals("3")) {
      p = 1;
    } 
    return p;
  }
  static double N3cbc70e542(Object []i) {
    double p = Double.NaN;
    if (i[2] == null) {
      p = 0;
    } else if (i[2].equals("1")) {
      p = 0;
    } else if (i[2].equals("2")) {
    p = HeartTree.N1a8ddd8d43(i);
    } else if (i[2].equals("3")) {
    p = HeartTree.N43d15a4b44(i);
    } else if (i[2].equals("4")) {
    p = HeartTree.N552d684747(i);
    } 
    return p;
  }
  static double N1a8ddd8d43(Object []i) {
    double p = Double.NaN;
    if (i[3] == null) {
      p = 0;
    } else if (((Double) i[3]).doubleValue() <= 112.0) {
      p = 0;
    } else if (((Double) i[3]).doubleValue() > 112.0) {
      p = 1;
    } 
    return p;
  }
  static double N43d15a4b44(Object []i) {
    double p = Double.NaN;
    if (i[9] == null) {
      p = 0;
    } else if (((Double) i[9]).doubleValue() <= 1.6) {
    p = HeartTree.N7e5cd42e45(i);
    } else if (((Double) i[9]).doubleValue() > 1.6) {
      p = 1;
    } 
    return p;
  }
  static double N7e5cd42e45(Object []i) {
    double p = Double.NaN;
    if (i[11] == null) {
      p = 0;
    } else if (i[11].equals("0")) {
      p = 0;
    } else if (i[11].equals("1")) {
    p = HeartTree.N2138b85846(i);
    } else if (i[11].equals("2")) {
      p = 0;
    } else if (i[11].equals("3")) {
      p = 0;
    } 
    return p;
  }
  static double N2138b85846(Object []i) {
    double p = Double.NaN;
    if (i[10] == null) {
      p = 0;
    } else if (i[10].equals("1")) {
      p = 0;
    } else if (i[10].equals("2")) {
      p = 1;
    } else if (i[10].equals("3")) {
      p = 0;
    } 
    return p;
  }
  static double N552d684747(Object []i) {
    double p = Double.NaN;
    if (i[9] == null) {
      p = 1;
    } else if (((Double) i[9]).doubleValue() <= 0.6) {
    p = HeartTree.N1c6763ab48(i);
    } else if (((Double) i[9]).doubleValue() > 0.6) {
      p = 1;
    } 
    return p;
  }
  static double N1c6763ab48(Object []i) {
    double p = Double.NaN;
    if (i[6] == null) {
      p = 0;
    } else if (i[6].equals("0")) {
      p = 0;
    } else if (i[6].equals("1")) {
      p = 1;
    } else if (i[6].equals("2")) {
      p = 1;
    } 
    return p;
  }
}
