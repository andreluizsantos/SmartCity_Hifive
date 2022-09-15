package com.br.smartcityapp;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

public class PrincipalActivity extends AppCompatActivity {

    private void alert(String s){
        Toast.makeText(this, s, Toast.LENGTH_LONG).show();
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_principal);

        TextView tUsuario = (TextView) findViewById(R.id.tvSaudacao);

        String nomeUsuario = "";

        if (savedInstanceState == null) {
            Bundle extras = getIntent().getExtras();
            if(extras != null) {
                nomeUsuario = extras.getString("EXTRA_NOME_USUARIO");
            }
        } else {
            nomeUsuario = (String) savedInstanceState.getSerializable("EXTRA_NOME_USUARIO");
        }

        tUsuario.setText("Olá "+ nomeUsuario + "! O que gostaria de fazer hoje?");
    }

    public void btBuscarOferta_onClick(View v){
        Intent intent = new Intent(this, BucarUsuarioOfertaActivity.class);
        startActivity(intent);
    }

    public void btCadastrarOferta_onClick(View v){
        alert("Em Breve");
    }

    public void btAvaliacoes_onClick(View v){
        alert("Em Breve");
    }

    public void btHistorico_onClick(View v){
        alert("Em Breve");
    }
}