.class public abstract Lcom/google/android/youtube/player/internal/i$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/youtube/player/internal/i;
.method public static a(Landroid/os/IBinder;)Lcom/google/android/youtube/player/internal/i;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.youtube.player.internal.IServiceBroker"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/youtube/player/internal/i;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/youtube/player/internal/i;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/youtube/player/internal/i$a$a;
invoke-direct {v0, p0}, Lcom/google/android/youtube/player/internal/i$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 13
const/4 v6, 0x0
const/4 v7, 0x1
sparse-switch p1, :sswitch_data_5c
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.youtube.player.internal.IServiceBroker"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v7
goto :goto_9
:sswitch_11
const-string v0, "com.google.android.youtube.player.internal.IServiceBroker"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
if-nez v2, :cond_45
move-object v1, v6
:goto_1d
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v5
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3c
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
move-object v6, v0
:cond_3c
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/google/android/youtube/player/internal/i$a;->a(Lcom/google/android/youtube/player/internal/c;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v7
goto :goto_9
:cond_45
const-string v0, "com.google.android.youtube.player.internal.IConnectionCallbacks"
invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_55
instance-of v1, v0, Lcom/google/android/youtube/player/internal/c;
if-eqz v1, :cond_55
check-cast v0, Lcom/google/android/youtube/player/internal/c;
move-object v1, v0
goto :goto_1d
:cond_55
new-instance v1, Lcom/google/android/youtube/player/internal/c$a$a;
invoke-direct {v1, v2}, Lcom/google/android/youtube/player/internal/c$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_1d
nop
:sswitch_data_5c
.sparse-switch
0x1 -> :sswitch_11
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method