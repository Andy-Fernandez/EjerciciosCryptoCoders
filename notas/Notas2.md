# Notas 2
## Variables

Las variables son tipadas, eso significa que siempre tienes que especificar el tipo y estas se guaran en la memoria de la blockchain.

```solidity
// Sintaxis
<tipo> <visibilidad> <nombre>;

uint256 public balance;
bool public estaActivo;
address public owner;
// Pueden ser privadas, públicas, internas o externas
```

## Mappings

Es como un diccionario que asocia `claves` con `valores` y es la mejor forma de almacenar datos en Solidity.

```solidity
// Sintaxis
mapping(<tipo_clave => <tipo_valor>) <nombre>;

mapping(address => uint256) public balance;
// Almacena el balance de cada dirección por ejemplo la dirección 0x1234... tiene 100 tokens

mapping(address => bool) public estaRegistrado;
// Almacena si una dirección está registrada o no por ejemplo la dirección 0x1234... está registrada = true
```

## Modifiers

Sirven para poner requisitos previos a la ejecución de la función y reutilizar código.

#### **Ejemplo**

```solidity
//Sintaxis
modifier <nombre>() {
    <requisito>;
    _;
}

modifier onlyWhenActive() {
    require(estaActivo, "El contrato no esta activo");
    _;
}
```

## Timestamp y Bloques

Solidity proporciona acceso al timestamp del bloque actual en otras palabras representa la fecha y hora en la que se minó el bloque.

```solidity
//Sintaxis
block.timestamp

//Uso
uint256 public finDeSubasta = block.timestamp + 7 days;
// La subasta finaliza en 7 días a partir de la fecha actual del bloque
```

## Require

La función `require` se utiliza para validar condiciones antes de ejecutar cambios en el estado o lógica de negocio. Si la condición falla, la transacción es revertida.

```solidity
// Sintaxis
require(<condición>, <mensaje de error>);

require(balance[msg.sender] >= amount, "Balance insuficiente");
```

## Variables `msg.sender` y `msg.value`
Es una variable global que contiene la `dirección de la cuenta que está llamando a la función`.

```solidity
// Uso
balance[msg.sender] += msg.value;
// En el mapping balance, le decimos que a la direccion msg.sender se le sume el valor que el usuario envió
```

msg.value es una variable global que contiene el `valor en wei` que el usuario envió.


## Contrato de Ejemplo

A continuación, un contrato simple que utiliza los conceptos descritos anteriormente:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract SimpleAuction {
    address public owner; // Dueño de la subasta
    bool public estaActivo;
    uint256 public tiempoFinalSubasta;
    mapping(address => uint256) public ofertas;
    uint256 public ofertaMasAlta;

    constructor(uint256 _tiempoOfertas , address _owner) { 
        owner = _owner;
        estaActivo = true;
        tiempoFinalSubasta = block.timestamp + _tiempoOfertas;
        // _tiempoOfertas es el tiempo en segundos que durará la subasta y si queremos convertirlo a días sería _tiempoOfertas * 1 days, minutos _tiempoOfertas * 1 minutes, semanas _tiempoOfertas * 1 weeks o meses _tiempoOfertas * 1 months
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "No es el owner de la subasta");
        _;
    }

    modifier onlyWhenActive() {
        require(estaActivo, "Subasta no activa");
        _;
    }

    function ofertar() public payable onlyWhenActive {
        require(block.timestamp <= tiempoFinalSubasta, "La subasta ha finalizado");
        require(msg.value > ofertaMasAlta, "La oferta no supera la mas alta");

        ofertas[msg.sender] += msg.value;
        ofertaMasAlta = ofertas[msg.sender];
    }

    function endAuction() public onlyOwner {
        require(block.timestamp >= tiempoFinalSubasta, "La subasta no ha finalizado");
        estaActivo = false;
    }
}
```
