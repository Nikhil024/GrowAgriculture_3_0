package com.grow.agriculture.custom.annotations;

import org.mvel2.MVEL;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class MatchesValidator implements ConstraintValidator<Matches, Object> {

  private String field;
  private String verifyField;


  public void initialize(Matches constraintAnnotation) {
    this.field = constraintAnnotation.field();
    this.verifyField = constraintAnnotation.verifyField();
  }

  public boolean isValid(Object value, ConstraintValidatorContext context) {
    Object fieldObj = MVEL.getProperty(field, value);
    Object verifyFieldObj = MVEL.getProperty(verifyField, value);

    boolean neitherSet = (fieldObj == null) && (verifyFieldObj == null);

    if (neitherSet) {
      return true;
    }

    boolean matches = (fieldObj != null) && fieldObj.equals(verifyFieldObj);

    if (!matches) {
      context.disableDefaultConstraintViolation();
      context.buildConstraintViolationWithTemplate("Passwords are not Equal")
          .addNode(verifyField)
          .addConstraintViolation();
    }

    return matches;
  }
}