# Proyecto: BancoCesde

## Descripción

BancoCesde es un sistema de gestión bancaria desarrollado en SQL Server. Este proyecto incluye el diseño y la implementación de una base de datos para la administración de clientes, cuentas bancarias, transacciones y empleados.

###

# Tecnologías utilizadas

SQL Server: Motor de base de datos relacional utilizado.

T-SQL: Lenguaje para la creación de procedimientos almacenados, funciones y triggers.

Modelo entidad-relación (ER): Estructura diseñada para optimizar la gestión de datos bancarios.

###

## Características principales

✅ Gestor de clientes: Registro, actualización y eliminación de clientes.
✅ Administración de cuentas bancarias: Creación y asignación de cuentas a clientes.
✅ Historial de transacciones: Registro de débitos, créditos y transferencias.
✅ Gestión de empleados: Control de roles y accesos en el sistema bancario.
✅ Procedimientos almacenados: Automatización de operaciones bancarias.

## Instalación y configuración:
1. Clonar el repositorio:
git clone https://github.com/carlosfranco97/bancocesde.git

2. Abrir SQL Server Management Studio (SSMS).

3. Crear la base de datos:
CREATE DATABASE BancoCesde;

4. Ejecutar el script BancoCesde.sql para crear las tablas y procedimientos almacenados.

5. Verificar que las tablas fueron creadas correctamente:
SELECT * FROM Clientes;

## Autor

Carlos Franco - GitHub

