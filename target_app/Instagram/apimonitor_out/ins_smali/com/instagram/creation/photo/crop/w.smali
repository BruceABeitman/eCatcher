.class public abstract Lcom/instagram/creation/photo/crop/w;
.super Lcom/instagram/base/a/b;
.source "MonitoredFragment.java"
.field private final a:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/photo/crop/w;->a:Ljava/util/ArrayList;
return-void
.end method
.method public final G()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->G()V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/photo/crop/y;
invoke-interface {v0}, Lcom/instagram/creation/photo/crop/y;->a()V
goto :goto_9
:cond_19
return-void
.end method
.method public a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_9
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_13
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
goto :goto_9
:cond_13
return-void
.end method
.method public final a(Lcom/instagram/creation/photo/crop/y;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/photo/crop/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/instagram/creation/photo/crop/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_8
.end method
.method public final b(Lcom/instagram/creation/photo/crop/y;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/photo/crop/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final j_()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->j_()V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/photo/crop/y;
invoke-interface {v0}, Lcom/instagram/creation/photo/crop/y;->c()V
goto :goto_9
:cond_19
return-void
.end method
.method public final k_()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->k_()V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/photo/crop/y;
invoke-interface {v0}, Lcom/instagram/creation/photo/crop/y;->b()V
goto :goto_9
:cond_19
return-void
.end method