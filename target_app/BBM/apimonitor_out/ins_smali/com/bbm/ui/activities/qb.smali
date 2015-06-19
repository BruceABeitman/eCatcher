.class final Lcom/bbm/ui/activities/qb;
.super Ljava/lang/Object;
.source "GroupLobbyActivity.java"
.implements Lcom/bbm/ui/b/ab;
.field final synthetic a:Lcom/bbm/ui/activities/GroupLobbyActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/qb;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/qb;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/qb;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/qb;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/qb;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v2, v2, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
iget-object v0, v0, Lcom/bbm/g/a;->r:Ljava/lang/String;
invoke-static {v1, v2, v0}, Lcom/bbm/h/aq;->b(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method