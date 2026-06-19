CLASS zcl_mann_stringfun DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_stringfun IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*  data result_int type i.
*  result_int = numofchar( 'manoj').
*  result_int = find( val = 'manoj' sub = 'env').
*
*  data result_string type string.
*  result_string = replace( val = 'manoj' sub = 'env' with = 'env').
*
*  if contains( val = 'manoj' sub = 'env').
*
*  endif.
*
*  out->write( result_int ).
*  out->write( result_string ).

*data result type i.
*
*result = find( val = 'ABAPabapABAP' sub = 'A' ).
*out->write( result ).
*result = find( val = 'ABAPabapABAP' sub = 'A' off = 4 ).
*out->write( result ).
*result = find( val = 'ABAPabapABAP' sub = 'A' off = 4 len = 4 ).
*out->write( result ).
*
*result = find( val = 'ABAPabapABAP' sub = 'A' ).
*out->write( result ).
*result = find( val = 'ABAPabapABAP' sub = 'A' occ = 2 ).
*out->write( result ).
*result = find( val = 'ABAPabapABAP' sub = 'A' occ = -1 ).
*out->write( result ).
*result = find( val = 'ABAPabapABAP' sub = 'A' occ = -2 ).
*out->write( result ).
*
*result = find( val = 'ABAPabapABAP' sub = 'a' ).
*out->write( result ).
*result = find( val = 'ABAPabapABAP' sub = 'a' case = abap_true ).
*out->write( result ).
*result = find( val = 'ABAPabapABAP' sub = 'a' case = abap_false ).
*out->write( result ).

*result = strlen( '    ABAP    ' ).
*out->write( result ).
*result = numofchar( '  ABAP  ' ).
*out->write( result ).
*
*
*result = count( val = '  ABAP  ' sub = 'BA' ).
*out->write( result ).
*result = count_any_of( val = '  ABAP  ' sub = 'BA' ).
*out->write( result ).
*result = count_any_not_of( val = '    ABAP    ' sub = 'BA' ).
*out->write( result ).
*
*
*result = find( val = '  ABAP  ' sub = 'BA' ).
*out->write( result ).
*result = find_any_of( val = '  ABAP  ' sub = 'BA' ).
*out->write( result ).
*result = find_any_not_of( val = '  ABAP  ' sub = 'BA' ).
*out->write( result ).

DATA text  TYPE string VALUE 'Date 1989-11-09 is in ISO-Format'.
DATA regex TYPE string VALUE '([0-9]{4})(-[0-9]{2}){2}'.

IF contains( val = text pcre = regex ).

  DATA(number)    = count( val = text pcre = regex ).
  DATA(offset)    = find( val = text pcre = regex occ = 1 ).
  DATA(date_text) = match( val = text pcre = regex occ = 1 ).

  IF matches( val = text pcre = regex ).
    ...
  ENDIF.

ENDIF.

out->write( number ).
out->write( offset ).
out->write( date_text ).
  ENDMETHOD.
ENDCLASS.
