CLASS zcl_mann_impli_inheritence3 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_impli_inheritence3 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data lo_cricket type ref to lcl_cricket.
  data lo_test type ref to lcl_test_match.

  lo_cricket = new lcl_test_match( i_player = 'Virat'
  i_player_runs_1 = 8000
  i_century = 100 ).

*  lo_cricket->check_test_ranking(  ).

try.
lo_test ?= lo_cricket.
out->write( 'Downcast Successfull' ).
out->write( lo_test->check_test_ranking(  ) ).

catch cx_sy_move_cast_error.
out->write( 'error: this object is not actually a test match!' ).
endtry.

  ENDMETHOD.
ENDCLASS.
