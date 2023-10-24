package cz.czechitas.java2webapps.lekce6.controller.cokolada;

import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public class CokoladaForm {

    @NotBlank
    private String druh;

    @NotBlank
    private String typ;
    @NotBlank
    private String jmenoPrijmeni;
    @Email
    private String email;
    @AssertTrue
    private boolean obchodniPodminky;

    public String getDruh() {
        return druh;
    }

    public void setDruh(String druh) {
        this.druh = druh;
    }

    public String getTyp() {
        return typ;
    }

    public void setTyp(String typ) {
        this.typ = typ;
    }

    public String getJmenoPrijmeni() {
        return jmenoPrijmeni;
    }

    public void setJmenoPrijmeni(String jmenoPrijmeni) {
        this.jmenoPrijmeni = jmenoPrijmeni;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isObchodniPodminky() {
        return obchodniPodminky;
    }

    public void setObchodniPodminky(boolean obchodniPodminky) {
        this.obchodniPodminky = obchodniPodminky;
    }
}
