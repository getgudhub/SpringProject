package model;

import java.util.Date;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class Film {
	
	@NotNull
	private int id;
	
	@NotNull
	@Size(min=4, max=40, message="Pavadinimas turetu tilpti tarp 4 ir 40 simboliu!")
	@Pattern(regexp="[A-Za-z0-9.: ]+", message="Klaidingai ivestas pavadinimas!")
	private String pavadinimas;
	
	@NotNull
	@Size(min=4, max=30, message="Zanras turetu tilpti tarp 4 ir 30 simboliu!")
	@Pattern(regexp="[A-Za-z, ]+", message="Klaidingai ivestas zanras!")
	private String zanras;
	
	@NotNull
	@Size(min=4, max=30, message="Rezisieriaus vardas turetu tilpti tarp 4 ir 30 simboliu!")
	@Pattern(regexp="[A-Za-z ]+", message="Klaidingai ivestas rezisieriaus vardas!")
	private String rezisierius;
	
	@NotNull
	@Size(min=1, max=40, message="Aktoriaus /-iu vardas /-ai turetu tilpti tarp 1 ir 40 simboliu!")
	@Pattern(regexp="[-A-Za-z, ]+", message="Jeigu nera zymiu aktoriu parasykite -")
	private String aktoriai;
	
	@NotNull(message="Irasykite data  yyyy-mm-dd")
	@DateTimeFormat(iso = DateTimeFormat.ISO.DATE)
	private Date nuoKada;
	
	@NotNull
	@Min(value=10, message="Trukme parasykite minutemis (>10)")
	private int trukme;

	public Film() {
		
	}

	public Film(@NotNull int id,
			@NotNull @Size(min = 4, max = 40, message = "Pavadinimas turetu tilpti tarp 4 ir 40 simboliu!") @Pattern(regexp = "[A-Za-z0-9. ]+", message = "Klaidingai ivestas pavadinimas!") String pavadinimas,
			@NotNull @Size(min = 4, max = 30, message = "Zanras turetu tilpti tarp 4 ir 30 simboliu!") @Pattern(regexp = "[A-Za-z ]+", message = "Klaidingai ivestas zanras!") String zanras,
			@NotNull @Size(min = 4, max = 30, message = "Rezisieriaus vardas turetu tilpti tarp 4 ir 30 simboliu!") @Pattern(regexp = "[A-Za-z ]+", message = "Klaidingai ivestas rezisieriaus vardas!") String rezisierius,
			@NotNull @Size(min = 4, max = 40, message = "Aktoriaus /-iu vardas /-ai turetu tilpti tarp 4 ir 40 simboliu!") @Pattern(regexp = "[A-Za-z, ]+", message = "Klaidingai ivestas aktoriaus vardas!") String aktoriai,
			@NotNull(message="Irasykite data  yyyy-mm-dd") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date nuoKada,
			@NotNull @Size(min = 20, max = 500, message = "Trukme parasykite minutemis") int trukme) {
		this.id = id;
		this.pavadinimas = pavadinimas;
		this.zanras = zanras;
		this.rezisierius = rezisierius;
		this.aktoriai = aktoriai;
		this.nuoKada = nuoKada;
		this.trukme = trukme;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}



	public String getPavadinimas() {
		return pavadinimas;
	}



	public void setPavadinimas(String pavadinimas) {
		this.pavadinimas = pavadinimas;
	}



	public String getZanras() {
		return zanras;
	}



	public void setZanras(String zanras) {
		this.zanras = zanras;
	}



	public String getRezisierius() {
		return rezisierius;
	}



	public void setRezisierius(String rezisierius) {
		this.rezisierius = rezisierius;
	}



	public String getAktoriai() {
		return aktoriai;
	}



	public void setAktoriai(String aktoriai) {
		this.aktoriai = aktoriai;
	}



	public Date getNuoKada() {
		return nuoKada;
	}



	public void setNuoKada(Date nuoKada) {
		this.nuoKada = nuoKada;
	}



	public int getTrukme() {
		return trukme;
	}



	public void setTrukme(int trukme) {
		this.trukme = trukme;
	}

}