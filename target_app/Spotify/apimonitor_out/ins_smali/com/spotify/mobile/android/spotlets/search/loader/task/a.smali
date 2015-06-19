.class public abstract Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Z
.field private final b:Ljava/util/List;
.field private c:Lcom/google/common/base/Optional;
.field private d:Lcom/google/common/base/Optional;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->b:Ljava/util/List;
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->c:Lcom/google/common/base/Optional;
invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->d:Lcom/google/common/base/Optional;
return-void
.end method
.method private b(Lcom/spotify/mobile/android/spotlets/search/loader/task/b;)Z
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->c:Lcom/google/common/base/Optional;
invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z
move-result v1
if-eqz v1, :cond_13
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->c:Lcom/google/common/base/Optional;
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v1
invoke-interface {p1, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/b;->b(Ljava/lang/Object;)V
:goto_12
return v0
:cond_13
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->d:Lcom/google/common/base/Optional;
invoke-virtual {v1}, Lcom/google/common/base/Optional;->a()Z
move-result v1
if-eqz v1, :cond_25
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->d:Lcom/google/common/base/Optional;
invoke-virtual {v1}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v1
invoke-interface {p1, v1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/b;->a(Ljava/lang/Object;)V
goto :goto_12
:cond_25
const/4 v0, 0x0
goto :goto_12
.end method
.method private e()V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->c()Z
move-result v0
if-eqz v0, :cond_21
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Task "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " already completed!"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
return-void
.end method
.method private f()V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->a:Z
if-eqz v0, :cond_5
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/b;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->b(Lcom/spotify/mobile/android/spotlets/search/loader/task/b;)Z
move-result v0
if-eqz v0, :cond_4
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
goto :goto_b
.end method
.method public final a(Landroid/os/Handler;)Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/a;)V
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->b(Landroid/os/Handler;)Lcom/spotify/mobile/android/spotlets/search/loader/task/e;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/search/loader/task/f;Lcom/spotify/mobile/android/spotlets/search/loader/task/f;)Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;
invoke-direct {v0, p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/a;Lcom/spotify/mobile/android/spotlets/search/loader/task/f;Lcom/spotify/mobile/android/spotlets/search/loader/task/f;)V
return-object v0
.end method
.method protected abstract a()V
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/search/loader/task/b;)V
.registers 3
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->a:Z
if-eqz v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/b;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->b(Lcom/spotify/mobile/android/spotlets/search/loader/task/b;)Z
move-result v0
if-nez v0, :cond_4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_4
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->a:Z
return v0
.end method
.method protected final c(Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->e()V
invoke-static {p1}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->c:Lcom/google/common/base/Optional;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->f()V
return-void
.end method
.method public final c()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->c:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->d:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final d()V
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->a:Z
if-nez v0, :cond_15
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->c()Z
move-result v0
if-nez v0, :cond_15
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->a:Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->a()V
:cond_15
return-void
.end method
.method protected final d(Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->e()V
invoke-static {p1}, Lcom/google/common/base/Optional;->b(Ljava/lang/Object;)Lcom/google/common/base/Optional;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->d:Lcom/google/common/base/Optional;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->f()V
return-void
.end method