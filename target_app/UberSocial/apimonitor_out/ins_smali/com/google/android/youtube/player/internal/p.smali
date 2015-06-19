.class public final Lcom/google/android/youtube/player/internal/p;
.super Lcom/google/android/youtube/player/internal/a;
.field private final a:Landroid/os/Handler;
.field private b:Lcom/google/android/youtube/player/internal/b;
.field private c:Lcom/google/android/youtube/player/internal/k;
.field private d:Z
.field private e:Z
.method public constructor <init>(Lcom/google/android/youtube/player/internal/b;Lcom/google/android/youtube/player/YouTubeThumbnailView;)V
.registers 5
invoke-direct {p0, p2}, Lcom/google/android/youtube/player/internal/a;-><init>(Lcom/google/android/youtube/player/YouTubeThumbnailView;)V
const-string v0, "connectionClient cannot be null"
invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/youtube/player/internal/b;
iput-object v0, p0, Lcom/google/android/youtube/player/internal/p;->b:Lcom/google/android/youtube/player/internal/b;
new-instance v0, Lcom/google/android/youtube/player/internal/p$a;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/player/internal/p$a;-><init>(Lcom/google/android/youtube/player/internal/p;B)V
invoke-interface {p1, v0}, Lcom/google/android/youtube/player/internal/b;->a(Lcom/google/android/youtube/player/internal/j;)Lcom/google/android/youtube/player/internal/k;
move-result-object v0
iput-object v0, p0, Lcom/google/android/youtube/player/internal/p;->c:Lcom/google/android/youtube/player/internal/k;
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/google/android/youtube/player/internal/p;->a:Landroid/os/Handler;
return-void
.end method
.method static synthetic a(Lcom/google/android/youtube/player/internal/p;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/internal/p;->a:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic a(Lcom/google/android/youtube/player/internal/p;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/google/android/youtube/player/internal/p;->d:Z
return p1
.end method
.method static synthetic b(Lcom/google/android/youtube/player/internal/p;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/google/android/youtube/player/internal/p;->e:Z
return p1
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/youtube/player/internal/p;->c:Lcom/google/android/youtube/player/internal/k;
invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/k;->a(Ljava/lang/String;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final a(Ljava/lang/String;I)V
.registers 5
:try_start_0
iget-object v0, p0, Lcom/google/android/youtube/player/internal/p;->c:Lcom/google/android/youtube/player/internal/k;
invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/player/internal/k;->a(Ljava/lang/String;I)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method protected final a()Z
.registers 2
invoke-super {p0}, Lcom/google/android/youtube/player/internal/a;->a()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/youtube/player/internal/p;->c:Lcom/google/android/youtube/player/internal/k;
if-eqz v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final b()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/youtube/player/internal/p;->c:Lcom/google/android/youtube/player/internal/k;
invoke-interface {v0}, Lcom/google/android/youtube/player/internal/k;->a()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final c()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/youtube/player/internal/p;->c:Lcom/google/android/youtube/player/internal/k;
invoke-interface {v0}, Lcom/google/android/youtube/player/internal/k;->b()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final d()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/youtube/player/internal/p;->c:Lcom/google/android/youtube/player/internal/k;
invoke-interface {v0}, Lcom/google/android/youtube/player/internal/k;->c()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/p;->e:Z
return v0
.end method
.method public final f()Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/p;->d:Z
return v0
.end method
.method public final g()V
.registers 3
const/4 v1, 0x0
:try_start_1
iget-object v0, p0, Lcom/google/android/youtube/player/internal/p;->c:Lcom/google/android/youtube/player/internal/k;
invoke-interface {v0}, Lcom/google/android/youtube/player/internal/k;->d()V
:goto_6
:try_end_6
.catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_10
iget-object v0, p0, Lcom/google/android/youtube/player/internal/p;->b:Lcom/google/android/youtube/player/internal/b;
invoke-interface {v0}, Lcom/google/android/youtube/player/internal/b;->d()V
iput-object v1, p0, Lcom/google/android/youtube/player/internal/p;->c:Lcom/google/android/youtube/player/internal/k;
iput-object v1, p0, Lcom/google/android/youtube/player/internal/p;->b:Lcom/google/android/youtube/player/internal/b;
return-void
:catch_10
move-exception v0
goto :goto_6
.end method