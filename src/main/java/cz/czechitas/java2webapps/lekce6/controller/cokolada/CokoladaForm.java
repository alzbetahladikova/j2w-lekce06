package cz.czechitas.java2webapps.lekce6.controller.cokolada;

import jakarta.validation.constraints.AssertTrue;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;

public class CokoladaForm {

    @NotBlank
    private String zbozi;
    @NotBlank
    private String jmeno;
    @Email
    private String email;
    @AssertTrue
    private boolean obchodniPodminky;

    @NotBlank
    private CokolaEnum druh;

    public String getZbozi() {
        return zbozi;
    }

    public void setZbozi(String zbozi) {
        this.zbozi = zbozi;
    }

    public String getJmeno() {
        return jmeno;
    }

    public void setJmeno(String jmeno) {
        this.jmeno = jmeno;
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
    public CokolaEnum getDruh() {
        return druh;
    }

    public void setDruh(CokolaEnum druh) {
        this.druh = druh;
    }
}
