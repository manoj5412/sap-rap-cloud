CLASS zcl_mann_interface DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_interface IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA lo_test TYPE REF TO lif_player_info.

    " 1. Use Interface reference for Test Match
    lo_test = NEW lcl_test_match( i_player      = 'Virat Kohli'
                                  i_player_runs_1 = 18000
                                  i_century     = 27 ).

    out->write( '--- Interface Call for Test ---' ).
    out->write( lo_test->get_summary( ) ).

  ENDMETHOD.
ENDCLASS.
