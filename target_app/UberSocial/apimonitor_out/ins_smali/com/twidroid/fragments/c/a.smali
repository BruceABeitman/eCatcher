.class public Lcom/twidroid/fragments/c/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Lcom/twidroid/fragments/e/h;
.field private b:Lcom/ubermedia/a/g;
.field private c:Lcom/ubermedia/a/g;
.field private d:Lcom/ubermedia/a/g;
.field private e:Lcom/twidroid/fragments/c/b;
.field private f:J
.field private g:J
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/twidroid/fragments/e/h;->c:Lcom/twidroid/fragments/e/h;
iput-object v0, p0, Lcom/twidroid/fragments/c/a;->a:Lcom/twidroid/fragments/e/h;
return-void
.end method
.method public constructor <init>(Lcom/twidroid/fragments/c/b;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/twidroid/fragments/e/h;->c:Lcom/twidroid/fragments/e/h;
iput-object v0, p0, Lcom/twidroid/fragments/c/a;->a:Lcom/twidroid/fragments/e/h;
iput-object p1, p0, Lcom/twidroid/fragments/c/a;->e:Lcom/twidroid/fragments/c/b;
return-void
.end method
.method public a()Lcom/ubermedia/a/g;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->b:Lcom/ubermedia/a/g;
return-object v0
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/twidroid/fragments/c/a;->f:J
return-void
.end method
.method public a(Lcom/twidroid/fragments/e/h;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/c/a;->a:Lcom/twidroid/fragments/e/h;
return-void
.end method
.method public a(Lcom/ubermedia/a/g;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/c/a;->b:Lcom/ubermedia/a/g;
return-void
.end method
.method public a(Lcom/ubermedia/a/g;Z)V
.registers 5
if-eqz p2, :cond_25
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->e:Lcom/twidroid/fragments/c/b;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->e:Lcom/twidroid/fragments/c/b;
invoke-virtual {v0, p1}, Lcom/twidroid/fragments/c/b;->a(Lcom/ubermedia/a/g;)Lcom/ubermedia/a/g;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/c/a;->b:Lcom/ubermedia/a/g;
:goto_e
iget-object v0, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_24
add-int/lit8 v1, v1, -0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;
iget-wide v0, v0, Lcom/twidroid/model/twitter/DirectMessage;->x:J
iput-wide v0, p0, Lcom/twidroid/fragments/c/a;->g:J
:cond_24
return-void
:cond_25
iput-object p1, p0, Lcom/twidroid/fragments/c/a;->b:Lcom/ubermedia/a/g;
goto :goto_e
.end method
.method public b()Lcom/ubermedia/a/g;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->c:Lcom/ubermedia/a/g;
return-object v0
.end method
.method public b(J)V
.registers 3
iput-wide p1, p0, Lcom/twidroid/fragments/c/a;->g:J
return-void
.end method
.method public b(Lcom/ubermedia/a/g;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/c/a;->c:Lcom/ubermedia/a/g;
return-void
.end method
.method public b(Lcom/ubermedia/a/g;Z)V
.registers 5
if-eqz p2, :cond_25
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->e:Lcom/twidroid/fragments/c/b;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->e:Lcom/twidroid/fragments/c/b;
invoke-virtual {v0, p1}, Lcom/twidroid/fragments/c/b;->b(Lcom/ubermedia/a/g;)Lcom/ubermedia/a/g;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/c/a;->c:Lcom/ubermedia/a/g;
:goto_e
iget-object v0, p1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_24
add-int/lit8 v1, v1, -0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
iget-wide v0, v0, Lcom/twidroid/model/twitter/Tweet;->x:J
iput-wide v0, p0, Lcom/twidroid/fragments/c/a;->f:J
:cond_24
return-void
:cond_25
iput-object p1, p0, Lcom/twidroid/fragments/c/a;->c:Lcom/ubermedia/a/g;
goto :goto_e
.end method
.method public c()Lcom/ubermedia/a/g;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->d:Lcom/ubermedia/a/g;
return-object v0
.end method
.method public c(Lcom/ubermedia/a/g;Z)V
.registers 4
if-eqz p2, :cond_f
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->e:Lcom/twidroid/fragments/c/b;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->e:Lcom/twidroid/fragments/c/b;
invoke-virtual {v0, p1}, Lcom/twidroid/fragments/c/b;->c(Lcom/ubermedia/a/g;)Lcom/ubermedia/a/g;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/c/a;->d:Lcom/ubermedia/a/g;
:goto_e
return-void
:cond_f
iput-object p1, p0, Lcom/twidroid/fragments/c/a;->d:Lcom/ubermedia/a/g;
goto :goto_e
.end method
.method public d()Ljava/util/List;
.registers 6
invoke-virtual {p0}, Lcom/twidroid/fragments/c/a;->a()Lcom/ubermedia/a/g;
move-result-object v0
invoke-virtual {v0}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_4e
invoke-virtual {p0}, Lcom/twidroid/fragments/c/a;->b()Lcom/ubermedia/a/g;
move-result-object v0
invoke-virtual {v0}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_4e
invoke-virtual {p0}, Lcom/twidroid/fragments/c/a;->a()Lcom/ubermedia/a/g;
move-result-object v0
iget-object v0, v0, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-virtual {p0}, Lcom/twidroid/fragments/c/a;->b()Lcom/ubermedia/a/g;
move-result-object v1
iget-object v1, v1, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v1, Ljava/util/List;
new-instance v2, Ljava/util/ArrayList;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v4
add-int/2addr v3, v4
invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-virtual {p0}, Lcom/twidroid/fragments/c/a;->c()Lcom/ubermedia/a/g;
move-result-object v0
invoke-virtual {v0}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_4d
invoke-virtual {p0}, Lcom/twidroid/fragments/c/a;->c()Lcom/ubermedia/a/g;
move-result-object v0
iget-object v0, v0, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_4d
return-object v2
:cond_4e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Check for success first"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public e()Lcom/twidroid/fragments/e/h;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->a:Lcom/twidroid/fragments/e/h;
return-object v0
.end method
.method public f()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/fragments/c/a;->f:J
return-wide v0
.end method
.method public g()J
.registers 3
iget-wide v0, p0, Lcom/twidroid/fragments/c/a;->g:J
return-wide v0
.end method
.method public h()Z
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/twidroid/fragments/c/a;->j()Z
move-result v3
invoke-virtual {p0}, Lcom/twidroid/fragments/c/a;->i()Z
move-result v4
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->d:Lcom/ubermedia/a/g;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->d:Lcom/ubermedia/a/g;
invoke-virtual {v0}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->d:Lcom/ubermedia/a/g;
iget-object v0, v0, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_2b
move v0, v2
:goto_23
if-nez v3, :cond_29
if-nez v4, :cond_29
if-eqz v0, :cond_2d
:cond_29
move v0, v2
:goto_2a
return v0
:cond_2b
move v0, v1
goto :goto_23
:cond_2d
move v0, v1
goto :goto_2a
.end method
.method public i()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->b:Lcom/ubermedia/a/g;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->b:Lcom/ubermedia/a/g;
invoke-virtual {v0}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->b:Lcom/ubermedia/a/g;
iget-object v0, v0, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method public j()Z
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->c:Lcom/ubermedia/a/g;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->c:Lcom/ubermedia/a/g;
invoke-virtual {v0}, Lcom/ubermedia/a/g;->a()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/twidroid/fragments/c/a;->c:Lcom/ubermedia/a/g;
iget-object v0, v0, Lcom/ubermedia/a/g;->b:Ljava/lang/Object;
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method