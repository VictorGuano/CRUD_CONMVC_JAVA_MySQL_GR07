/*
 * SIGH - Hospital General Monster Salud
 * Talleres Login y CRUD MVC en Java - Grupo GR07
 * Subsistema de Personal
 */
package ec.edu.monster.G07.logingr07.dto;

/** Datos que envía el formulario de Mantenimiento de empleados (las reglas se validan en el servicio). */
public record EmpleadoFormDTO(String cedula, String apellidos, String nombres, String fechaNacimiento,
        String codigoGenero, String codigoEstadoCivil, String registroProfesional, String estado,
        String codigoDepartamento, String codigoCargo, String direccion, String telefono, String email) {
}
