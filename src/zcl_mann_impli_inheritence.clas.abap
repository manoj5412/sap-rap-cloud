CLASS zcl_mann_impli_inheritence DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_impli_inheritence IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

 DATA lo_cricket TYPE REF TO lcl_cricket.
lo_cricket = NEW lcl_cricket(
  i_player      = 'Bumrah'
  i_player_runs = 1200 ).

out->write(  lo_cricket->get_details(  ) ).

lo_cricket = NEW lcl_test_match(
  i_player      = 'Virat Kohli'
  i_player_runs = 10987
  i_century = 40 ).

  out->write( 'player record in test-cricket ' ).
  out->write(  lo_cricket->get_details(  ) ).

lo_cricket = NEW lcl_odimatch(
  i_player      = 'MS Dhoni'
  i_player_runs = 3458
  i_fifty = 30 ).

  out->write( 'player record in odi-cricket ' ).
  out->write( lo_cricket->get_details(  ) ).

  ENDMETHOD.
ENDCLASS.
