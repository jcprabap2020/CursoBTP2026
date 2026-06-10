@AbapCatalog.sqlViewName: 'ZDDL_ASSOC_1'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asocciacion 1'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_ASSOCIA_1 
       as select from ztb_acc_categ_jp
       association [1..1] to ztb_catego_jcpr as _catdescrip
       on $projection.bi_categ = _catdescrip.bi_categ
{
    key bi_categ,
    key tipo_acceso,
    _catdescrip
}
