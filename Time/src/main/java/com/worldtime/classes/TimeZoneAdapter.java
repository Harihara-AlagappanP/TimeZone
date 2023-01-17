package com.worldtime.classes;

import java.util.Date;
import java.text.DateFormat;
import java.util.TimeZone;

public class TimeZoneAdapter {

	public String[] getTime(String timeZoneID) {
		TimeZone timeZone = TimeZone.getTimeZone(timeZoneID);
		DateFormat timeFormatter = DateFormat.getTimeInstance();
		timeFormatter.setTimeZone(timeZone);
		
		Date currentDate = new Date();
		String time = timeFormatter.format(currentDate);
		
		
		String timeZoneName = timeZone.getDisplayName();
		String timeZoneShortForm = "";
		String[] words = timeZoneName.split(" ");

        if(words.length > 1) {
            for (String word : words) {
                timeZoneShortForm += word.charAt(0);
            }
        }
        else{
            timeZoneShortForm = timeZoneName;
        }
        
        String[] responseArray = {time, timeZoneShortForm};
        return responseArray;
	}
}
