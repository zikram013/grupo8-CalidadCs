package com.tetris.test;

import com.example.activities.MainActivity;
import com.example.activities.TableroTetris;
import com.example.pieces.Bloque;
import com.example.views.Ventana;

import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class TableroTetrisTest {

    TableroTetris tableroActivity;

    @Before
    public void init(){
        MainActivity main = new MainActivity();
        tableroActivity= new TableroTetris(main,new Ventana(new MainActivity(), ""), false, false);
        Bloque[][] tablero = new Bloque[20][10];
        int identificador = 1;
        for (int i = 0; i < 20; i++) {
            for (int j = 0; j < 10; j++) {
                tablero[i][j] = new Bloque(true, identificador, -1, null);
                identificador++;
            }
        }
        tableroActivity.setTablero(tablero);
    }

    @Test
    public void comprobarAdyacentes() {
        tableroActivity.comprobarAdyacentes(-1,0,0);
        assertEquals(tableroActivity.getEliminados().size(),200);
    }

    @Test
    public void cambiarBloquesColorRandom() {
        tableroActivity.cambiarBloquesColorRandom();
        for (int i = 0; i < 20; i++) {
            for (int j = 0; j < 10; j++) {
                assertNotEquals(tableroActivity.getTablero()[i][j].getColor(), -1);
            }
        }
    }

}