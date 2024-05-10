## Ejercicio 2

Vamos a crear una serie de modifiers que nos ayudarán a añadir validaciones y protecciones a nuestros contratos.

### Escenarios a validar/proteger:

1. Acceso: que solo el admin sea quien pueda ejecutar una función
   - Nombre del modifier: `soloAdmin` -> Desplegar mensaje "No eres el admin"
   - Aplicar al método: `metodoAccesoProtegido`

2. Permiso: que personas de una lista puedan llamar a un método
   - Nombre del modifier: `soloListaBlanca`
   - Aplicar al método: `metodoPermisoProtegido`
   - Adicional:
     - Definir un setter para incluir addresses en la lista blanca protegido por `soloAdmin`
     - Nombre del método: `incluirEnListaBlanca`

3. Tiempo: que un método sea llamado dentro de un rango de tiempo
   - Nombre del modifier: `soloEnTiempo`
   - Aplicar al método: `metodoTiempoProtegido`

4. Pausa: que un método pueda ser pausado y reanudado
   - Nombre del modifier: `pausa`
   - Aplicar al método: `metodoPausaProtegido`
   - Adicional:
     - Definir un método para cambiar ese booleano que tenga el modifier de `soloAdmin`
     - Nombre del método: `cambiarPausa`

Notas:
- Para el modifier de tiempo, se puede usar `block.timestamp`
- Para el modifier de pausa, se puede usar un booleano
- Dejar los cuerpos de todos los métodos en blanco

Testing: Ejecutar el siguiente comando:
- `npx hardhat test test/EjercicioTesting_2.js`
