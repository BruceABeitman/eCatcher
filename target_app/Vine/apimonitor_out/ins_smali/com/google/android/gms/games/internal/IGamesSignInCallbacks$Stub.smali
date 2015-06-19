.class public abstract Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.games.internal.IGamesSignInCallbacks"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.games.internal.IGamesSignInCallbacks"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub$Proxy;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v0, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_a0
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.games.internal.IGamesSignInCallbacks"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_11
const-string v2, "com.google.android.gms.games.internal.IGamesSignInCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_28
sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Intent;
:cond_28
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->b(ILandroid/content/Intent;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto :goto_9
:sswitch_30
const-string v2, "com.google.android.gms.games.internal.IGamesSignInCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_41
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_41
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->S(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto :goto_9
:sswitch_49
const-string v2, "com.google.android.gms.games.internal.IGamesSignInCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_5a
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_5a
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->T(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto :goto_9
:sswitch_62
const-string v0, "com.google.android.gms.games.internal.IGamesSignInCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ci(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto :goto_9
:sswitch_73
const-string v2, "com.google.android.gms.games.internal.IGamesSignInCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_84
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_84
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->g(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto/16 :goto_9
:sswitch_8d
const-string v0, "com.google.android.gms.games.internal.IGamesSignInCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->cj(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto/16 :goto_9
nop
:sswitch_data_a0
.sparse-switch
0x1389 -> :sswitch_11
0x138a -> :sswitch_30
0x138b -> :sswitch_49
0x138c -> :sswitch_62
0x138d -> :sswitch_73
0x138e -> :sswitch_8d
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method