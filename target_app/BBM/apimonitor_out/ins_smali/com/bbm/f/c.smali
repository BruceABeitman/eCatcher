.class public final Lcom/bbm/f/c;
.super Ljava/lang/Object;
.source "DelegatingBroker.java"
.implements Lcom/bbm/f/a;
.field  a:Lcom/google/b/a/l;
.field final b:Lcom/bbm/f/aa;
.field private c:Ljava/util/List;
.field private final d:Lcom/bbm/j/a;
.field private final e:Lcom/bbm/f/ac;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/f/c;->c:Ljava/util/List;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
new-instance v0, Lcom/bbm/f/aa;
invoke-direct {v0}, Lcom/bbm/f/aa;-><init>()V
iput-object v0, p0, Lcom/bbm/f/c;->b:Lcom/bbm/f/aa;
new-instance v0, Lcom/bbm/f/d;
invoke-direct {v0, p0}, Lcom/bbm/f/d;-><init>(Lcom/bbm/f/c;)V
iput-object v0, p0, Lcom/bbm/f/c;->d:Lcom/bbm/j/a;
new-instance v0, Lcom/bbm/f/e;
invoke-direct {v0, p0}, Lcom/bbm/f/e;-><init>(Lcom/bbm/f/c;)V
iput-object v0, p0, Lcom/bbm/f/c;->e:Lcom/bbm/f/ac;
return-void
.end method
.method public final a()Lcom/bbm/f/b;
.registers 2
iget-object v0, p0, Lcom/bbm/f/c;->d:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/b;
return-object v0
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 3
iget-object v0, p0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/a;
invoke-interface {v0, p1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ab;)V
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/bbm/f/c;->c:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_13
.end method
.method public final a(Lcom/bbm/f/ac;)V
.registers 3
iget-object v0, p0, Lcom/bbm/f/c;->b:Lcom/bbm/f/aa;
invoke-virtual {v0, p1}, Lcom/bbm/f/aa;->a(Lcom/bbm/f/ac;)V
return-void
.end method
.method public final a(Lcom/google/b/a/l;)V
.registers 6
iget-object v0, p0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
invoke-static {p1, v0}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
:cond_8
:goto_8
return-void
:cond_9
iget-object v2, p0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/a;
iget-object v1, p0, Lcom/bbm/f/c;->e:Lcom/bbm/f/ac;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->b(Lcom/bbm/f/ac;)V
:cond_20
iput-object p1, p0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_5a
iget-object v0, p0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/a;
iget-object v1, p0, Lcom/bbm/f/c;->e:Lcom/bbm/f/ac;
invoke-interface {v0, v1}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
iget-object v0, p0, Lcom/bbm/f/c;->c:Ljava/util/List;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iput-object v1, p0, Lcom/bbm/f/c;->c:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_44
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/ab;
invoke-virtual {p1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/f/a;
invoke-interface {v1, v0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ab;)V
goto :goto_44
:cond_5a
iget-object v0, p0, Lcom/bbm/f/c;->d:Lcom/bbm/j/a;
invoke-virtual {v0}, Lcom/bbm/j/a;->c()V
invoke-virtual {v2}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/bbm/f/c;->b:Lcom/bbm/f/aa;
invoke-virtual {v0}, Lcom/bbm/f/aa;->a()V
goto :goto_8
.end method
.method public final b(Lcom/bbm/f/ac;)V
.registers 3
iget-object v0, p0, Lcom/bbm/f/c;->b:Lcom/bbm/f/aa;
invoke-virtual {v0, p1}, Lcom/bbm/f/aa;->b(Lcom/bbm/f/ac;)V
return-void
.end method