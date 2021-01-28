package com.example.Ung_dung_Caculator;

public class Calculator {

    public static float getCalculator(float firstOperand, float secondOperand, char Operator){
        switch (Operator) {
            case '+':
                return firstOperand + secondOperand;
            case '-':
                return firstOperand-secondOperand;
            case '*':
                return firstOperand*secondOperand;
            case '/':
                if(secondOperand!=0) return firstOperand/secondOperand;
                throw  new RuntimeException("Can't div by zero");
            default:
                throw  new RuntimeException("404 Not Found!");
        }
    }
}
