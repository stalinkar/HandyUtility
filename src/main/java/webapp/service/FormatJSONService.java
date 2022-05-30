package webapp.service;

import java.io.IOException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.fasterxml.jackson.databind.ObjectMapper;

public class FormatJSONService {
	JSONObject jsonObj;
	JSONArray jsonArray = new JSONArray();
	ObjectMapper ObjectMapper;
//	public String formatJSON(String strJSON) {
//		String strFormatedJSON = "N/A";
//		ObjectMapper = new ObjectMapper();
//		try {
//			Object obj = ObjectMapper.readValue(strJSON,Object.class);
//			strFormatedJSON = ObjectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(obj);
//			
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//		return strFormatedJSON;
//	}
	
	public String formatJSON(String strJSON){
	  StringBuilder prettyJSONBuilder = new StringBuilder();
	  int indentLevel = 0;
	  boolean inQuote = false;
	  for(char charFromUnformattedJson : strJSON.toCharArray()) {
	    switch(charFromUnformattedJson) {
	      case '"':
	        // switch the quoting status
	        inQuote = !inQuote;
	        prettyJSONBuilder.append(charFromUnformattedJson);
	        break;
//	      case ' ':
//	        // For space: ignore the space if it is not being quoted.
//	        if(inQuote) {
//	          prettyJSONBuilder.append(charFromUnformattedJson);
//	        }
//	        break;
	      case '{':
	      case '[':
	        // Starting a new block: increase the indent level
	        prettyJSONBuilder.append(charFromUnformattedJson);
	        indentLevel++;
	        appendIndentedNewLine(indentLevel, prettyJSONBuilder);
	        break;
	      case '}':
	      case ']':
	        // Ending a new block; decrese the indent level
	        indentLevel--;
	        appendIndentedNewLine(indentLevel, prettyJSONBuilder);
	        prettyJSONBuilder.append(charFromUnformattedJson);
	        break;
	      case ',':
	        // Ending a json item; create a new line after
	        prettyJSONBuilder.append(charFromUnformattedJson);
	        if(!inQuote) {
	          appendIndentedNewLine(indentLevel, prettyJSONBuilder);
	        }
	        break;
	      default:
	        prettyJSONBuilder.append(charFromUnformattedJson);
	    }
	  }
	  return prettyJSONBuilder.toString();
	}
	private static void appendIndentedNewLine(int indentLevel, StringBuilder stringBuilder) {
	  stringBuilder.append("\n");
	  for(int i = 0; i < indentLevel; i++) {
	    stringBuilder.append("\t");
	  }
	}
}