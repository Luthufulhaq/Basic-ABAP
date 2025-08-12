CLASS ycl_basic_abap_program DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_basic_abap_program IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  "Internal table declaration
  DATA: lt_book TYPE TABLE OF ybooking_table.

  GET TIME STAMP FIELD DATA(lv_time).

  "Internal table lt_book to hold data at the runtime
  lt_book = VALUE #( (  BOOKING_ID = '2321'
                        CUSTOMER_NAME = 'Pratheek'
                        PASSENGER = '5'
                        EMAIL_ID = 'pratheek3432@gmail.com'
                        COUNTRY = 'India'
                        BOOKING_DATE = '739476 '
                        TRAVEL_DATE = '739477 '
                        FEE = '4254.00 '
                        CURRENCY_CODE = 'INR'
                        LAST_CHANGE = '20250812092213 ' )

                      ( BOOKING_ID = '5324'
                        CUSTOMER_NAME = 'John'
                        PASSENGER = '2'
                        EMAIL_ID = 'johnsamuel738@gmail.com'
                        COUNTRY = 'USA'
                        BOOKING_DATE = '739476 '
                        TRAVEL_DATE = '739477 '
                        FEE = '578.00 '
                        CURRENCY_CODE = 'USD'
                        LAST_CHANGE = '20250812092213 '  )

                      ( BOOKING_ID = '7958'
                        CUSTOMER_NAME = 'Younes'
                        PASSENGER = '6'
                        EMAIL_ID = 'Younes474@gmail.com'
                        COUNTRY = 'UAE'
                        BOOKING_DATE = '739476 '
                        TRAVEL_DATE = '739477 '
                        FEE = '3453.00 '
                        CURRENCY_CODE = 'AED'
                        LAST_CHANGE = '20250812092213 '  )

                      ( BOOKING_ID = '4367'
                        CUSTOMER_NAME = 'Michelle'
                        PASSENGER = '1'
                        EMAIL_ID = 'michelle843@gmail.com'
                        COUNTRY = 'UK'
                        BOOKING_DATE = '739476 '
                        TRAVEL_DATE = '739477 '
                        FEE = '878.00 '
                        CURRENCY_CODE = 'GBP'
                        LAST_CHANGE = '20250812092213 '  )

                      ( BOOKING_ID = '8797'
                        CUSTOMER_NAME = 'Austin'
                        PASSENGER = '4'
                        EMAIL_ID = 'Austincasy73@gmail.com'
                        COUNTRY = 'France'
                        BOOKING_DATE = '739476 '
                        TRAVEL_DATE = '739477 '
                        FEE = '643.00 '
                        CURRENCY_CODE = 'EUR'
                        LAST_CHANGE = '20250812092213 '  )

                      ( BOOKING_ID = '1543'
                        CUSTOMER_NAME = 'Rahul'
                        PASSENGER = '2'
                        EMAIL_ID = 'rahul63@gmail.com'
                        COUNTRY = 'India'
                        BOOKING_DATE = '739476 '
                        TRAVEL_DATE = '739477 '
                        FEE = '2344.00 '
                        CURRENCY_CODE = 'INR'
                        LAST_CHANGE = '20250812092213 '  ) ).

 "Delete statement used to delete older data from db
     DELETE FROM ybooking_table.

 "Insert statement used to insert new data  to db
    INSERT ybooking_table FROM TABLE @lt_book.

 "To fetch new records and hold to internal table
    SELECT * FROM ybooking_table INTO TABLE @lt_book.

 "To display inserted records as table in db table
 Out->write( EXPORTING data = lt_book ).

  ENDMETHOD.
ENDCLASS.
