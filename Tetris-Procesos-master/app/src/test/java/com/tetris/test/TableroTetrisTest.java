package com.tetris.test;

import com.example.activities.MainActivity;
import com.example.activities.TableroTetris;
import com.example.pieces.Bloque;
import com.example.views.Ventana;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class TableroTetrisTest {


    TableroTetris tableroActivity = new TableroTetris(new MainActivity(),new Ventana(new MainActivity(), ""), false, false);

    @Before
    public void init(){
        Bloque[][] tablero = new Bloque[20][10];
        for (int i = 0; i < 2; i++){
            for (int j = 0; j < 10; j++) {
                tablero[i][j].activar();
            }
        }
        tableroActivity.setTablero(tablero);
    }

    @Test
    public void borrarColores() {
        tableroActivity.borrarColores();
        for (int i = 0; i < 2; i++) {
            for (int j = 0; j < 10; j++) {
                assertEquals(tableroActivity.getTablero()[i][j].isActivo(),false);
            }
        }
    }

    @Test
    public void comprobarAdyacentes() {
    }

    @Test
    public void cambiarBloquesColorRandom() {

    }

    @Test
    public void hardDrop(){

    }
}