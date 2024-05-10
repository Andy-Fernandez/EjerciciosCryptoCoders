# Proyecto de Solidity con Hardhat

Aqui les dejo 3 ejecicios, cada uno tiene su respectivo enunciado y en la carpeta 'notas' hay un pequeño repaso de los conceptos importates que vimos hasta ahora.

## Requisitos previos

Antes de comenzar a trabajar en este proyecto, asegúrate de tener instalado lo siguiente en tu sistema:

- Node.js y npm: Puedes descargar e instalar Node.js desde [aquí](https://nodejs.org/).
- Hardhat: Puedes instalar Hardhat globalmente ejecutando el siguiente comando en tu terminal:

  ```
  npm install -g hardhat
  ```

## Configuración del proyecto

1. Clona este repositorio en tu máquina local:

   ```
   git clone https://github.com/tu-usuario/proyecto-solidity.git
   ```

2. Instala las dependencias del proyecto utilizando npm:

   ```
   cd proyecto-solidity
   npm install
   ```

## Uso

Aquí hay algunos comandos comunes que puedes ejecutar en este proyecto:

- **Compilar los contratos**: Compila los contratos inteligentes en el directorio `contracts/`:

  ```
  npx hardhat compile
  ```
- **Ejecicio**: Los ejercicios se encuentran en la carpeta 'contracts' junto a su respectivo enunciado. (si creas un nuevo contrato hazlo en esa carpeta)

- **Ejecutar pruebas**: Para probar tus contratos puedes ejecutar las pruebas, que se encuentran en la carpeta test, por ejemplo:

  ```
  npx hardhat test test/EjercicioTesting_1.js
  ```

  Las pruebas pueden darte alguna pista de lo que hiciste mal.
  
