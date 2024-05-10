// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Ejercicio_2 {
    // 1
    // definir un 'admin'
    // no cambiar
    address public admin = 0x08Fb288FcC281969A0BBE6773857F99360f2Ca06;

    modifier soloAdmin() {
        // definir logica
        _;
    }

    // function metodoAccesoProtegido() {
    //     // ...logica
    // }

    // 2
    // definir lista blanca con un mapping
    // mapping listaBlanca;
    // modifier soloListaBlanca

    // function metodoPermisoProtegido

    // function incluirEnListaBlanca

    // 3
    // definir un rango de tiempo cualquiera (e.g. hoy + 30 days)
    // En solidity se cumple que: 1 days = 86400 seconds
    uint256 public tiempoLimite = block.timestamp + 30 days;

    // modifier soloEnTiempo

    // function metodoTiempoProtegido

    // 4
    // definir un booleano para pausar
    // bool public pausado;
    // modifier pausa

    // function metodoPausaProtegido

    // function cambiarPausa()
}
