.class final Lcom/bbm/ui/bv;
.super Ljava/lang/Object;
.source "EmoticonStickerPager.java"
.implements Lit/sephiroth/android/library/widget/v;
.field final synthetic a:Lcom/bbm/ui/EmoticonStickerPager;
.method constructor <init>(Lcom/bbm/ui/EmoticonStickerPager;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/bv;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/bv;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-virtual {v0, p1}, Lcom/bbm/ui/EmoticonStickerPager;->setTabBarPosition(I)V
iget-object v0, p0, Lcom/bbm/ui/bv;->a:Lcom/bbm/ui/EmoticonStickerPager;
const/4 v1, 0x0
invoke-static {v0, v1, p1}, Lcom/bbm/ui/EmoticonStickerPager;->a(Lcom/bbm/ui/EmoticonStickerPager;ZI)V
return-void
.end method