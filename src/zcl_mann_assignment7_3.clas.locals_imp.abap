*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_person definition.

  public section.
  DATA name type string.
  METHODS set_name
  IMPORTING iv_name TYPE string.
  protected section.
  private section.

endclass.

class lcl_person implementation.

  method set_name.
name = iv_name.
  endmethod.

endclass.

class lcl_employee definition INHERITING FROM lcl_person.

  public section.
  DATA employee_id type i.
  METHODS set_id
  IMPORTING iv_id type i.


endclass.

class lcl_employee implementation.

  method set_id.
 employee_id = iv_id.
  endmethod.

endclass.
