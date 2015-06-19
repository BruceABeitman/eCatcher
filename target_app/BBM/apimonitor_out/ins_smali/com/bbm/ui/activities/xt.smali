.class final Lcom/bbm/ui/activities/xt;
.super Ljava/lang/Object;
.source "NewChannelActivity.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelActivity;
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/xt;->a:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/xt; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-eqz p2, :cond_b
iget-object v0, p0, Lcom/bbm/ui/activities/xt;->a:Lcom/bbm/ui/activities/NewChannelActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelActivity;->n(Lcom/bbm/ui/activities/NewChannelActivity;)Landroid/widget/Spinner;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z
:cond_b
const-string v1, " - Lcom/bbm/ui/activities/xt; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method