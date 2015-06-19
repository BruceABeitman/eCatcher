.class final Lcom/bbm/ui/activities/qq;
.super Ljava/lang/Object;
.source "GroupLobbyActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/qn;
.method constructor <init>(Lcom/bbm/ui/activities/qn;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/qq;->a:Lcom/bbm/ui/activities/qn;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/qq; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "mOnRightButtonClickListener Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/qq;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v0}, Lcom/bbm/ui/activities/qn;->d(Lcom/bbm/ui/activities/qn;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_3f
iget-object v0, p0, Lcom/bbm/ui/activities/qq;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v0}, Lcom/bbm/ui/activities/qn;->e(Lcom/bbm/ui/activities/qn;)V
:goto_1f
iget-object v0, p0, Lcom/bbm/ui/activities/qq;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v0}, Lcom/bbm/ui/activities/qn;->f(Lcom/bbm/ui/activities/qn;)Lcom/bbm/j/u;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/qq;->a:Lcom/bbm/ui/activities/qn;
invoke-virtual {v0}, Lcom/bbm/ui/activities/qn;->dismiss()V
iget-object v0, p0, Lcom/bbm/ui/activities/qq;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v0}, Lcom/bbm/ui/activities/qn;->g(Lcom/bbm/ui/activities/qn;)Z
move-result v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/bbm/ui/activities/qq;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v0}, Lcom/bbm/ui/activities/qn;->h(Lcom/bbm/ui/activities/qn;)Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
:cond_3e
const-string v1, " - Lcom/bbm/ui/activities/qq; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3f
iget-object v0, p0, Lcom/bbm/ui/activities/qq;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v0}, Lcom/bbm/ui/activities/qn;->a(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/qq;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v1}, Lcom/bbm/ui/activities/qn;->b(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/a;
move-result-object v1
iget-object v1, v1, Lcom/bbm/g/a;->v:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/g/an;->c(Ljava/lang/String;)Lcom/bbm/g/bp;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
goto :goto_1f
.end method