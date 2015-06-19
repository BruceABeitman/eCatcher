.class final Lcom/google/android/youtube/player/internal/j$a$a;
.super Ljava/lang/Object;
.implements Lcom/google/android/youtube/player/internal/j;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/android/youtube/player/internal/j$a$a;->a:Landroid/os/IBinder;
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V
.registers 10
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.youtube.player.internal.IThumbnailLoaderClient"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_38
const/4 v2, 0x1
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
const/4 v2, 0x0
invoke-virtual {p1, v3, v2}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V
:goto_19
invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p3, :cond_45
move v2, v0
:goto_1f
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p4, :cond_47
:goto_24
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/youtube/player/internal/j$a$a;->a:Landroid/os/IBinder;
const/4 v1, 0x1
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_31
.catchall {:try_start_a .. :try_end_31} :catchall_3d
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_38
const/4 v2, 0x0
:try_start_39
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
:try_end_3c
.catchall {:try_start_39 .. :try_end_3c} :catchall_3d
goto :goto_19
:catchall_3d
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_45
move v2, v1
goto :goto_1f
:cond_47
move v0, v1
goto :goto_24
.end method
.method public final a(Ljava/lang/String;ZZ)V
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v3
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v4
:try_start_a
const-string v2, "com.google.android.youtube.player.internal.IThumbnailLoaderClient"
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
if-eqz p2, :cond_2e
move v2, v0
:goto_15
invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeInt(I)V
if-eqz p3, :cond_30
:goto_1a
invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lcom/google/android/youtube/player/internal/j$a$a;->a:Landroid/os/IBinder;
const/4 v1, 0x2
const/4 v2, 0x0
invoke-interface {v0, v1, v3, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v4}, Landroid/os/Parcel;->readException()V
:try_end_27
.catchall {:try_start_a .. :try_end_27} :catchall_32
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
return-void
:cond_2e
move v2, v1
goto :goto_15
:cond_30
move v0, v1
goto :goto_1a
:catchall_32
move-exception v0
invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
throw v0
.end method
.method public final asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/internal/j$a$a;->a:Landroid/os/IBinder;
return-object v0
.end method