package br.com.topsulviagens.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class Abastecimento implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long codigo;
	@Temporal(TemporalType.TIMESTAMP)
	private Date data = new Date();
	private String motorista;
	private Double litros;
	private Integer kmInicial = 0;
	private Integer kmFinal = 0;
	private String local;
	private String placa;
	private String tipoCombustivel;
	@Column(nullable=false, precision=10, scale=2)
	private double media = 0.00;
	private Long num_fiscal;
	
	
	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getMotorista() {
		return motorista;
	}

	public void setMotorista(String motorista) {
		this.motorista = motorista;
	}

	public Double getLitros() {
		return litros;
	}

	public void setLitros(Double litros) {
		this.litros = litros;
	}

	public Integer getKmInicial() {
		return kmInicial;
	}

	public void setKmInicial(Integer kmInicial) {
		this.kmInicial = kmInicial;
	}

	public Integer getKmFinal() {
		return kmFinal;
	}

	public void setKmFinal(Integer kmFinal) {
		this.kmFinal = kmFinal;
	}

	public String getLocal() {
		return local;
	}

	public void setLocal(String local) {
		this.local = local;
	}

	public String getPlaca() {
		return placa;
	}

	public void setPlaca(String placa) {
		this.placa = placa;
	}

	public String getTipoCombustivel() {
		return tipoCombustivel;
	}

	public void setTipoCombustivel(String tipoCombustivel) {
		this.tipoCombustivel = tipoCombustivel;
	}

	public double getMedia() {
		return media;
	}

	public void setMedia(double media) {
		this.media = media;
	}

	public Date getData() {
		return data;
	}

	public Long getNum_fiscal() {
		return num_fiscal;
	}

	public void setNum_fiscal(Long num_fiscal) {
		this.num_fiscal = num_fiscal;
	}
	
	
	
	public Abastecimento(Long codigo, Date data, String motorista, Double litros, Integer kmInicial, Integer kmFinal,
			String local, String placa, String tipoCombustivel, double media, Long num_fiscal) {
		super();
		this.codigo = codigo;
		this.data = data;
		this.motorista = motorista;
		this.litros = litros;
		this.kmInicial = kmInicial;
		this.kmFinal = kmFinal;
		this.local = local;
		this.placa = placa;
		this.tipoCombustivel = tipoCombustivel;
		this.media = media;
		this.num_fiscal = num_fiscal;
	}

	public Abastecimento() {

	}
}
