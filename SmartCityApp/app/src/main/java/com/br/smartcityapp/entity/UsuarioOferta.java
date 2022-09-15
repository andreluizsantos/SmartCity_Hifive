package com.br.smartcityapp.entity;

import java.util.Date;

public class UsuarioOferta {

    private int id;
    //private Usuario Usuario;
    //private CategoriaOferta Categoria;
    //private ICollection<UsuarioOfertaDisponibilidade> DatasDisponiveis;
    private String oferta;
    private String descricao;
    private int horasDuracao;
    private float pontos;
    private Date dataCriacao;
    private Date dataAtualizacao;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOferta() {
        return oferta;
    }

    public void setOferta(String oferta) {
        this.oferta = oferta;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getHorasDuracao() {
        return horasDuracao;
    }

    public void setHorasDuracao(int horasDuracao) {
        this.horasDuracao = horasDuracao;
    }

    public float getPontos() {
        return pontos;
    }

    public void setPontos(float pontos) {
        this.pontos = pontos;
    }

    public Date getDataCriacao() {
        return dataCriacao;
    }

    public void setDataCriacao(Date dataCriacao) {
        this.dataCriacao = dataCriacao;
    }

    public Date getDataAtualizacao() {
        return dataAtualizacao;
    }

    public void setDataAtualizacao(Date dataAtualizacao) {
        this.dataAtualizacao = dataAtualizacao;
    }
}
