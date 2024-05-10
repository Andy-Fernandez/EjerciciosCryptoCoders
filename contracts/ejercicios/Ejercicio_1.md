# Ejercicio #1 sobre Mapping

Vamos a usar mappings para manejar la propiedad de activos de usuario. Usaremos los tres niveles de mapping más usados:

- Single Mapping
- Double Mapping
- Triple Mapping

## Mapping Simple:

Vamos a guardar la cantidad de activos que tiene cada usuario. Los usuarios se representan por sus billeteras y la cantidad de activos es un número entero.

### Completar:

1. Llama a este mapping 'activosSimple' y define su llave y valor de manera apropiada.
2. Haz público el mapping 'activosSimple'.
3. Crea un método setter para el mapping llamado 'guardarActivoSimple'. Recibe un address y un uint256 como parámetros.
4. Valida que el address no sea 0x00. Mensaje de error: "El address no puede ser 0x00". Usa require o revert.

## Mapping Doble:

Usaremos un mapping doble para guardar la cantidad de cada tipo de activo que tiene cada usuario. Los usuarios se representan por sus billeteras, los activos se representan con códigos del 1 al 999999 (activoId), y la cantidad de activos es un número entero.

### Completar:

1. Llama a este mapping 'activosDouble' y define sus dos claves y valor apropiados.
2. Haz público el mapping 'activosDouble'.
3. Crea un método setter llamado 'guardarActivoDoble'. Recibe un address, un uint256 y un uint256.
4. Valida que el address no sea 0x00. Mensaje de error: "El address no puede ser 0x00". Usa revert o require.
5. Valida que los códigos de activo estén entre 1 y 999999. Mensaje de error: "Codigo de activo inválido". Usa revert o require.

## Mapping Triple:

Usaremos un mapping triple para guardar la cantidad de cada tipo de activo que tiene cada usuario de cada ciudad. Las ciudades se representan con códigos del 1 al 999999, los usuarios se representan por sus billeteras, los activos se representan con códigos del 1 al 999999, y la cantidad de activos es un número entero.

### Completar:

1. Crea el mapping llamado 'activosTriple' y define sus tres claves y el valor apropiados.
2. Haz público el mapping 'activosTriple'.
3. Crea un método setter 'guardarActivoTriple' que reciba un address, un uint256, un uint256 y un uint256.
4. Valida que el address no sea 0x00. Mensaje de error: "El address no puede ser 0x00". Usa revert o require.
5. Valida que los códigos de activo estén entre 1 y 999999. Mensaje de error: "Codigo de activo inválido". Usa revert o require.
6. Valida que los códigos de ciudad estén entre 1 y 999999. Mensaje de error: "Codigo de ciudad inválido". Crea un Error Personalizado llamado `CiudadInvalidaError(uint256 ciudadId)`.

