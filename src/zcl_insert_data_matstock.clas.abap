CLASS zcl_insert_data_matstock DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_matstock IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  DATA: it_master TYPE TABLE OF zdb_master,
          it_stock  TYPE TABLE OF zdb_stock_items.

    it_master = VALUE #(
      ( material_id = 'M001' material_name = 'Laptop'      unit = 'PCS' )
      ( material_id = 'M002' material_name = 'Keyboard'    unit = 'PCS' )
      ( material_id = 'M003' material_name = 'Mouse'       unit = 'PCS' )
      ( material_id = 'M004' material_name = 'Monitor'     unit = 'PCS' )
      ( material_id = 'M005' material_name = 'Printer'     unit = 'PCS' )
    ).

    INSERT zdb_master FROM TABLE @it_master.

    it_stock = VALUE #(
      ( material_id = 'M001' warehouseid = '0001' quantity = '50.000'  priceperunit = '55000.00' )
      ( material_id = 'M001' warehouseid = '0002' quantity = '60.000'  priceperunit = '54500.00' )

      ( material_id = 'M002' warehouseid = '0001' quantity = '120.000' priceperunit = '1500.00')
      ( material_id = 'M002' warehouseid = '0002' quantity = '80.000'  priceperunit = '1450.00' )

      ( material_id = 'M003' warehouseid = '0001' quantity = '200.000' priceperunit = '500.00' )
      ( material_id = 'M003' warehouseid = '0002' quantity = '150.000' priceperunit = '550.00' )

      ( material_id = 'M004' warehouseid = '0001' quantity = '40.000'  priceperunit = '12000.00' )
      ( material_id = 'M004' warehouseid = '0002' quantity = '70.000'  priceperunit = '11800.00' )

      ( material_id = 'M005' warehouseid = '0001' quantity = '30.000'  priceperunit = '8000.00'  )
      ( material_id = 'M005' warehouseid = '0002' quantity = '90.000'  priceperunit = '7900.00'  )
    ).

    INSERT zdb_stock_items FROM TABLE @it_stock.

    out->write( 'Data Inserted Successfully' ).

  ENDMETHOD.
ENDCLASS.
