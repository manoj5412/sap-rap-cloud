CLASS zcl_mann_date_time_ts DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_date_time_ts IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  select from /dmo/travel
  fields begin_date,
  end_date,
  is_valid( begin_date )   as valid,
  add_days( begin_date, 7 )    as add_7_days,
  add_months( begin_date, 3 )  as add_3_months,
  days_between( begin_date, end_date ) as duration,

  weekday( begin_date )    as weekday,
  extract_month( begin_date )  as month,
  dayname( begin_date ) as day_name

  where days_between( begin_date, end_date ) > 10
  into table @data(it_results).
  out->write( it_results ).


  ENDMETHOD.
ENDCLASS.
