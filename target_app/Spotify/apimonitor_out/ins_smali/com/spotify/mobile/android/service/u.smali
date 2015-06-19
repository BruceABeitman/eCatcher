.class final Lcom/spotify/mobile/android/service/u;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/s;
.field private a:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/service/u;->a:Landroid/os/IBinder;
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
.registers 8
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v2
:try_start_8
const-string v0, "com.spotify.mobile.android.service.IVideoPlayerManager"
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
if-eqz p1, :cond_35
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->name()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
:goto_1a
if-eqz p2, :cond_42
const/4 v0, 0x1
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x0
invoke-virtual {p2, v1, v0}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->writeToParcel(Landroid/os/Parcel;I)V
:goto_24
iget-object v0, p0, Lcom/spotify/mobile/android/service/u;->a:Landroid/os/IBinder;
const/4 v3, 0x1
const/4 v4, 0x0
invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
:try_end_2e
.catchall {:try_start_8 .. :try_end_2e} :catchall_3a
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
return-void
:cond_35
const/4 v0, 0x0
:try_start_36
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_39
.catchall {:try_start_36 .. :try_end_39} :catchall_3a
goto :goto_1a
:catchall_3a
move-exception v0
invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
throw v0
:cond_42
const/4 v0, 0x0
:try_start_43
invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V
:try_end_46
.catchall {:try_start_43 .. :try_end_46} :catchall_3a
goto :goto_24
.end method
.method public final asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/u;->a:Landroid/os/IBinder;
return-object v0
.end method