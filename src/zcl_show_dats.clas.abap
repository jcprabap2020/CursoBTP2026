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

*        select bi_categ, tipo_acceso
*        from ZCDS_ASSOCIA_1
*        into table @DATA(lti_data).
        select
        from zcds_associa_1\_catdescrip as XX
          fields xx~bi_categ, xx~descripcion
        into table @DATA(lti_data).
        out->write( lti_data ).
    endmethod.
ENDCLASS.
