CLASS zcl_mann_exphandling DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_exphandling IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data result type i.
  data numbers type table of i.

  append 123 to numbers.

*  constants c_text type string value 'ABC'.
  constants c_text type string value '123'.

  out->write(  `---------------------------` ).
  out->write(  `Example 1: Conversion Error` ).
  out->write(  `---------------------------` ).

   try.
        result = c_text.
        out->write( |Converted content is { result }|  ).
      catch cx_sy_conversion_no_number.
        out->write( |Error: { c_text } is not a number!| ).
    endtry.

*   constants c_number type i value 0.
   constants c_number type i value 7.

    out->write(  `---------------------------` ).
    out->write(  `Example 2: Division by Zero` ).
    out->write(  `---------------------------` ).

    try.
    result = 100 / c_number.
    out->write( |100 divided by { c_number } equals { result } | ).
    catch cx_sy_zerodivide.
    out->write( 'error: division by zero is not defined!' ).
    endtry.

*    constants c_index type i value 2.
    constants c_index type i value 1.

    out->write(  `-------------------------` ).
    out->write(  `Example 3: Line Not Found` ).
    out->write(  `-------------------------` ).

    try.
    result = numbers[ c_index ].
        out->write( |Content of row { c_index } equals { result }| ).
      catch cx_sy_itab_line_not_found.
        out->write(  `Error: Itab has less than { c_index } rows!` ).
    endtry.

*   constants c_char type c length 1 value 'X'.
*   constants c_char type c length 1 value '0'.
*   constants c_char type c length 1 value '1'.
   constants c_char type c length 1 value '2'.

    out->write(  `----------------------` ).
    out->write(  `Example 4: Combination` ).
    out->write(  `----------------------` ).

    try.
    result = numbers[ 2 / c_char ].
    out->write( |Result: { result }| ).
    catch cx_sy_zerodivide.
        out->write( `Error: Division by zero is not defined`  ).
    catch cx_sy_conversion_no_number.
        out->write( |Error: { c_char } is not a number! | ).
    catch cx_sy_itab_line_not_found.
    out->write( |Error: Itab contains less than { 2 / c_char } rows| ).
    endtry.
  ENDMETHOD.
ENDCLASS.
