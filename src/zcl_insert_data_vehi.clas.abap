CLASS zcl_insert_data_vehi DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_vehi IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


    DATA: it_vehi  TYPE TABLE OF zdb_vehicle,
          it_maint TYPE TABLE OF zdb_maint_log.

    "------------------------------------------------------
    " Generate UUIDs for VEHICLES
    "------------------------------------------------------
    DATA(uuid_v1) = cl_system_uuid=>create_uuid_x16_static( ).
    DATA(uuid_v2) = cl_system_uuid=>create_uuid_x16_static( ).
    DATA(uuid_v3) = cl_system_uuid=>create_uuid_x16_static( ).

    "------------------------------------------------------
    " Vehicle data (FIXED)
    "------------------------------------------------------
    it_vehi = VALUE #(
      ( vehicle_uuid      = uuid_v1
        vehicleid_no      = 'TN01AB1234'
        modelname         = 'Volvo FH16'
        last_service_date = '20260510'
        totalcost         = '15000.00'
        currency_code     = 'INR' )

      ( vehicle_uuid      = uuid_v2
        vehicleid_no      = 'TN02CD5678'
        modelname         = 'Volvo FMX'
        last_service_date = '20260415'
        totalcost         = '22000.50'
        currency_code     = 'INR' )

      ( vehicle_uuid      = uuid_v3
        vehicleid_no      = 'KA03EF9012'
        modelname         = 'Scania R500'
        last_service_date = '20260320'
        totalcost         = '18500.75'
        currency_code     = 'INR' )
    ).

    INSERT zdb_vehicle FROM TABLE @it_vehi.

    "------------------------------------------------------
    " Generate UUIDs for Maintenance Logs
    "------------------------------------------------------
    DATA(uuid_m1) = cl_system_uuid=>create_uuid_x16_static( ).
    DATA(uuid_m2) = cl_system_uuid=>create_uuid_x16_static( ).
    DATA(uuid_m3) = cl_system_uuid=>create_uuid_x16_static( ).
    DATA(uuid_m4) = cl_system_uuid=>create_uuid_x16_static( ).

    "------------------------------------------------------
    " Maintenance data (FIXED relationship)
    "------------------------------------------------------
    it_maint = VALUE #(
      ( loguuid       = uuid_m1
        vehicle_uuid  = uuid_v1
        maint_date    = '20260510'
        maint_type    = 'Oil Change'
        cost          = '5000.00'
        currency_code = 'INR'
        status        = 'N' )

      ( loguuid       = uuid_m2
        vehicle_uuid  = uuid_v1
        maint_date    = '20260520'
        maint_type    = 'Brake Inspection'
        cost          = '10000.00'
        currency_code = 'INR'
        status        = 'C' )

      ( loguuid       = uuid_m3
        vehicle_uuid  = uuid_v2
        maint_date    = '20260415'
        maint_type    = 'Engine Check'
        cost          = '22000.50'
        currency_code = 'INR'
        status        = 'P' )

      ( loguuid       = uuid_m4
        vehicle_uuid  = uuid_v3
        maint_date    = '20260320'
        maint_type    = 'Tire Rotation'
        cost          = '18500.75'
        currency_code = 'INR'
        status        = 'N' )
    ).

    INSERT zdb_maint_log FROM TABLE @it_maint.

    COMMIT WORK.

    out->write( 'Data Inserted Successfully' ).

  ENDMETHOD.
ENDCLASS.
