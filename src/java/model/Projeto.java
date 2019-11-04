/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.DAO;
import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Projeto implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private Long id;
    private String nome;
    private String descricao;
    private String status;
    private int quantidadeTarefa;

    public Projeto(Long id, String nome, String descricao, String status, int quantidadeTarefa) {
        this.id = id;
        this.nome = nome;
        this.descricao = descricao;
        this.status = status;
        this.quantidadeTarefa = quantidadeTarefa;
    }

    public Projeto() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getQuantidadeTarefa() {
        return quantidadeTarefa;
    }

    public void setQuantidadeTarefa(int quantidadeTarefa) {
        this.quantidadeTarefa = quantidadeTarefa;
    }
    
 public void save() throws NoSuchMethodException {
       DAO.getInstance().save(this);
    }

    public void remove() throws NoSuchMethodException {
        DAO.getInstance().remove(this);
    }

    public static Projeto find(Long id) throws ClassNotFoundException {
        return (Projeto) DAO.getInstance().find(id);
    }

    public static List<Object> findAll() throws ClassNotFoundException {
        return DAO.getInstance().findAll();
    }

}
