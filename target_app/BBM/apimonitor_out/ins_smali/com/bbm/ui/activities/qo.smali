.class final Lcom/bbm/ui/activities/qo;
.super Lcom/bbm/j/u;
.source "GroupLobbyActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/qn;
.method constructor <init>(Lcom/bbm/ui/activities/qn;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/qo;->a:Lcom/bbm/ui/activities/qn;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/ui/activities/qo;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v1}, Lcom/bbm/ui/activities/qn;->a(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/am;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;
move-result-object v2
invoke-interface {v2}, Lcom/bbm/j/w;->b()Z
move-result v1
if-eqz v1, :cond_12
:goto_11
return v0
:cond_12
move v1, v0
:goto_13
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_58
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/q;
iget-object v0, v0, Lcom/bbm/g/q;->d:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/activities/qo;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v3}, Lcom/bbm/ui/activities/qn;->b(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/a;
move-result-object v3
iget-object v3, v3, Lcom/bbm/g/a;->v:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/bbm/ui/activities/qo;->a:Lcom/bbm/ui/activities/qn;
invoke-static {v0}, Lcom/bbm/ui/activities/qn;->a(Lcom/bbm/ui/activities/qn;)Lcom/bbm/g/am;
move-result-object v3
invoke-interface {v2}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/q;
iget-object v0, v0, Lcom/bbm/g/q;->k:Ljava/lang/String;
const-string v4, ""
invoke-virtual {v3, v0, v4}, Lcom/bbm/g/am;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_54
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_13
:cond_58
const/4 v0, 0x1
goto :goto_11
.end method