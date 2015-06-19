.class public final Lcom/instagram/cliffjumper/edit/common/effectfilter/i;
.super Ljava/lang/Object;
.source "FilterUtil.java"


# direct methods
.method public static a(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;
    .registers 2

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    return-object v0
.end method

.method public static a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;)V
    .registers 3

    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V

    return-void
.end method

.method public static a(Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;)V
    .registers 3

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(ILcom/instagram/filterkit/filter/IgFilter;)V

    return-void
.end method

.method public static b(Lcom/instagram/filterkit/filter/IgFilterGroup;)Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;
    .registers 2

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(I)Lcom/instagram/filterkit/filter/IgFilter;

    move-result-object v0

    check-cast v0, Lcom/instagram/cliffjumper/edit/common/effectfilter/BorderFilter;

    return-object v0
.end method
