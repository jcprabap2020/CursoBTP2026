@AbapCatalog.sqlViewName: 'ZDDL_DET_CUS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detalle de clientes'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view ZCDS_DET_CUSTOMER_JP
  as select from zrent_custome_jp
{
  key doc_id    as ID,
  key matricula as matricula,
      nombres   as nombre,
      apellidos as apellidos,
      email     as email,
      cntr_type as tipo_contrato

}
