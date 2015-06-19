.class public final Lcom/instagram/creation/b/a/g;
.super Ljava/lang/Object;
.source "PendingRecipientCollection.java"
.field private a:Ljava/util/List;
.field private b:Lcom/instagram/creation/b/a/h;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;
return-void
.end method
.method public final a()I
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final a(Lcom/instagram/creation/b/a/f;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_16
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;
invoke-interface {v0}, Lcom/instagram/creation/b/a/h;->b()V
:cond_16
return-void
.end method
.method public final a(Lcom/instagram/creation/b/a/h;)V
.registers 2
iput-object p1, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;
return-void
.end method
.method public final a(Ljava/util/List;)V
.registers 3
iput-object p1, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;
invoke-interface {v0}, Lcom/instagram/creation/b/a/h;->b()V
:cond_b
return-void
.end method
.method public final a(Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/b/a/f;
if-eqz p1, :cond_6
invoke-virtual {v0}, Lcom/instagram/creation/b/a/f;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method
.method public final b(Lcom/instagram/creation/b/a/f;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->b:Lcom/instagram/creation/b/a/h;
invoke-interface {v0}, Lcom/instagram/creation/b/a/h;->b()V
:cond_11
return-void
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
return v0
.end method
.method public final c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/b/a/g;->a:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method