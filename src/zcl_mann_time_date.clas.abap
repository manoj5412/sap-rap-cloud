CLASS zcl_mann_time_date DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_time_date IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*  data var_date type d.
*  data var_time_system type t.
*  data time_zone type c length 6.
*
*  var_date = cl_abap_context_info=>get_system_date(  ).
*  var_time_system = cl_abap_context_info=>get_system_time(  ).
*  time_zone = cl_abap_context_info=>get_user_time_zone(  ).
*
*  out->write( var_date ).
*  out->write( var_time_system ).
*  out->write( time_zone ).

data var_date type d.
data var_month type n length 2.

var_date = cl_abap_context_info=>get_system_date(  ).
var_month = var_date+4(2).

data var_utc type utclong.
var_utc = utclong_current(  ).

var_utc = utclong_current(  ).
var_utc = utclong_add( val = var_utc days = 1 hours = -1 ).

data var_utc1 type utclong.
data var_utc2 type utclong.
data difference type i.

var_utc1 = utclong_current(  ).
var_utc2 = utclong_current(  ).

var_utc2 = utclong_add( val = var_utc2 hours = -1 ).
difference = utclong_diff( high = var_utc1 low = var_utc2 ).
  ENDMETHOD.
ENDCLASS.
