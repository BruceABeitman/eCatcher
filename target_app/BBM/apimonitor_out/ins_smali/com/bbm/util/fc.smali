.class final Lcom/bbm/util/fc;
.super Ljava/lang/Object;
.source "Util.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/util/fe;
.field final synthetic b:Landroid/widget/PopupWindow;
.method constructor <init>(Lcom/bbm/util/fe;Landroid/widget/PopupWindow;)V
.registers 3
iput-object p1, p0, Lcom/bbm/util/fc;->a:Lcom/bbm/util/fe;
iput-object p2, p0, Lcom/bbm/util/fc;->b:Landroid/widget/PopupWindow;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/util/fc; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Toast Button clicked"
const-class v1, Lcom/bbm/util/fb;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/util/fc;->a:Lcom/bbm/util/fe;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/bbm/util/fc;->b:Landroid/widget/PopupWindow;
invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
iget-object v0, p0, Lcom/bbm/util/fc;->a:Lcom/bbm/util/fe;
invoke-interface {v0}, Lcom/bbm/util/fe;->a()V
:cond_15
const-string v1, " - Lcom/bbm/util/fc; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method