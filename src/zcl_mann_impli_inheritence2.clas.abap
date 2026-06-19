CLASS zcl_mann_impli_inheritence2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_impli_inheritence2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data lo_match type ref to lcl_cricket.

  lo_match = new lcl_test_match( 'Virat Kohli' ).
  out->write( |player: { lo_match->get_player_name(  ) }| ).
  out->write( |format: { lo_match->get_match_type(  ) }| ).

  ENDMETHOD.
ENDCLASS.
