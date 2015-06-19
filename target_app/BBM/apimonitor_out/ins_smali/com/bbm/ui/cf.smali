.class final Lcom/bbm/ui/cf;
.super Lcom/bbm/j/u;
.source "EmoticonStickerPager.java"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/bbm/ui/cd;
.method constructor <init>(Lcom/bbm/ui/cd;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/cf;->b:Lcom/bbm/ui/cd;
iput-object p2, p0, Lcom/bbm/ui/cf;->a:Ljava/lang/String;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 7
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/cf;->b:Lcom/bbm/ui/cd;
iget-object v0, v0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->m(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/d/b/f;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/b/f;->f()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v2
:goto_13
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_42
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v5
invoke-virtual {v5, v0}, Lcom/bbm/d/a;->q(Ljava/lang/String;)Lcom/bbm/d/gj;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/gj;->a:Ljava/lang/String;
iget-object v5, p0, Lcom/bbm/ui/cf;->a:Ljava/lang/String;
invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/bbm/ui/cf;->b:Lcom/bbm/ui/cd;
iget-object v0, v0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->p(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/support/v4/view/ViewPager;
move-result-object v0
invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
iget-object v0, p0, Lcom/bbm/ui/cf;->b:Lcom/bbm/ui/cd;
const/4 v1, 0x0
iput-object v1, v0, Lcom/bbm/ui/cd;->b:Lcom/bbm/j/u;
move v2, v3
:cond_42
return v2
:cond_43
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_13
.end method