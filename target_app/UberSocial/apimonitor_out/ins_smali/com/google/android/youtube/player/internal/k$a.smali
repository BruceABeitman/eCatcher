.class public abstract Lcom/google/android/youtube/player/internal/k$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/youtube/player/internal/k;
.method public static a(Landroid/os/IBinder;)Lcom/google/android/youtube/player/internal/k;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.youtube.player.internal.IThumbnailLoaderService"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/youtube/player/internal/k;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/youtube/player/internal/k;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/youtube/player/internal/k$a$a;
invoke-direct {v0, p0}, Lcom/google/android/youtube/player/internal/k$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 8
const/4 v0, 0x1
sparse-switch p1, :sswitch_data_64
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_8
return v0
:sswitch_9
const-string v1, "com.google.android.youtube.player.internal.IThumbnailLoaderService"
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_f
const-string v1, "com.google.android.youtube.player.internal.IThumbnailLoaderService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/google/android/youtube/player/internal/k$a;->a(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:sswitch_1f
const-string v1, "com.google.android.youtube.player.internal.IThumbnailLoaderService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p0, v1, v2}, Lcom/google/android/youtube/player/internal/k$a;->a(Ljava/lang/String;I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:sswitch_33
const-string v1, "com.google.android.youtube.player.internal.IThumbnailLoaderService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/k$a;->a()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:sswitch_3f
const-string v1, "com.google.android.youtube.player.internal.IThumbnailLoaderService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/k$a;->b()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:sswitch_4b
const-string v1, "com.google.android.youtube.player.internal.IThumbnailLoaderService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/k$a;->c()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:sswitch_57
const-string v1, "com.google.android.youtube.player.internal.IThumbnailLoaderService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/k$a;->d()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
nop
:sswitch_data_64
.sparse-switch
0x1 -> :sswitch_f
0x2 -> :sswitch_1f
0x3 -> :sswitch_33
0x4 -> :sswitch_3f
0x5 -> :sswitch_4b
0x6 -> :sswitch_57
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method