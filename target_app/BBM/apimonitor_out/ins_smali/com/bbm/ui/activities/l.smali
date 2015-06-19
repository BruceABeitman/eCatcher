.class final Lcom/bbm/ui/activities/l;
.super Ljava/lang/Object;
.source "AddChannelPostActivity.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/bbm/ui/activities/AddChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/l;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/l; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-eqz p2, :cond_d
iget-object v0, p0, Lcom/bbm/ui/activities/l;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->q(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/TextView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:goto_c
const-string v1, " - Lcom/bbm/ui/activities/l; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_d
iget-object v0, p0, Lcom/bbm/ui/activities/l;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->q(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/TextView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_c
.end method