.class final Lcom/bbm/ui/activities/py;
.super Ljava/lang/Object;
.source "GroupLobbyActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/widget/CheckBox;
.field final synthetic b:Lcom/bbm/g/w;
.field final synthetic c:Lcom/bbm/g/y;
.field final synthetic d:Lcom/bbm/ui/activities/GroupLobbyActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;Landroid/widget/CheckBox;Lcom/bbm/g/w;Lcom/bbm/g/y;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/activities/py;->d:Lcom/bbm/ui/activities/GroupLobbyActivity;
iput-object p2, p0, Lcom/bbm/ui/activities/py;->a:Landroid/widget/CheckBox;
iput-object p3, p0, Lcom/bbm/ui/activities/py;->b:Lcom/bbm/g/w;
iput-object p4, p0, Lcom/bbm/ui/activities/py;->c:Lcom/bbm/g/y;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/py; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "groupListItemCheck Clicked"
const-class v1, Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/py;->a:Landroid/widget/CheckBox;
invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/bbm/ui/activities/py;->d:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/py;->b:Lcom/bbm/g/w;
iget-object v1, v1, Lcom/bbm/g/w;->f:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/activities/py;->c:Lcom/bbm/g/y;
iget-object v2, v2, Lcom/bbm/g/y;->k:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;
move-result-object v1
sget-object v2, Lcom/bbm/g/by;->b:Lcom/bbm/g/by;
invoke-virtual {v1, v2}, Lcom/bbm/g/bw;->a(Lcom/bbm/g/by;)Lcom/bbm/g/bw;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
:goto_2a
const-string v1, " - Lcom/bbm/ui/activities/py; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2b
iget-object v0, p0, Lcom/bbm/ui/activities/py;->d:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/py;->b:Lcom/bbm/g/w;
iget-object v1, v1, Lcom/bbm/g/w;->f:Ljava/lang/String;
iget-object v2, p0, Lcom/bbm/ui/activities/py;->c:Lcom/bbm/g/y;
iget-object v2, v2, Lcom/bbm/g/y;->k:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/bbm/g/an;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/bw;
move-result-object v1
sget-object v2, Lcom/bbm/g/by;->a:Lcom/bbm/g/by;
invoke-virtual {v1, v2}, Lcom/bbm/g/bw;->a(Lcom/bbm/g/by;)Lcom/bbm/g/bw;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
goto :goto_2a
.end method