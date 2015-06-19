.class public abstract Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static am(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v0, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_1c0
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_11
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->c(IILjava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_27
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B
move-result-object v2
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Ljava/lang/String;[BI)V
move v0, v1
goto :goto_9
:sswitch_3d
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bg(Ljava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_4b
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bh(Ljava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_59
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bi(Ljava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_67
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bj(Ljava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_75
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bk(Ljava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_83
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Ljava/lang/String;[Ljava/lang/String;)V
move v0, v1
goto/16 :goto_9
:sswitch_96
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->b(Ljava/lang/String;[Ljava/lang/String;)V
move v0, v1
goto/16 :goto_9
:sswitch_a9
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->c(Ljava/lang/String;[Ljava/lang/String;)V
move v0, v1
goto/16 :goto_9
:sswitch_bc
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->d(Ljava/lang/String;[Ljava/lang/String;)V
move v0, v1
goto/16 :goto_9
:sswitch_cf
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->e(Ljava/lang/String;[Ljava/lang/String;)V
move v0, v1
goto/16 :goto_9
:sswitch_e2
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->f(Ljava/lang/String;[Ljava/lang/String;)V
move v0, v1
goto/16 :goto_9
:sswitch_f5
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->onP2PConnected(Ljava/lang/String;)V
move v0, v1
goto/16 :goto_9
:sswitch_104
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->onP2PDisconnected(Ljava/lang/String;)V
move v0, v1
goto/16 :goto_9
:sswitch_113
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->hE()V
move v0, v1
goto/16 :goto_9
:sswitch_11e
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->g(Ljava/lang/String;[Ljava/lang/String;)V
move v0, v1
goto/16 :goto_9
:sswitch_131
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bl(Ljava/lang/String;)V
move v0, v1
goto/16 :goto_9
:sswitch_140
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->bm(Ljava/lang/String;)V
move v0, v1
goto/16 :goto_9
:sswitch_14f
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->ck(I)V
move v0, v1
goto/16 :goto_9
:sswitch_15e
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->al(Landroid/os/IBinder;)V
move v0, v1
goto/16 :goto_9
:sswitch_16d
const-string v2, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_17e
sget-object v0, Lcom/google/android/gms/games/internal/ConnectionInfo;->CREATOR:Lcom/google/android/gms/games/internal/ConnectionInfoCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/ConnectionInfoCreator;->bf(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/ConnectionInfo;
move-result-object v0
:cond_17e
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Lcom/google/android/gms/games/internal/ConnectionInfo;)V
move v0, v1
goto/16 :goto_9
:sswitch_184
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->hF()V
move v0, v1
goto/16 :goto_9
:sswitch_18f
const-string v2, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_1a2
sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/ParcelFileDescriptor;
:cond_1a2
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->a(Landroid/os/ParcelFileDescriptor;I)V
move v0, v1
goto/16 :goto_9
:sswitch_1ac
const-string v0, "com.google.android.gms.games.internal.IRoomServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->t(Ljava/lang/String;I)V
move v0, v1
goto/16 :goto_9
nop
:sswitch_data_1c0
.sparse-switch
0x3e9 -> :sswitch_11
0x3ea -> :sswitch_27
0x3eb -> :sswitch_3d
0x3ec -> :sswitch_4b
0x3ed -> :sswitch_59
0x3ee -> :sswitch_67
0x3ef -> :sswitch_75
0x3f0 -> :sswitch_83
0x3f1 -> :sswitch_96
0x3f2 -> :sswitch_a9
0x3f3 -> :sswitch_bc
0x3f4 -> :sswitch_cf
0x3f5 -> :sswitch_e2
0x3f6 -> :sswitch_f5
0x3f7 -> :sswitch_104
0x3f8 -> :sswitch_113
0x3f9 -> :sswitch_11e
0x3fa -> :sswitch_131
0x3fb -> :sswitch_140
0x3fc -> :sswitch_14f
0x3fd -> :sswitch_15e
0x3fe -> :sswitch_16d
0x3ff -> :sswitch_184
0x400 -> :sswitch_18f
0x401 -> :sswitch_1ac
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method