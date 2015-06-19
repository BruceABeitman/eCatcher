.class final Lcom/bbm/ui/activities/pl;
.super Lcom/bbm/j/a;
.source "GroupLobbyActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupLobbyActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/pl;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/pl;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/pl;->a:Lcom/bbm/ui/activities/GroupLobbyActivity;
iget-object v1, v1, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method