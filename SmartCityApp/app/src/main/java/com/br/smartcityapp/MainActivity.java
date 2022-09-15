package com.br.smartcityapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.os.StrictMode;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import android.widget.Button;

import com.br.smartcityapp.entity.Usuario;
import com.google.gson.Gson;

import com.br.smartcityapp.Helpers.ApiHelper;
import com.google.gson.GsonBuilder;

import java.io.IOException;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        StrictMode.ThreadPolicy policy = new StrictMode.ThreadPolicy.Builder().permitAll().build();
        StrictMode.setThreadPolicy(policy);
    }

    private void alert(String s){
        Toast.makeText(this, s, Toast.LENGTH_LONG).show();
    }

    public void btLogin_onClick(View v) {
        TextView tLogin = (TextView) findViewById(R.id.tLogin);
        TextView tSenha = (TextView) findViewById((R.id.tSenha));

        String login = tLogin.getText().toString();
        String senha = tSenha.getText().toString();

        String uri = "http://10.0.2.2:5000/Usuario/Login";
        String parametros = "login=" + login + "&senha=" + senha;

        try {
            String retorno = ApiHelper.getApiData(uri, parametros);

            Gson parser = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
            Usuario usu = parser.fromJson(retorno,Usuario.class);

            if (usu != null) {
                if(usu.getId() != 0){
                    Intent intent = new Intent(this, PrincipalActivity.class);
                    intent.putExtra("EXTRA_NOME_USUARIO", usu.getNome());

                    startActivity(intent);
                }
                else {
                    alert("Usuário/senha inválido");
                }
            }
            else
            {
                alert("Usuário/senha inválido");
            }

        } catch (Exception ex) {
            ex.printStackTrace();
        }

    }

    public void btCadastrar_onClick(View v) {

        Intent intent = new Intent(this, CadastroUsuarioActivity.class);
        startActivity(intent);
    }
}