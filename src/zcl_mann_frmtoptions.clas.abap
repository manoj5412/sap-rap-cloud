CLASS zcl_mann_frmtoptions DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_frmtoptions IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*format option for date
  data the_date type d value '19891130' .
  out->write( |{ the_date }| ).
  out->write( |{ the_date date = ISO }| ).
  out->write( |{ the_date date = USER }| ).

*format option for numbers
  data my_number type p length 3 decimals 2 value '-273.15'.
  out->write( |{ my_number }| ).
  out->write( |{ my_number NUMBER = USER        }| ).
  out->write( |{ my_number SIGN = RIGHT       }| ).
  out->write( |{ my_number STYLE = SCIENTIFIC   }| ).

*operator &&
  data result type string.
  data part1 type string value 'Hello'.
  data part2 type string value 'World'.
*  result = part1 && part2.
  result = part1 && | | && part2.
  out->write( result ).
  ENDMETHOD.
ENDCLASS.
