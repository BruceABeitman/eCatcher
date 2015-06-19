.class final Lcom/google/android/youtube/player/internal/g$a$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/youtube/player/internal/g;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/youtube/player/internal/g$a$a;->a:Landroid/os/IBinder;
return-void
.end method
.method public final a()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.youtube.player.internal.IPlayerStateChangeListener"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/internal/g$a$a;->a:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_1e
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1e
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.youtube.player.internal.IPlayerStateChangeListener"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/internal/g$a$a;->a:Landroid/os/IBinder;
const/4 v3, 0x2
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1a
.catchall {:try_start_8 .. :try_end_1a} :catchall_21
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_21
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/internal/g$a$a;->a:Landroid/os/IBinder;
return-object v0
.end method
.method public final b()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.youtube.player.internal.IPlayerStateChangeListener"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/internal/g$a$a;->a:Landroid/os/IBinder;
const/4 v3, 0x3
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_1e
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1e
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final b(Ljava/lang/String;)V
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.youtube.player.internal.IPlayerStateChangeListener"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/internal/g$a$a;->a:Landroid/os/IBinder;
const/4 v3, 0x6
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_1a
.catchall {:try_start_8 .. :try_end_1a} :catchall_21
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_21
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final c()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.youtube.player.internal.IPlayerStateChangeListener"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/internal/g$a$a;->a:Landroid/os/IBinder;
const/4 v3, 0x4
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_1e
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1e
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final d()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.google.android.youtube.player.internal.IPlayerStateChangeListener"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/internal/g$a$a;->a:Landroid/os/IBinder;
const/4 v3, 0x5
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_17
.catchall {:try_start_8 .. :try_end_17} :catchall_1e
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1e
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
.end method