.class public abstract Lcom/google/android/youtube/player/internal/j$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/youtube/player/internal/j;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.youtube.player.internal.IThumbnailLoaderClient"
invoke-virtual {p0, p0, v0}, Lcom/google/android/youtube/player/internal/j$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 11
const/4 v3, 0x0
const/4 v2, 0x1
sparse-switch p1, :sswitch_data_60
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v2
:goto_9
return v2
:sswitch_a
const-string v0, "com.google.android.youtube.player.internal.IThumbnailLoaderClient"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v0, "com.google.android.youtube.player.internal.IThumbnailLoaderClient"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3c
sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
:goto_23
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_3e
move v1, v2
:goto_2e
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v5
if-eqz v5, :cond_35
move v3, v2
:cond_35
invoke-virtual {p0, v0, v4, v1, v3}, Lcom/google/android/youtube/player/internal/j$a;->a(Landroid/graphics/Bitmap;Ljava/lang/String;ZZ)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:cond_3c
const/4 v0, 0x0
goto :goto_23
:cond_3e
move v1, v3
goto :goto_2e
:sswitch_40
const-string v0, "com.google.android.youtube.player.internal.IThumbnailLoaderClient"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_5e
move v0, v2
:goto_50
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_57
move v3, v2
:cond_57
invoke-virtual {p0, v1, v0, v3}, Lcom/google/android/youtube/player/internal/j$a;->a(Ljava/lang/String;ZZ)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:cond_5e
move v0, v3
goto :goto_50
:sswitch_data_60
.sparse-switch
0x1 -> :sswitch_10
0x2 -> :sswitch_40
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method