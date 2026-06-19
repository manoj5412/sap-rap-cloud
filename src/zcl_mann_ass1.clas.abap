CLASS zcl_mann_ass1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_ass1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*Declaration Syntax
  data lv_user_name type c length 30 .
  data lv_login_attempts type i .
*
**Constant
*  constants lc_tax_rate type p decimals 2 value '0.15' .
*
** value assignment
**   gv_city = 'New York'.
*
**Arithmetic Operators
*   data ( fullbox ) = gv_total_items / gv_box_size.
*   data ( itemsleft ) = gv_total_items % gv_box_size.
*
**string concatenation
*   data lv_title type string value 'Mr.'.
*   data lv_first type string value 'James'.
*   data lv_last  type string value 'Bond'.
*
*   data(lv_full_name) =
*   |{ lv_title } { lv_first } { lv_last }|.
*
*   out->write( lv_full_name ).

*Average
*    data(v1) = 10.
*    data(v2) = 20.
*    data(v3) = 30.
*
*    data(gv_average) = ( v1 + v2 + v3 ) / 3.
*    out->write( gv_average ).
  ENDMETHOD.
ENDCLASS.
