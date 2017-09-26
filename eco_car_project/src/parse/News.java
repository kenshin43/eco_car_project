package parse;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


public class News {
    public static net.sf.json.JSONArray insertNews() {
        String clientId = "vTQHKtUCFPGxIAzV58lU";//애플리케이션 클라이언트 아이디값";
        String clientSecret = "b3f9m9Z4Fo";//애플리케이션 클라이언트 시크릿값";
        net.sf.json.JSONArray jArray = null;
        try {
            String text = URLEncoder.encode("전기자동차+충전소", "UTF-8");
            String apiURL = "https://openapi.naver.com/v1/search/news.json?query="+ text + "&display=20"; // json 결과
            //String apiURL = "https://openapi.naver.com/v1/search/blog.xml?query="+ text; // xml 결과
            URL url = new URL(apiURL);
            HttpURLConnection con = (HttpURLConnection)url.openConnection();
            con.setRequestMethod("GET");
            con.setRequestProperty("X-Naver-Client-Id", clientId);
            con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
            int responseCode = con.getResponseCode();
            BufferedReader br;
            if(responseCode==200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }
            String inputLine;
            StringBuffer response = new StringBuffer();
            while ((inputLine = br.readLine()) != null) {
                response.append(inputLine);
            }
            br.close();
            JSONParser jsonParser = new JSONParser();
            JSONObject jsonObject = (JSONObject) jsonParser.parse(response.toString());
            String str = jsonObject.toString();
            jsonObject = (JSONObject) jsonParser.parse(str);
            JSONArray jsonArray = (JSONArray) jsonObject.get("items");
            jArray = net.sf.json.JSONArray.fromObject(jsonArray.toString());
        } catch (Exception e) {
            System.out.println(e);
        }
        return jArray;
    }
} // end of class