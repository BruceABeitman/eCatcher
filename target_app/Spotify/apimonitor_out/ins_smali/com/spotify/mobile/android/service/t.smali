.class public abstract Lcom/spotify/mobile/android/service/t;
.super Landroid/os/Binder;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/s;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.spotify.mobile.android.service.IVideoPlayerManager"
invoke-virtual {p0, p0, v0}, Lcom/spotify/mobile/android/service/t;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/os/IBinder;)Lcom/spotify/mobile/android/service/s;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.spotify.mobile.android.service.IVideoPlayerManager"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/spotify/mobile/android/service/s;
if-eqz v1, :cond_13
check-cast v0, Lcom/spotify/mobile/android/service/s;
goto :goto_3
:cond_13
new-instance v0, Lcom/spotify/mobile/android/service/u;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/u;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v2, 0x0
const/4 v3, 0x1
sparse-switch p1, :sswitch_data_40
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.spotify.mobile.android.service.IVideoPlayerManager"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v3
goto :goto_9
:sswitch_11
const-string v0, "com.spotify.mobile.android.service.IVideoPlayerManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3b
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->d:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;
move-object v1, v0
:goto_25
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3d
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
:goto_33
invoke-virtual {p0, v1, v0}, Lcom/spotify/mobile/android/service/t;->a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto :goto_9
:cond_3b
move-object v1, v2
goto :goto_25
:cond_3d
move-object v0, v2
goto :goto_33
nop
:sswitch_data_40
.sparse-switch
0x1 -> :sswitch_11
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method