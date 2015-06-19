.class final Lcom/bbm/ui/activities/sx;
.super Lcom/bbm/j/a;
.source "GroupProfileActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/GroupProfileActivity;
.method constructor <init>(Lcom/bbm/ui/activities/GroupProfileActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/sx;->a:Lcom/bbm/ui/activities/GroupProfileActivity;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/sx;->a:Lcom/bbm/ui/activities/GroupProfileActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->a(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/g/am;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/sx;->a:Lcom/bbm/ui/activities/GroupProfileActivity;
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