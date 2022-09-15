package com.br.smartcityapp.Helpers;

import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.StandardCharsets;

public class ApiHelper {


    public static String getApiData(String uri) throws IOException {

        BufferedReader reader = null;

        try{
            URL url = new URL(uri);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            conn.setRequestMethod("GET");
            conn.setConnectTimeout(5000);
            conn.setReadTimeout(5000);

            int codigoResposta = conn.getResponseCode();

            if (codigoResposta != 200){
                throw new RuntimeException("HTTPResponseCode: " + codigoResposta);
            }

            StringBuilder sb = new StringBuilder();
            reader = new BufferedReader(new InputStreamReader((conn.getInputStream())));

            String linha;

            while ((linha = reader.readLine()) != null) {
                sb.append(linha);
            }

            return sb.toString();
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
            return null;
        }
        finally {
            if (reader != null){
                reader.close();
            }
        }
    }


    public static String getApiData(String uri, String parametros) throws IOException {

        BufferedReader reader = null;

        try{
            byte[] postData = parametros.getBytes(StandardCharsets.UTF_8);

            URL url = new URL(uri+"?"+parametros);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();

            //conn.setDoOutput(true);
            conn.setRequestMethod("GET");
            conn.setRequestProperty("User-Agent", "Java client");
            conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            conn.setConnectTimeout(5000);
            conn.setReadTimeout(5000);


            int codigoResposta = conn.getResponseCode();

            /*
            if (codigoResposta != 200){
                throw new RuntimeException("HTTPResponseCode: " + codigoResposta);
            }
*/
            StringBuilder sb = new StringBuilder();
            reader = new BufferedReader(new InputStreamReader((conn.getInputStream())));

            String linha;

            while ((linha = reader.readLine()) != null) {
                sb.append(linha);
            }

            return sb.toString();
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
            return null;
        }
        finally {
            if (reader != null){
                reader.close();
            }
        }
    }
}
