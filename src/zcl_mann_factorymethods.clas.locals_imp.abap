*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_cricket definition create private.

  public section.
    CLASS-METHODS
    set_details
      IMPORTING
        i_player TYPE string
        i_player_runs TYPE i
      RETURNING
        value(r_result) TYPE REF TO lcl_cricket.
METHODS display_record
RETURNING VALUE(rv_output) TYPE string.

  protected section.
  DATA : player    type string,
         player_runs type i.
  private section.

endclass.

class lcl_cricket implementation.

  method  set_details.

    r_result = new lcl_cricket( ).

    r_result->player = i_player.
    r_result->player_runs = i_player_runs.

  endmethod.

  method display_record.
rv_output = |player Name:{ player }, total Runs:{ player_runs }|.
  endmethod.

endclass.
