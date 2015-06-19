.class public final Lcom/google/android/youtube/player/internal/o;
.super Lcom/google/android/youtube/player/internal/r;
.implements Lcom/google/android/youtube/player/internal/b;
.field private final b:Ljava/lang/String;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private e:Z
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/youtube/player/internal/t$a;Lcom/google/android/youtube/player/internal/t$b;)V
.registers 8
invoke-direct {p0, p1, p5, p6}, Lcom/google/android/youtube/player/internal/r;-><init>(Landroid/content/Context;Lcom/google/android/youtube/player/internal/t$a;Lcom/google/android/youtube/player/internal/t$b;)V
const-string v0, "developerKey cannot be null"
invoke-static {p2, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lcom/google/android/youtube/player/internal/o;->b:Ljava/lang/String;
const-string v0, "callingPackage cannot be null or empty"
invoke-static {p3, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/youtube/player/internal/o;->c:Ljava/lang/String;
const-string v0, "callingAppVersion cannot be null or empty"
invoke-static {p4, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/youtube/player/internal/o;->d:Ljava/lang/String;
return-void
.end method
.method private final k()V
.registers 3
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/o;->i()V
iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/o;->e:Z
if-eqz v0, :cond_f
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Connection client has been released"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
return-void
.end method
.method public final a()Landroid/os/IBinder;
.registers 3
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/o;->k()V
:try_start_3
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/o;->j()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/youtube/player/internal/l;
invoke-interface {v0}, Lcom/google/android/youtube/player/internal/l;->a()Landroid/os/IBinder;
:try_end_c
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e
move-result-object v0
return-object v0
:catch_e
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method protected final bridge synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
.registers 3
invoke-static {p1}, Lcom/google/android/youtube/player/internal/l$a;->a(Landroid/os/IBinder;)Lcom/google/android/youtube/player/internal/l;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/google/android/youtube/player/internal/j;)Lcom/google/android/youtube/player/internal/k;
.registers 4
invoke-direct {p0}, Lcom/google/android/youtube/player/internal/o;->k()V
:try_start_3
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/o;->j()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/youtube/player/internal/l;
invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/l;->a(Lcom/google/android/youtube/player/internal/j;)Lcom/google/android/youtube/player/internal/k;
:try_end_c
.catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_c} :catch_e
move-result-object v0
return-object v0
:catch_e
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method protected final a(Lcom/google/android/youtube/player/internal/i;Lcom/google/android/youtube/player/internal/r$d;)V
.registers 10
const/16 v2, 0x3e8
iget-object v3, p0, Lcom/google/android/youtube/player/internal/o;->c:Ljava/lang/String;
iget-object v4, p0, Lcom/google/android/youtube/player/internal/o;->d:Ljava/lang/String;
iget-object v5, p0, Lcom/google/android/youtube/player/internal/o;->b:Ljava/lang/String;
const/4 v6, 0x0
move-object v0, p1
move-object v1, p2
invoke-interface/range {v0 .. v6}, Lcom/google/android/youtube/player/internal/i;->a(Lcom/google/android/youtube/player/internal/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
return-void
.end method
.method public final a(Z)V
.registers 3
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/o;->f()Z
move-result v0
if-eqz v0, :cond_12
:try_start_6
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/o;->j()Landroid/os/IInterface;
move-result-object v0
check-cast v0, Lcom/google/android/youtube/player/internal/l;
invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/l;->a(Z)V
:goto_f
:try_end_f
.catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_13
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/o;->e:Z
:cond_12
return-void
:catch_13
move-exception v0
goto :goto_f
.end method
.method protected final b()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.youtube.player.internal.IYouTubeService"
return-object v0
.end method
.method protected final c()Ljava/lang/String;
.registers 2
const-string v0, "com.google.android.youtube.api.service.START"
return-object v0
.end method
.method public final d()V
.registers 2
iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/o;->e:Z
if-nez v0, :cond_8
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/o;->a(Z)V
:cond_8
invoke-super {p0}, Lcom/google/android/youtube/player/internal/r;->d()V
return-void
.end method