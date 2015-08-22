package com.ehr.app;

import weka.core.Attribute;
import weka.core.Capabilities;
import weka.core.Capabilities.Capability;
import weka.core.Instance;
import weka.core.Instances;
import weka.core.RevisionUtils;
import weka.classifiers.Classifier;

public class WekaWrapper
  extends Classifier {

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
    
    return WekaClassifier.classify(s);
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
    return "Auto-generated classifier wrapper, based on weka.classifiers.trees.J48 (generated with Weka 3.6.12).\n" + this.getClass().getName() + "/WekaClassifier";
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

class WekaClassifier {

  public static double classify(Object[] i)
    throws Exception {

    double p = Double.NaN;
    p = WekaClassifier.N2e0077990(i);
    return p;
  }
  static double N2e0077990(Object []i) {
    double p = Double.NaN;
    if (i[12] == null) {
      p = 0;
    } else if (i[12].equals("3")) {
    p = WekaClassifier.N4e0d9bcf1(i);
    } else if (i[12].equals("6")) {
    p = WekaClassifier.N77e6c8237(i);
    } else if (i[12].equals("7")) {
    p = WekaClassifier.N766de6628(i);
    } 
    return p;
  }
  static double N4e0d9bcf1(Object []i) {
    double p = Double.NaN;
    if (i[11] == null) {
      p = 0;
    } else if (i[11].equals("0")) {
    p = WekaClassifier.N6c4d07d82(i);
    } else if (i[11].equals("1")) {
    p = WekaClassifier.N759e92974(i);
    } else if (i[11].equals("2")) {
    p = WekaClassifier.N531802ea6(i);
    } else if (i[11].equals("3")) {
      p = 1;
    } 
    return p;
  }
  static double N6c4d07d82(Object []i) {
    double p = Double.NaN;
    if (i[3] == null) {
      p = 0;
    } else if (((Double) i[3]).doubleValue() <= 146.0) {
      p = 0;
    } else if (((Double) i[3]).doubleValue() > 146.0) {
    p = WekaClassifier.N580f9ab03(i);
    } 
    return p;
  }
  static double N580f9ab03(Object []i) {
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
  static double N759e92974(Object []i) {
    double p = Double.NaN;
    if (i[1] == null) {
      p = 0;
    } else if (i[1].equals("0")) {
      p = 0;
    } else if (i[1].equals("1")) {
    p = WekaClassifier.N57efac085(i);
    } 
    return p;
  }
  static double N57efac085(Object []i) {
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
  static double N531802ea6(Object []i) {
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
  static double N77e6c8237(Object []i) {
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
  static double N766de6628(Object []i) {
    double p = Double.NaN;
    if (i[2] == null) {
      p = 0;
    } else if (i[2].equals("1")) {
      p = 0;
    } else if (i[2].equals("2")) {
    p = WekaClassifier.N5c489b4b9(i);
    } else if (i[2].equals("3")) {
    p = WekaClassifier.N4fd4cd7a10(i);
    } else if (i[2].equals("4")) {
    p = WekaClassifier.Nf7f495713(i);
    } 
    return p;
  }
  static double N5c489b4b9(Object []i) {
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
  static double N4fd4cd7a10(Object []i) {
    double p = Double.NaN;
    if (i[9] == null) {
      p = 0;
    } else if (((Double) i[9]).doubleValue() <= 1.6) {
    p = WekaClassifier.Ne32a37311(i);
    } else if (((Double) i[9]).doubleValue() > 1.6) {
      p = 1;
    } 
    return p;
  }
  static double Ne32a37311(Object []i) {
    double p = Double.NaN;
    if (i[11] == null) {
      p = 0;
    } else if (i[11].equals("0")) {
      p = 0;
    } else if (i[11].equals("1")) {
    p = WekaClassifier.N17f51a2112(i);
    } else if (i[11].equals("2")) {
      p = 0;
    } else if (i[11].equals("3")) {
      p = 0;
    } 
    return p;
  }
  static double N17f51a2112(Object []i) {
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
  static double Nf7f495713(Object []i) {
    double p = Double.NaN;
    if (i[9] == null) {
      p = 1;
    } else if (((Double) i[9]).doubleValue() <= 0.6) {
    p = WekaClassifier.N66a9eadf14(i);
    } else if (((Double) i[9]).doubleValue() > 0.6) {
      p = 1;
    } 
    return p;
  }
  static double N66a9eadf14(Object []i) {
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
