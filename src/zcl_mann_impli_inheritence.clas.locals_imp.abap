*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
CLASS lcl_cricket DEFINITION.

  PUBLIC SECTION.
    METHODS:
      constructor
        IMPORTING
          i_player      TYPE string
          i_player_runs TYPE i,

      get_details
        RETURNING VALUE(res) TYPE string.

  PROTECTED SECTION.
    DATA:
      player      TYPE string,
      player_runs TYPE i.

ENDCLASS.

CLASS lcl_cricket IMPLEMENTATION.

  METHOD constructor.
    player      = i_player.
    player_runs = i_player_runs.
  ENDMETHOD.

  METHOD get_details.
    res = |Player: { player }, Player Runs: { player_runs }|.
  ENDMETHOD.

ENDCLASS.


CLASS lcl_test_match DEFINITION INHERITING FROM lcl_cricket.

  PUBLIC SECTION.
    METHODS:
      constructor
        IMPORTING
          i_player      TYPE string
          i_player_runs TYPE i
          i_century     TYPE i,

      get_details REDEFINITION.

  PRIVATE SECTION.
    DATA century TYPE i.

ENDCLASS.

CLASS lcl_test_match IMPLEMENTATION.

  METHOD constructor.

    super->constructor(
      i_player      = i_player
      i_player_runs = i_player_runs ).

    century = i_century.

  ENDMETHOD.

  METHOD get_details.

    res = |Player: { player }, Runs: { player_runs }, Centuries: { century }|.

  ENDMETHOD.

ENDCLASS.

class lcl_odimatch definition inheriting from lcl_cricket.

  public section.
    METHODS constructor
      IMPORTING
        i_player TYPE string
        i_player_runs TYPE i
        i_fifty TYPE i.
  protected section.
  private section.
  data fifty type i.
endclass.

class lcl_odimatch implementation.

  method constructor.

    super->constructor( i_player = i_player i_player_runs = i_player_runs ).

    me->fifty = i_fifty.

  endmethod.

endclass.
