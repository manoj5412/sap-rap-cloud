CLASS zcl_insert_data_mann DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_insert_data_mann IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   data : it_dept type table of zdept_mann,
         it_emp type table of zemp_mann.

  it_dept = value #(
  ( dept_id = '001' dept_name = 'Finance'   location = 'Chennai' )
  ( dept_id = '002' dept_name = 'HR'        location = 'Mumbai' )
  ( dept_id = '003' dept_name = 'IT'        location = 'Bangalore' )
  ( dept_id = '004' dept_name = 'Sales'     location = 'Hyderabad' )
  ( dept_id = '005' dept_name = 'Marketing' location = 'Delhi' )
   ).

   insert zdept_mann from table @it_dept.

   it_emp = value #(
   ( dept_id = '001' emp_id = 'E001' first_name = 'Manoj'  last_name = 'Kumar' )
   ( dept_id = '001' emp_id = 'E002' first_name = 'Rahul'  last_name = 'Sharma' )
   ( dept_id = '002' emp_id = 'E003' first_name = 'Priya'  last_name = 'Singh' )
   ( dept_id = '002' emp_id = 'E004' first_name = 'Anita'  last_name = 'Patel' )
   ( dept_id = '003' emp_id = 'E005' first_name = 'Arjun'  last_name = 'Reddy' )
   ( dept_id = '003' emp_id = 'E006' first_name = 'Kiran'  last_name = 'Rao' )
   ( dept_id = '004' emp_id = 'E007' first_name = 'Vijay'  last_name = 'Verma' )
   ( dept_id = '004' emp_id = 'E008' first_name = 'Neha'   last_name = 'Gupta' )
   ( dept_id = '005' emp_id = 'E009' first_name = 'Naveen'   last_name = 'Kumar' )
   ( dept_id = '005' emp_id = 'E010' first_name = 'Sri'   last_name = 'Saran' )
    ).

   insert zemp_mann from table @it_emp.

   out->write( 'Data Inserted Successfully' ).

  ENDMETHOD.
ENDCLASS.
