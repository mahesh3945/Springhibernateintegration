package com.impl;

public class MyException extends Exception
{

	private static final long serialVersionUID = 1L;
	String message;
    public MyException() {
	message="age should be above 20";
}
@Override
public String getMessage() {
	// TODO Auto-generated method stub
	return message;
}
}
