.class final Lcom/bbm/ui/cg;
.super Ljava/lang/Object;
.source "EmoticonStickerPager.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/cd;
.method constructor <init>(Lcom/bbm/ui/cd;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/cg;->a:Lcom/bbm/ui/cd;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/cg; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/cg;->a:Lcom/bbm/ui/cd;
iget-object v0, v0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->a(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/view/View$OnClickListener;
move-result-object v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/bbm/ui/cg;->a:Lcom/bbm/ui/cd;
iget-object v0, v0, Lcom/bbm/ui/cd;->c:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->a(Lcom/bbm/ui/EmoticonStickerPager;)Landroid/view/View$OnClickListener;
move-result-object v0
invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
:cond_15
const-string v1, " - Lcom/bbm/ui/cg; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method