package com.br.smartcityapp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;
import android.view.View;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import com.br.smartcityapp.Helpers.ApiHelper;
import com.br.smartcityapp.adapters.UsuarioOfertaAdapter;
import com.br.smartcityapp.entity.Usuario;
import com.br.smartcityapp.entity.UsuarioOferta;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import java.util.ArrayList;
import java.util.Arrays;

public class BucarUsuarioOfertaActivity extends AppCompatActivity {

    private SeekBar sbCargaHoraria;
    private SeekBar sbPontos;
    private TextView tvCargaHoraria;
    private TextView tvPontos;

    private RecyclerView rvOfertas;
    private RecyclerView.Adapter adpOferta;

    @Override
    protected void onCreate(Bundle savedInstanceState) {

        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_bucar_usuario_oferta);

        sbCargaHoraria = findViewById(R.id.sbCargaHoraria);
        sbCargaHoraria.setProgress(40);

        sbPontos = findViewById(R.id.sbPontos);
        sbPontos.setProgress(200);

        tvCargaHoraria = findViewById(R.id.tvCargaHoraria);
        tvCargaHoraria.setText("Duração (" + sbCargaHoraria.getProgress() + "/" + sbCargaHoraria.getMax() + ")");
        tvPontos = findViewById(R.id.tvPontos);
        tvPontos.setText("Pontos (" + sbPontos.getProgress() + "/" + sbPontos.getMax() + ")");

        setTitle("Buscar Oferta");

        this.rvOfertas = (RecyclerView) findViewById(R.id.rvOfertas);
        RecyclerView.LayoutManager mLayoutManager = new LinearLayoutManager(this);
        this.rvOfertas.setLayoutManager(mLayoutManager);

        sbCargaHoraria.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {

            int progresso = 0;

            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                progresso = progress;
            }
            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
            }
            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                tvCargaHoraria.setText("Duração (" +progresso + "/" + seekBar.getMax()+")");
            }
        });

        sbPontos.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {

            int progresso = 0;

            @Override
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                progresso = progress;
            }
            @Override
            public void onStartTrackingTouch(SeekBar seekBar) {
            }
            @Override
            public void onStopTrackingTouch(SeekBar seekBar) {
                tvPontos.setText("Pontos (" + progresso + "/" + seekBar.getMax()+")");
            }
        });
    }

    public void btPesquisar_onClick(View v) {
        try
        {

            SeekBar sbCargaHoraria = findViewById(R.id.sbCargaHoraria);
            SeekBar sbPontos = findViewById(R.id.sbPontos);
            TextView tNomeOferta = findViewById(R.id.tNomeOferta);;

            int maxCargaHoraria = sbCargaHoraria.getProgress();
            int maxPontos = sbPontos.getProgress();
            String nome = tNomeOferta.getText().toString();

            String uri = "http://10.0.2.2:5000/Oferta/BuscarOferta";
            String parametros = "nome=" + nome + "&minPontos=1&maxPontos=" + maxPontos
                    + "&minCargaHoraria=1&maxCargaHoraria=" + maxCargaHoraria;

            String retorno = ApiHelper.getApiData(uri, parametros);

            Gson gson =  new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
            UsuarioOferta[] arr = gson.fromJson(retorno, UsuarioOferta[].class);

            ArrayList<UsuarioOferta> list = new ArrayList<>(Arrays.asList(arr));

            adpOferta = new UsuarioOfertaAdapter(list);
            this.rvOfertas.setAdapter(adpOferta);

        }
        catch (Exception ex)
        {
            ex.printStackTrace();
            alert("Erro ao pesquisar");
        }

    }

    private void alert(String s){
        Toast.makeText(this, s, Toast.LENGTH_LONG).show();
    }

}