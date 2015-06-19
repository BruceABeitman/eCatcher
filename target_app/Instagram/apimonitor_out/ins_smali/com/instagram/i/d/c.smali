.class public final Lcom/instagram/i/d/c;
.super Ljava/lang/Object;
.source "NewsfeedStory.java"
.field  a:I
.field  b:Lcom/instagram/i/d/d;
.field private c:Lcom/instagram/i/d/g;
.field private d:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private m()Lcom/instagram/i/d/f;
.registers 4
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
if-eqz v1, :cond_b
iget-object v1, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v1, v1, Lcom/instagram/i/d/d;->e:Ljava/util/List;
if-nez v1, :cond_c
:goto_b
:cond_b
return-object v0
:cond_c
iget-object v1, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v1, v1, Lcom/instagram/i/d/d;->e:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v2
if-nez v2, :cond_b
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/i/d/f;
goto :goto_b
.end method
.method private n()J
.registers 3
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-wide v0, v0, Lcom/instagram/i/d/d;->f:J
:goto_8
return-wide v0
:cond_9
const-wide/16 v0, 0x0
goto :goto_8
.end method
.method public final a()Lcom/instagram/i/d/g;
.registers 2
iget-object v0, p0, Lcom/instagram/i/d/c;->c:Lcom/instagram/i/d/g;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/instagram/i/d/c;->d:Ljava/lang/String;
if-nez v0, :cond_f
invoke-direct {p0}, Lcom/instagram/i/d/c;->n()J
move-result-wide v0
long-to-double v0, v0
invoke-static {p1, v0, v1}, Lcom/instagram/n/g/a;->a(Landroid/content/Context;D)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/i/d/c;->d:Ljava/lang/String;
:cond_f
iget-object v0, p0, Lcom/instagram/i/d/c;->d:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v0, v0, Lcom/instagram/i/d/d;->a:Ljava/lang/String;
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v0, v0, Lcom/instagram/i/d/d;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/instagram/common/u/e;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v0, v0, Lcom/instagram/i/d/d;->c:Ljava/lang/String;
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v0, v0, Lcom/instagram/i/d/d;->d:Ljava/lang/String;
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public final f()Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/i/d/c;->m()Lcom/instagram/i/d/f;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Lcom/instagram/i/d/f;->a()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final g()Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lcom/instagram/i/d/c;->m()Lcom/instagram/i/d/f;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Lcom/instagram/i/d/f;->b()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final h()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v0, v0, Lcom/instagram/i/d/d;->e:Ljava/util/List;
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public final i()Lcom/instagram/user/c/a;
.registers 2
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v0, v0, Lcom/instagram/i/d/d;->g:Lcom/instagram/i/d/e;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v0, v0, Lcom/instagram/i/d/d;->g:Lcom/instagram/i/d/e;
iget-object v0, v0, Lcom/instagram/i/d/e;->a:Lcom/instagram/user/c/a;
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public final j()I
.registers 2
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget v0, v0, Lcom/instagram/i/d/d;->h:I
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public final k()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v0, v0, Lcom/instagram/i/d/d;->i:Ljava/util/List;
:goto_8
return-object v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method final l()Lcom/instagram/i/d/c;
.registers 6
invoke-static {}, Lcom/instagram/i/d/g;->a()Landroid/util/SparseArray;
move-result-object v0
iget v1, p0, Lcom/instagram/i/d/c;->a:I
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/i/d/g;
iput-object v0, p0, Lcom/instagram/i/d/c;->c:Lcom/instagram/i/d/g;
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v0, v0, Lcom/instagram/i/d/d;->g:Lcom/instagram/i/d/e;
if-eqz v0, :cond_43
iget-object v0, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v0, v0, Lcom/instagram/i/d/d;->g:Lcom/instagram/i/d/e;
iget-object v0, v0, Lcom/instagram/i/d/e;->a:Lcom/instagram/user/c/a;
if-eqz v0, :cond_43
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
invoke-static {}, Lcom/instagram/service/a/a;->d()Z
move-result v0
if-eqz v0, :cond_43
invoke-static {}, Lcom/instagram/user/follow/l;->a()Lcom/instagram/user/follow/l;
move-result-object v0
iget-object v1, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v1, v1, Lcom/instagram/i/d/d;->g:Lcom/instagram/i/d/e;
iget-object v1, v1, Lcom/instagram/i/d/e;->a:Lcom/instagram/user/c/a;
iget-object v2, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v2, v2, Lcom/instagram/i/d/d;->g:Lcom/instagram/i/d/e;
iget-boolean v2, v2, Lcom/instagram/i/d/e;->b:Z
iget-object v3, p0, Lcom/instagram/i/d/c;->b:Lcom/instagram/i/d/d;
iget-object v3, v3, Lcom/instagram/i/d/d;->g:Lcom/instagram/i/d/e;
iget-boolean v3, v3, Lcom/instagram/i/d/e;->c:Z
const/4 v4, 0x0
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/instagram/user/follow/l;->a(Lcom/instagram/user/c/a;ZZLcom/instagram/api/j/b;)V
:cond_43
return-object p0
.end method