.class final Lcom/bbm/ui/gg;
.super Ljava/lang/Object;
.source "StickerPicker.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/view/View$OnClickListener;
.field final synthetic b:Lcom/bbm/ui/StickerPicker;
.method constructor <init>(Lcom/bbm/ui/StickerPicker;Landroid/view/View$OnClickListener;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/gg;->b:Lcom/bbm/ui/StickerPicker;
iput-object p2, p0, Lcom/bbm/ui/gg;->a:Landroid/view/View$OnClickListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/gg; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/gg;->a:Landroid/view/View$OnClickListener;
if-eqz v0, :cond_19
const-string v0, "clicked on cart"
const-class v1, Lcom/bbm/ui/StickerPicker;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/gg;->a:Landroid/view/View$OnClickListener;
invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Lcom/bbm/c/s;->b:Lcom/bbm/c/s;
invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/s;)V
:cond_19
const-string v1, " - Lcom/bbm/ui/gg; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method