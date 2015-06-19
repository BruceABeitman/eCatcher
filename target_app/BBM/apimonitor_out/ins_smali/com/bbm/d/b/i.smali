.class public final Lcom/bbm/d/b/i;
.super Lcom/bbm/d/a/a/a;
.source "ConcatenatedList.java"
.implements Lcom/bbm/j/j;
.implements Lcom/bbm/j/r;
.field final a:Lcom/bbm/j/r;
.field  b:Lcom/bbm/j/a;
.field private final d:Lcom/bbm/j/h;
.method public constructor <init>(Lcom/bbm/j/r;)V
.registers 4
invoke-direct {p0}, Lcom/bbm/d/a/a/a;-><init>()V
new-instance v0, Lcom/bbm/d/b/j;
invoke-direct {v0, p0}, Lcom/bbm/d/b/j;-><init>(Lcom/bbm/d/b/i;)V
iput-object v0, p0, Lcom/bbm/d/b/i;->b:Lcom/bbm/j/a;
new-instance v0, Lcom/bbm/d/b/k;
invoke-direct {v0, p0}, Lcom/bbm/d/b/k;-><init>(Lcom/bbm/d/b/i;)V
iput-object v0, p0, Lcom/bbm/d/b/i;->d:Lcom/bbm/j/h;
iput-object p1, p0, Lcom/bbm/d/b/i;->a:Lcom/bbm/j/r;
iget-object v0, p0, Lcom/bbm/d/b/i;->b:Lcom/bbm/j/a;
iget-object v1, p0, Lcom/bbm/d/b/i;->d:Lcom/bbm/j/h;
invoke-virtual {v0, v1}, Lcom/bbm/j/a;->a(Lcom/bbm/j/h;)V
return-void
.end method
.method public final a(I)Ljava/lang/Object;
.registers 3
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/b/i;->b:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final d()I
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/b/i;->b:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final synthetic e()Ljava/lang/Object;
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/b/i;->b:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method