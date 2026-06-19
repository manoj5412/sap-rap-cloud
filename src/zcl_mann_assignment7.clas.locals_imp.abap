*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_plane definition .

  public section.
  METHODS get_fuel_type
  RETURNING VALUE(rv_fuel) type string.
  protected section.
  private section.

endclass.

class lcl_plane implementation.

  method get_fuel_type.
 rv_fuel = 'kersone'.
  endmethod.

endclass.

class lcl_electrical_plane definition INHERITING FROM lcl_plane .

  public section.
  METHODS get_fuel_type REDEFINITION .
  protected section.
  private section.

endclass.

class lcl_electrical_plane implementation.

  method get_fuel_type.
 rv_fuel = 'battery'.
  endmethod.

endclass.
