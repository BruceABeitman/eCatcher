.class public final Lcom/instagram/feed/d/e;
.super Ljava/lang/Object;
.source "CommentCollection.java"
.field private a:Ljava/util/Set;
.field private b:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/feed/d/e;->a:Ljava/util/Set;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
return-void
.end method
.method private a(Lcom/instagram/feed/d/b;Z)Z
.registers 5
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/instagram/feed/d/e;->a:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_e
const/4 v0, 0x0
:goto_d
return v0
:cond_e
iget-object v1, p0, Lcom/instagram/feed/d/e;->a:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
if-eqz p2, :cond_1f
iget-object v0, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
:cond_1f
const/4 v0, 0x1
goto :goto_d
.end method
.method public final a()I
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final a(Lcom/instagram/feed/d/b;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/instagram/feed/d/e;->a:Ljava/util/Set;
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/instagram/feed/d/e;->a:Ljava/util/Set;
invoke-virtual {p1}, Lcom/instagram/feed/d/b;->b()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
iput-object p2, p1, Lcom/instagram/feed/d/b;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/feed/d/e;->a:Ljava/util/Set;
invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
:cond_21
return-void
.end method
.method public final a(Lcom/instagram/feed/d/b;)Z
.registers 3
const/4 v0, 0x1
invoke-direct {p0, p1, v0}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;Z)Z
move-result v0
return v0
.end method
.method public final a(Lcom/instagram/feed/d/e;)Z
.registers 6
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/instagram/feed/d/e;->c()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v2
:goto_a
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1f
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
invoke-direct {p0, v0, v2}, Lcom/instagram/feed/d/e;->a(Lcom/instagram/feed/d/b;Z)Z
move-result v0
if-eqz v0, :cond_25
const/4 v0, 0x1
:goto_1d
move v1, v0
goto :goto_a
:cond_1f
iget-object v0, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
return v1
:cond_25
move v0, v1
goto :goto_1d
.end method
.method public final a(Ljava/lang/String;)Z
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/feed/d/e;->a:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_b
move v0, v1
:goto_a
return v0
:cond_b
iget-object v0, p0, Lcom/instagram/feed/d/e;->a:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_16
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
invoke-virtual {v0, p1}, Lcom/instagram/feed/d/b;->b(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_16
iget-object v1, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
move-result v0
goto :goto_a
:cond_2f
move v0, v1
goto :goto_a
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/e;->a:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method public final c()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
return-object v0
.end method
.method public final d()J
.registers 3
iget-object v0, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
iget-object v1, p0, Lcom/instagram/feed/d/e;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/b;
invoke-virtual {v0}, Lcom/instagram/feed/d/b;->c()J
move-result-wide v0
return-wide v0
.end method