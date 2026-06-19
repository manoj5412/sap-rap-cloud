CLASS zcl_fill_data_mann DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_fill_data_mann IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data : it_carrier type table of zcarrier_mann,
         it_conn type table of zconn_mann.

  it_carrier = value #(
  ( carrid = 'LH' name = 'Lufthansa' currcode = 'EUR' )
  ( carrid = 'AA' name = 'American Airlines' currcode = 'USD' )
  ( carrid = 'AZ' name = 'Alitalia Societa Aerea Italiana S.p.A.' currcode = 'EUR' )
  ( carrid = 'JL' name = 'Japan Airlines' currcode = 'JPY' )
  ( carrid = 'UA' name = 'United Airlines, Inc.' currcode = 'USD' )
   ).

   insert zcarrier_mann from table @it_carrier.

   it_conn = value #(
   ( carrid = 'LH' connid = '0400' cityfrom = 'FRA' cityto = 'JFK' )
   ( carrid = 'LH' connid = '0401' cityfrom = 'JFK' cityto = 'FRA' )
   ( carrid = 'AA' connid = '0017' cityfrom = 'MIA' cityto = 'HAV' )
   ( carrid = 'AA' connid = '0015' cityfrom = 'JFK' cityto = 'SFO' )
   ( carrid = 'AA' connid = '0018' cityfrom = 'SFO' cityto = 'JFK' )
   ( carrid = 'AZ' connid = '0788' cityfrom = 'VCE' cityto = 'NRT' )
   ( carrid = 'AZ' connid = '0789' cityfrom = 'NRT' cityto = 'VCE' )
   ( carrid = 'JL' connid = '0407' cityfrom = 'NRT' cityto = 'FRA' )
   ( carrid = 'JL' connid = '0408' cityfrom = 'FRA' cityto = 'NRT' )
   ( carrid = 'UA' connid = '1537' cityfrom = 'EWR' cityto = 'MIA' )
   ( carrid = 'UA' connid = '0058' cityfrom = 'SFO' cityto = 'FRA' )
   ( carrid = 'UA' connid = '0059' cityfrom = 'FRA' cityto = 'SFO' )
    ).

   insert zconn_mann from table @it_conn.

   out->write( 'Data Inserted Successfully' ).

  ENDMETHOD.
ENDCLASS.
