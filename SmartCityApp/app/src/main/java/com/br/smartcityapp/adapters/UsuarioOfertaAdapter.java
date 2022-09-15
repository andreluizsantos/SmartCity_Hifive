package com.br.smartcityapp.adapters;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.br.smartcityapp.R;
import com.br.smartcityapp.entity.UsuarioOferta;

import java.util.ArrayList;

public class UsuarioOfertaAdapter extends RecyclerView.Adapter<UsuarioOfertaAdapter.ViewHolder> {

    private ArrayList<UsuarioOferta> lstOfertas;

    public UsuarioOfertaAdapter(ArrayList<UsuarioOferta> ofertas)
    {
        lstOfertas = ofertas;
    }

    @NonNull
    @Override
    public ViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {

        View v = (View) LayoutInflater.from(parent.getContext()).inflate(R.layout.item_oferta, parent, false);

        return new ViewHolder(v);
    }

    @Override
    public void onBindViewHolder(@NonNull ViewHolder holder, int position) {
        UsuarioOferta oferta = lstOfertas.get(position);


        String duracao = "Duração: " + Integer.toString(oferta.getHorasDuracao()) + "h";
        String pontos = "Pontos Necessários: " + Float.toString(oferta.getPontos());

        holder.tOferta.setText(oferta.getOferta());
        holder.tDuracao.setText(duracao);
        holder.tPontos.setText(pontos);

        String imgURL = "https://img.icons8.com/external-soft-fill-juicy-fish/2x/external-person-human-figures-soft-fill-soft-fill-juicy-fish-16.png";

        holder.image.setImageResource(R.drawable.teacher16);


    }

    @Override
    public int getItemCount() {
        if (lstOfertas != null) {
            return lstOfertas.size();
        } else {
            return 0;
        }
    }

    public static class ViewHolder extends RecyclerView.ViewHolder {

        public final View view;
        public final TextView tOferta;
        public final TextView tPontos;
        public final TextView tDuracao;
        public final ImageView image;

        public ViewHolder(View view) {
            super(view);
            this.view = view;
            tOferta = view.findViewById(R.id.tOferta);
            tPontos = view.findViewById(R.id.tPontos);
            tDuracao = view.findViewById(R.id.tDuracao);
            image = view.findViewById(R.id.image);
        }
    }
}


