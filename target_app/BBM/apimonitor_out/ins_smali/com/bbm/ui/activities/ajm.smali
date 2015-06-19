.class final Lcom/bbm/ui/activities/ajm;
.super Ljava/lang/Object;
.source "ViewChannelPostActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/ajm; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/d/ec;->q:Z
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
const-string v1, ""
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Ljava/lang/String;)V
:goto_19
:cond_19
const-string v1, " - Lcom/bbm/ui/activities/ajm; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1a
iget-object v0, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/bbm/ui/activities/ajm;->a:Lcom/bbm/ui/activities/ViewChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->d(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V
goto :goto_19
.end method