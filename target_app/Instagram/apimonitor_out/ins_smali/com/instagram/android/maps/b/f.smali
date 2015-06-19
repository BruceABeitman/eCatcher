.class public final Lcom/instagram/android/maps/b/f;
.super Ljava/lang/Object;
.source "QuadtreeCluster.java"
.implements Ljava/lang/Comparable;
.field private a:Ljava/util/ArrayList;
.field private b:Lcom/instagram/android/maps/b/h;
.field private c:Lcom/instagram/android/maps/b/h;
.field private d:Lcom/instagram/android/maps/b/h;
.field private e:Z
.field private f:Z
.field private g:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;
return-void
.end method
.method private a(Lcom/instagram/android/maps/b/f;)I
.registers 4
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p1, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ne v0, v1, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p1, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ne v0, v1, :cond_20
const/4 v0, -0x1
goto :goto_f
:cond_20
const/4 v0, 0x1
goto :goto_f
.end method
.method public final a()V
.registers 3
iget-boolean v0, p0, Lcom/instagram/android/maps/b/f;->f:Z
if-nez v0, :cond_11
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;
new-instance v1, Lcom/instagram/android/maps/b/g;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/b/g;-><init>(Lcom/instagram/android/maps/b/f;)V
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/maps/b/f;->f:Z
:cond_11
return-void
.end method
.method public final a(Lcom/instagram/android/maps/b/h;)V
.registers 7
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;
if-nez v0, :cond_27
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;
:goto_f
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;
if-nez v0, :cond_4e
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;
:goto_19
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;
if-nez v0, :cond_75
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;
:goto_23
:cond_23
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/android/maps/b/f;->f:Z
return-void
:cond_27
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v1
iget-object v3, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;
invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v3
invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/b/h;->b(D)V
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v1
iget-object v3, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;
invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v3
invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/b/h;->c(D)V
goto :goto_f
:cond_4e
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v1
iget-object v3, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;
invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->c()D
move-result-wide v3
invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/b/h;->b(D)V
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v1
iget-object v3, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;
invoke-virtual {v3}, Lcom/instagram/android/maps/b/h;->f()D
move-result-wide v3
invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/instagram/android/maps/b/h;->c(D)V
goto :goto_19
:cond_75
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;
invoke-virtual {p1, v0}, Lcom/instagram/android/maps/b/h;->b(Lcom/instagram/android/maps/b/h;)I
move-result v0
if-lez v0, :cond_23
invoke-virtual {p1}, Lcom/instagram/android/maps/b/h;->b()Lcom/instagram/android/maps/b/h;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;
goto :goto_23
.end method
.method public final a(Ljava/util/List;)V
.registers 4
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/maps/b/h;
invoke-virtual {p0, v0}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/h;)V
goto :goto_4
:cond_14
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/maps/b/f;->e:Z
return-void
.end method
.method public final b()Lcom/instagram/android/maps/b/h;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;
return-object v0
.end method
.method public final c()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;
return-object v0
.end method
.method public final synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/instagram/android/maps/b/f;
invoke-direct {p0, p1}, Lcom/instagram/android/maps/b/f;->a(Lcom/instagram/android/maps/b/f;)I
move-result v0
return v0
.end method
.method public final d()Lcom/instagram/android/maps/b/h;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->b:Lcom/instagram/android/maps/b/h;
return-object v0
.end method
.method public final e()Lcom/instagram/android/maps/b/h;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->c:Lcom/instagram/android/maps/b/h;
return-object v0
.end method
.method public final f()Lcom/instagram/android/maps/b/h;
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->d:Lcom/instagram/android/maps/b/h;
return-object v0
.end method
.method public final g()Ljava/util/ArrayList;
.registers 4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/maps/b/h;
invoke-virtual {v0}, Lcom/instagram/android/maps/b/h;->g()Ljava/lang/Comparable;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_1f
return-object v1
.end method
.method public final h()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/maps/b/f;->e:Z
return v0
.end method
.method public final i()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/instagram/android/maps/b/f;->h()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;
if-nez v0, :cond_1c
invoke-virtual {p0}, Lcom/instagram/android/maps/b/f;->c()Ljava/util/ArrayList;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/h/b;->a(Ljava/util/ArrayList;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;
if-nez v0, :cond_1c
const-string v0, ""
iput-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;
:cond_1c
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_2a
const/4 v0, 0x0
:goto_29
return-object v0
:cond_2a
iget-object v0, p0, Lcom/instagram/android/maps/b/f;->g:Ljava/lang/String;
goto :goto_29
.end method