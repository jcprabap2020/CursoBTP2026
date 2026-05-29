CLASS zcl_clilib_load_dats DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_clilib_load_dats IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    data: lti_acc_categ type STANDARD TABLE OF ztb_acc_categ_jp,
          lti_catego    type STANDARD TABLE OF ztb_catego_jcpr,
          lti_clientes  type STANDARD TABLE OF ztb_clientes_jp,
          lti_clilib    type STANDARD TABLE OF ztb_clnts_lib_jp,
          lti_libros    type STANDARD TABLE OF ztb_libros_jcpr.

    lti_acc_categ = value #(
                      ( bi_categ = '1' tipo_acceso = '1' )
                      ( bi_categ = '1' tipo_acceso = '2' )
                      ( bi_categ = '1' tipo_acceso = '3' )
                      ( bi_categ = '2' tipo_acceso = '1' )
                      ( bi_categ = '3' tipo_acceso = '1' )
                      ( bi_categ = '2' tipo_acceso = '2' ) ).

     delete from ztb_acc_categ_jp.
     insert ztb_acc_categ_jp from table @lti_acc_categ.
     select count( * ) from ztb_acc_categ_jp into @data(li_tot_reg).

     out->write( li_tot_reg ).
     out->write( 'Exito con la tabla ztb_acc_categ_jp' ).
*--------------------------------------------------------------------
    lti_catego = value #(
                      ( bi_categ = '1' descripcion = 'categoria-1' )
                      ( bi_categ = '2' descripcion = 'categoria-2' )
                      ( bi_categ = '3' descripcion = 'categoria-3' )
                       ).

     delete from ztb_catego_jcpr.
     insert ztb_catego_jcpr from table @lti_catego.
     select count( * ) from ztb_catego_jcpr into @li_tot_reg.

     out->write( li_tot_reg ).
     out->write( 'Exito con la tabla ztb_catego_jcpr' ).
*--------------------------------------------------------------------
    lti_clientes = value #(
                      ( id_cliente = '11111' tipo_acceso = '1' nombre = 'Ernesto' apellidos = 'Riquelme' email = 'ernest2020@gmail.com' url = 'https://www.ernestoricky.com')
                      ( id_cliente = '22222' tipo_acceso = '1' nombre = 'Luis' apellidos = 'Morales' email = 'luis2020@gmail.com' url = 'https://www.luismorales.com')
                      ( id_cliente = '11111' tipo_acceso = '2' nombre = 'Hernan' apellidos = 'Coñoman' email = 'hernan2020@gmail.com' url = 'https://www.hernancoño.com')
                       ).

     delete from ztb_clientes_jp.
     insert ztb_clientes_jp from table @lti_clientes.
     select count( * ) from ztb_clientes_jp into @li_tot_reg.

     out->write( li_tot_reg ).
     out->write( 'Exito con la tabla ztb_clientes_jp' ).

*--------------------------------------------------------------------
    lti_clilib  = value #(
                      ( id_cliente = '11111' id_libro = '202634524' )
                      ( id_cliente = '11111' id_libro = '202611111' )
                      ( id_cliente = '11111' id_libro = '202699999' )
                      ( id_cliente = '22222' id_libro = '202677777' )
                      ( id_cliente = '22222' id_libro = '202655555' )
                       ).

     delete from ztb_clnts_lib_jp.
     insert ztb_clnts_lib_jp from table @lti_clilib.
     select count( * ) from ztb_clnts_lib_jp into @li_tot_reg.

     out->write( li_tot_reg ).
     out->write( 'Exito con la tabla ztb_clnts_lib_jp' ).
*--------------------------------------------------------------------
    lti_libros  = value #(
      ( id_libro = '202634524' bi_categ = '1' titulo = 'titulo-1' autor = 'autor-1' editorial = 'EDI-1' idioma = 'S' paginas = 100 precio = 13000 moneda = 'CLP' formato = '1' url = 'htpps://www.libreriaangola.com' )
      ( id_libro = '202611111' bi_categ = '2' titulo = 'titulo-2' autor = 'autor-2' editorial = 'EDI-1' idioma = 'S' paginas = 300 precio = 13000 moneda = 'CLP' formato = '1' url = 'htpps://www.libreriaangola.com' )
      ( id_libro = '202699999' bi_categ = '1' titulo = 'titulo-3' autor = 'autor-3' editorial = 'EDI-2' idioma = 'E' paginas = 400 precio = 13000 moneda = 'CLP' formato = '2' url = 'htpps://www.libreriaangola.com' )
      ( id_libro = '202677777' bi_categ = '2' titulo = 'titulo-4' autor = 'autor-4' editorial = 'EDI-2' idioma = 'S' paginas = 500 precio = 13000 moneda = 'CLP' formato = '2' url = 'htpps://www.libreriaangola.com' )
      ( id_libro = '202655555' bi_categ = '3' titulo = 'titulo-5' autor = 'autor-5' editorial = 'EDI-2' idioma = 'E' paginas = 300 precio = 13000 moneda = 'CLP' formato = '1' url = 'htpps://www.libreriaangola.com' )
                       ).

     delete from ztb_libros_jcpr.
     insert ztb_libros_jcpr from table @lti_libros.
     select count( * ) from ztb_libros_jcpr into @li_tot_reg.

     out->write( li_tot_reg ).
     out->write( 'Exito con la tabla ztb_libros_jcpr' ).
*--------------------------------------------------------------------

  ENDMETHOD.
ENDCLASS.
