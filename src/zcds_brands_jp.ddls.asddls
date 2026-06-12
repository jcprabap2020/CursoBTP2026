@AbapCatalog.sqlViewName: 'ZDDL_BRANDS'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_BRANDS_jp
  as select from zrent_brands_jp
{
  key marca as marca,
      url   as Url
}
