package com.br.smartcityapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.br.smartcityapp.Helpers.ApiHelper;
import com.br.smartcityapp.entity.Usuario;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

public class CadastroUsuarioActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_cadastro_usuario);

        setTitle("Cadastrar Usuário");
    }

    private void alert(String s){
        Toast.makeText(this, s, Toast.LENGTH_LONG).show();
    }

    public void btCadastrar_onClick(View v) {

        try {

            Boolean valido = true;

            TextView tNome = (TextView) findViewById((R.id.tNome));
            TextView tLogin = (TextView) findViewById(R.id.tLogin);
            TextView tSenha = (TextView) findViewById((R.id.tSenha));
            TextView tSenha2 = (TextView) findViewById((R.id.tSenha2));
            TextView tBio = (TextView) findViewById((R.id.tBio));

            TextView tvNome = (TextView) findViewById((R.id.lNome));
            TextView tvLogin = (TextView) findViewById(R.id.tvLogin);
            TextView tvSenha = (TextView) findViewById((R.id.tvSenha));
            TextView tvSenha2 = (TextView) findViewById((R.id.tvSenha2));
            TextView tvBio = (TextView) findViewById((R.id.tvBio));

            String nome = tNome.getText().toString();
            String login = tLogin.getText().toString();
            String senha = tSenha.getText().toString();
            String senha2 = tSenha2.getText().toString();
            String bio = tBio.getText().toString();

            if (nome.isEmpty()) {
                tvNome.setText("Nome *");
                tvNome.setTextColor(Color.RED);
                valido = false;
            }
            else
            {
                tvNome.setText("Nome");
                tvNome.setTextColor(Color.BLACK);
            }

            if (login.isEmpty()) {
                tvLogin.setText("Usuario *");
                tvLogin.setTextColor(Color.RED);
                valido = false;
            }
            else
            {
                tvLogin.setText("Usuario");
                tvLogin.setTextColor(Color.BLACK);
            }

            if (senha.isEmpty()) {
                tvSenha.setText("Senha *");
                tvSenha.setTextColor(Color.RED);
                valido = false;
            }
            else
            {
                tvSenha.setText("Senha");
                tvSenha.setTextColor(Color.BLACK);
            }

            if (senha2.isEmpty() || !senha2.equals(senha)) {
                tvSenha2.setText("Repetir Senha *");
                tvSenha2.setTextColor(Color.RED);
                valido = false;
            }
            else
            {
                tvSenha2.setText("Repetir Senha");
                tvSenha2.setTextColor(Color.BLACK);
            }

            if (bio.isEmpty()) {
                tvBio.setText("Bio *");
                tvBio.setTextColor(Color.RED);
                valido = false;
            }
            else
            {
                tvBio.setText("Bio");
                tvBio.setTextColor(Color.BLACK);
            }

            if (valido)
            {
                String uri = "http://10.0.2.2:5000/Usuario/CadastrarUsuario";
                String parametros = "login=" + login + "&senha=" + senha + "&nome=" + nome + "&bio=" + bio;

                String retorno = ApiHelper.getApiData(uri, parametros);

                Gson parser = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
                Usuario usu = parser.fromJson(retorno,Usuario.class);

                if (usu != null) {
                    if(usu.getId() != 0){
                        alert("Uusário cadastrado com sucesso");

                        Intent intent = new Intent(this, MainActivity.class);
                        startActivity(intent);
                    }
                    else {
                        alert("Erro ao cadastrar Usuário");
                    }
                }
                else
                {
                    alert("Erro ao cadastrar Usuário");
                }
            }
        }
        catch (Exception ex)
        {
            ex.printStackTrace();
        }
    }

}