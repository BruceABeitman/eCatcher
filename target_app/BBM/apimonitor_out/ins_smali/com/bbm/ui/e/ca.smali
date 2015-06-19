.class final Lcom/bbm/ui/e/ca;
.super Ljava/lang/Object;
.source "StickerHolder.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/e/bz;
.method constructor <init>(Lcom/bbm/ui/e/bz;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/e/ca;->a:Lcom/bbm/ui/e/bz;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/e/ca; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Sticker Clicked"
const-class v1, Lcom/bbm/ui/e/bz;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/e/ca;->a:Lcom/bbm/ui/e/bz;
invoke-static {v0}, Lcom/bbm/ui/e/bz;->a(Lcom/bbm/ui/e/bz;)Lcom/bbm/ui/e/cc;
move-result-object v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/bbm/ui/e/ca;->a:Lcom/bbm/ui/e/bz;
invoke-static {v0}, Lcom/bbm/ui/e/bz;->a(Lcom/bbm/ui/e/bz;)Lcom/bbm/ui/e/cc;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/e/ca;->a:Lcom/bbm/ui/e/bz;
invoke-interface {v0, v1}, Lcom/bbm/ui/e/cc;->a(Lcom/bbm/ui/e/bz;)V
:cond_1a
const-string v1, " - Lcom/bbm/ui/e/ca; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method