.class final Lcom/bbm/ui/activities/qe;
.super Lcom/bbm/j/u;
.source "GroupLobbyActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupLobbyActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/qe;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 8
const/4 v4, 0x1
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/ui/activities/qe;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/g/am;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;
move-result-object v5
invoke-interface {v5}, Lcom/bbm/j/w;->b()Z
move-result v1
if-eqz v1, :cond_13
:goto_12
return v0
:cond_13
const/4 v1, 0x0
move v3, v0
move v2, v0
:goto_16
invoke-interface {v5}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v3, v0, :cond_52
invoke-interface {v5}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/q;
iget-object v0, v0, Lcom/bbm/g/q;->d:Ljava/lang/String;
iget-object v6, p0, Lcom/bbm/ui/activities/qe;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v6, v6, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_94
add-int/lit8 v1, v2, 0x1
invoke-interface {v5}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/q;
iget-object v0, v0, Lcom/bbm/g/q;->k:Ljava/lang/String;
if-gt v1, v4, :cond_54
:goto_4c
add-int/lit8 v2, v3, 0x1
move v3, v2
move v2, v1
move-object v1, v0
goto :goto_16
:cond_52
move-object v0, v1
move v1, v2
:cond_54
if-le v1, v4, :cond_6f
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/qe;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
const-class v2, Lcom/bbm/ui/activities/GroupChatListActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "groupUri"
iget-object v2, p0, Lcom/bbm/ui/activities/qe;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/qe;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->startActivity(Landroid/content/Intent;)V
:goto_6d
:cond_6d
move v0, v4
goto :goto_12
:cond_6f
if-eqz v0, :cond_6d
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_6d
new-instance v1, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/activities/qe;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
const-class v3, Lcom/bbm/ui/activities/GroupConversationActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "groupConversationUri"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v0, "groupUri"
iget-object v2, p0, Lcom/bbm/ui/activities/qe;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/qe;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_6d
:cond_94
move-object v0, v1
move v1, v2
goto :goto_4c
.end method