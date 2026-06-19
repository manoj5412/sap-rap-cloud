CLASS zcl_mann_conditionalst DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_conditionalst IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*  constants c_number type i value 0.
*  constants c_number type i value 1.
*  constants c_number type i value 2.
*  constants c_number type i value -1.
  constants c_number type i value -2.

    out->write(  `--------------------------------` ).
    out->write(  `Example 1: Simple IF ... ENDIF.` ).
    out->write(  `-------------------------------` ).

    if c_number = 0.
    out->write( 'The value of c_number equals zero'  ).
    else.
    out->write( 'The value of c_numbers is not zero' ).
    endif.

    out->write(  `--------------------------------------------` ).
    out->write(  `Example 2: Optional Branches ELSEIF and ELSE` ).
    out->write(  `--------------------------------------------` ).

    if c_number = 0.
    out->write( 'The value of c_number equals zero ' ).
    elseif c_number > 0.
    out->write( 'The value of c_number is greater than zero' ).
    else.
    out->write( 'The value of c_number is lesser than zero' ).
    endif.

    out->write(  `---------------------------` ).
    out->write(  `Example 3: CASE ... ENDCASE` ).
    out->write(  `---------------------------` ).

    case c_number.
      when 0.
        out->write( `The value of c_number equals zero`             ).
      when 1.
        out->write( `The value of c_number equals one`              ).
      when 2.
        out->write( `The value of c_number equals two`              ).
      when others.
        out->write( `The value of c_number equals non of the above` ).
    endcase.
  ENDMETHOD.
ENDCLASS.
