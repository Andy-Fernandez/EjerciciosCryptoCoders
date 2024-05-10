# Proyecto de Solidity con Hardhat

Aqui les dejo 3 ejecicios, cada uno tiene su respectivo enunciado y en la carpeta 'notas' hay un pequeño repaso de los conceptos importates.

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

- **Ejecutar pruebas**: Ejecuta las pruebas unitarias para los contratos inteligentes:

  ```
  npx hardhat test
  ```

- **Desplegar contratos**: Despliega los contratos en una red de prueba o en la red principal:

  ```
  npx hardhat run scripts/deploy.js --network rinkeby
  ```

## Contribución

¡Estamos abiertos a contribuciones! Si deseas contribuir al proyecto, asegúrate de seguir estas pautas:

1. Haz un fork del repositorio.
2. Crea una nueva rama para tu funcionalidad (`git checkout -b feature/nueva-funcionalidad`).
3. Haz tus cambios y haz commit (`git commit -am 'Agrega nueva funcionalidad'`).
4. Haz push a la rama (`git push origin feature/nueva-funcionalidad`).
5. Abre un pull request en este repositorio.

## Soporte

Si tienes alguna pregunta o problema con el proyecto, no dudes en abrir un issue en este repositorio o contactar al equipo de desarrollo.

¡Gracias por contribuir!
