CLASS zcl_show_dats DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_show_dats IMPLEMENTATION.

    method if_oo_adt_classrun~main.
    "es una test
        out->write( 'hola' ).
    endmethod.
ENDCLASS.
