.class final Lcom/bbm/ui/activities/qd;
.super Ljava/lang/Object;
.source "GroupLobbyActivity.java"
.implements Lcom/bbm/ui/b/ab;
.field final synthetic a:Lcom/bbm/ui/activities/GroupLobbyActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/qd;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
new-instance v0, Lcom/bbm/ui/activities/qt;
iget-object v1, p0, Lcom/bbm/ui/activities/qd;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/activities/qt;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;B)V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, v1, Lcom/bbm/g/ao;->a:Lcom/bbm/d/a/f;
iget-object v1, v1, Lcom/bbm/d/a/f;->a:Lcom/bbm/f/a;
invoke-interface {v1, v0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v1, p0, Lcom/bbm/ui/activities/qd;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/g/an;->e(Ljava/lang/String;)Lcom/bbm/g/cn;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V
return-void
.end method