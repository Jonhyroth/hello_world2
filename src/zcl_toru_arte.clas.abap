CLASS zcl_toru_arte DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_TORU_ARTE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  Data: it_art type STANDARD TABLE OF ztttoru_tab_art.

  it_art = VALUE #(
  ( client = sy-mandt id_art = 1 descripcion = 'pincel'  desc2 = 'large'
  color = 'azul' piezas = 50 stock = 5 url = 'url dummy')

  ).

INSERT ZTTTORU_TAB_ART FROM TABLE @it_art.

IF SY-SUBRC = 0.

out->write( 'INSERT GOOD' ).
ELSE.
out->write( 'INSERT BAD' ).
ENDIF.
  ENDMETHOD.
ENDCLASS.
