package com.chainsys.bookmanagement.commonutil;

public class ExceptionManager {
	public static String HandleException(Exception er,String source,String message) {
		LogManager.logException(er,source);
		message +="message: "+er.getMessage();
		String errorPage=HTMLHelper.getHTMLTemplate("ERROR",message);
		return errorPage;
				
	}
}



