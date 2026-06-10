@AbapCatalog.sqlViewName: 'ZDDL_SIN_ASOC'
@AbapCatalog.compiler.compareFilter: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sin asociación'
@Metadata.ignorePropagatedAnnotations: true
define view ZCDS_SIN_ASSOCIA_1 
        as select from ztb_acc_categ_jp as _acc
                        left outer join ztb_catego_jcpr as _cat on
                        _acc.bi_categ = _cat.bi_categ
                                 
{
    key _acc.bi_categ,
        _cat.descripcion
    
}
