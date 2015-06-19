.class final Lcom/bbm/ui/a/v;
.super Lcom/bbm/j/a;
.source "GroupMessageListAdapter.java"
.field final synthetic a:Lcom/bbm/ui/a/y;
.field final synthetic d:Lcom/bbm/ui/a/s;
.method constructor <init>(Lcom/bbm/ui/a/s;Lcom/bbm/ui/a/y;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/a/v;->d:Lcom/bbm/ui/a/s;
iput-object p2, p0, Lcom/bbm/ui/a/v;->a:Lcom/bbm/ui/a/y;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 8
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/a/v;->a:Lcom/bbm/ui/a/y;
iget-object v0, v0, Lcom/bbm/ui/a/y;->h:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/a/v;->d:Lcom/bbm/ui/a/s;
invoke-static {v3}, Lcom/bbm/ui/a/s;->f(Lcom/bbm/ui/a/s;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lcom/bbm/g/am;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/ad;
move-result-object v2
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v3, v2, Lcom/bbm/g/ad;->d:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v5
invoke-static {v5}, Lcom/bbm/d/b/a;->a(Lcom/bbm/g/o;)Lcom/google/b/a/l;
move-result-object v6
iget-object v0, p0, Lcom/bbm/ui/a/v;->d:Lcom/bbm/ui/a/s;
invoke-static {v0}, Lcom/bbm/ui/a/s;->a(Lcom/bbm/ui/a/s;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v4
iget-object v0, p0, Lcom/bbm/ui/a/v;->a:Lcom/bbm/ui/a/y;
iget v0, v0, Lcom/bbm/ui/a/y;->f:I
if-lez v0, :cond_9d
iget-object v0, p0, Lcom/bbm/ui/a/v;->d:Lcom/bbm/ui/a/s;
invoke-static {v0}, Lcom/bbm/ui/a/s;->a(Lcom/bbm/ui/a/s;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_9d
iget-object v0, p0, Lcom/bbm/ui/a/v;->a:Lcom/bbm/ui/a/y;
iget v0, v0, Lcom/bbm/ui/a/y;->f:I
if-le v4, v0, :cond_9d
iget-object v0, p0, Lcom/bbm/ui/a/v;->d:Lcom/bbm/ui/a/s;
invoke-static {v0}, Lcom/bbm/ui/a/s;->a(Lcom/bbm/ui/a/s;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v3, p0, Lcom/bbm/ui/a/v;->a:Lcom/bbm/ui/a/y;
iget v3, v3, Lcom/bbm/ui/a/y;->f:I
add-int/lit8 v3, v3, -0x1
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/ad;
iget-object v3, p0, Lcom/bbm/ui/a/v;->d:Lcom/bbm/ui/a/s;
invoke-static {v2, v0}, Lcom/bbm/ui/a/s;->a(Lcom/bbm/g/ad;Lcom/bbm/g/ad;)Z
move-result v3
:goto_6d
iget-object v0, p0, Lcom/bbm/ui/a/v;->a:Lcom/bbm/ui/a/y;
iget v0, v0, Lcom/bbm/ui/a/y;->f:I
add-int/lit8 v4, v4, -0x1
if-ge v0, v4, :cond_9b
iget-object v0, p0, Lcom/bbm/ui/a/v;->d:Lcom/bbm/ui/a/s;
invoke-static {v0}, Lcom/bbm/ui/a/s;->a(Lcom/bbm/ui/a/s;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
iget-object v1, p0, Lcom/bbm/ui/a/v;->a:Lcom/bbm/ui/a/y;
iget v1, v1, Lcom/bbm/ui/a/y;->f:I
add-int/lit8 v1, v1, 0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/ad;
iget-object v1, p0, Lcom/bbm/ui/a/v;->d:Lcom/bbm/ui/a/s;
invoke-static {v2, v0}, Lcom/bbm/ui/a/s;->a(Lcom/bbm/g/ad;Lcom/bbm/g/ad;)Z
move-result v4
:goto_93
new-instance v0, Lcom/bbm/ui/a/x;
iget-object v1, p0, Lcom/bbm/ui/a/v;->d:Lcom/bbm/ui/a/s;
invoke-direct/range {v0 .. v6}, Lcom/bbm/ui/a/x;-><init>(Lcom/bbm/ui/a/s;Lcom/bbm/g/ad;ZZLcom/bbm/g/o;Lcom/google/b/a/l;)V
return-object v0
:cond_9b
move v4, v1
goto :goto_93
:cond_9d
move v3, v1
goto :goto_6d
.end method