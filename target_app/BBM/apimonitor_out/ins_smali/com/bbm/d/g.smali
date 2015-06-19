.class final Lcom/bbm/d/g;
.super Lcom/bbm/d/b/q;
.source "BbmdsModel.java"
.field final synthetic a:Lcom/bbm/d/a;
.method constructor <init>(Lcom/bbm/d/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/g;->a:Lcom/bbm/d/a;
invoke-direct {p0}, Lcom/bbm/d/b/q;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 7
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/d/g;->a:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->I()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v1
if-eqz v1, :cond_13
move-object v0, v3
:goto_12
return-object v0
:cond_13
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
const/4 v1, 0x0
move v2, v1
:goto_1b
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-ge v2, v1, :cond_38
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/fn;
iget-boolean v4, v1, Lcom/bbm/d/fn;->d:Z
if-eqz v4, :cond_34
iget-object v4, v1, Lcom/bbm/d/fn;->h:Lcom/bbm/d/fp;
sget-object v5, Lcom/bbm/d/fp;->b:Lcom/bbm/d/fp;
if-eq v4, v5, :cond_34
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_34
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_1b
:cond_38
new-instance v0, Lcom/bbm/d/h;
invoke-direct {v0, p0}, Lcom/bbm/d/h;-><init>(Lcom/bbm/d/g;)V
invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
move-object v0, v3
goto :goto_12
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Lcom/bbm/d/g;->a:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->I()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v0
return v0
.end method