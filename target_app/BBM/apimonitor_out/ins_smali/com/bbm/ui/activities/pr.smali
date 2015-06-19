.class final Lcom/bbm/ui/activities/pr;
.super Lcom/bbm/j/k;
.source "GroupLobbyActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupLobbyActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/pr;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/pr;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v1, v0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;
iget-object v2, v0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v1
iget-boolean v1, v1, Lcom/bbm/g/a;->a:Z
if-nez v1, :cond_2d
iget-object v1, v0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;
iget-object v2, v0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v1
iget-boolean v1, v1, Lcom/bbm/g/a;->j:Z
if-nez v1, :cond_2d
iput-boolean v3, v0, Lcom/bbm/ui/activities/GroupLobbyActivity;->d:Z
iget-object v0, v0, Lcom/bbm/ui/activities/GroupLobbyActivity;->b:Lcom/bbm/ui/FooterActionBar;
const/4 v1, 0x4
invoke-virtual {v0, v3, v1}, Lcom/bbm/ui/FooterActionBar;->setActionVisibility(II)V
:goto_23
iget-object v0, p0, Lcom/bbm/ui/activities/pr;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/pr;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-static {v0, v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;Lcom/bbm/ui/c/fm;)V
return-void
:cond_2d
const/4 v1, 0x1
iput-boolean v1, v0, Lcom/bbm/ui/activities/GroupLobbyActivity;->d:Z
iget-object v0, v0, Lcom/bbm/ui/activities/GroupLobbyActivity;->b:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v3, v3}, Lcom/bbm/ui/FooterActionBar;->setActionVisibility(II)V
goto :goto_23
.end method