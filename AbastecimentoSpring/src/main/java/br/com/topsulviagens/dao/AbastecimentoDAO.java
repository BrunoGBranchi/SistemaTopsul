package br.com.topsulviagens.dao;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.topsulviagens.model.Abastecimento;

public interface AbastecimentoDAO extends JpaRepository<Abastecimento, Long>{

	List<Abastecimento> findByData(Date data);
}
