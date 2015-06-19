.class public abstract Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/games/internal/IGamesCallbacks;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static ai(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesCallbacks;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/games/internal/IGamesCallbacks;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/games/internal/IGamesCallbacks;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub$Proxy;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 12
const/4 v5, 0x0
const/4 v6, 0x1
sparse-switch p1, :sswitch_data_72e
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v6
:goto_9
return v6
:sswitch_a
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->d(ILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_24
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3c
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:goto_35
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->c(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:cond_3c
move-object v0, v5
goto :goto_35
:sswitch_3e
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->e(ILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_52
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_63
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_63
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->e(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_6a
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_8f
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:goto_7b
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_87
sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v1, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_87
invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_8f
move-object v0, v5
goto :goto_7b
:sswitch_91
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_a2
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_a2
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->f(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_aa
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_bb
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_bb
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->g(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_c3
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_d4
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_d4
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->h(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_dc
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_ed
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_ed
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->i(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_f5
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_106
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_106
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->j(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_10e
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_11f
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_11f
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->k(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_127
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->dO()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_134
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_145
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_145
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->m(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_14d
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_15e
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_15e
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->n(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_166
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_177
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_177
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->u(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_17f
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_190
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_190
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->v(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_198
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onLeftRoom(ILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1ad
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_1be
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_1be
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->w(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1c6
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_1d7
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_1d7
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->x(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1df
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_1f0
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_1f0
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->y(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1f8
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_209
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_209
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->z(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_211
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_222
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_222
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->A(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_22a
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_23b
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_23b
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->a(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_247
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_258
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_258
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->b(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_264
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_275
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_275
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->c(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_281
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_292
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_292
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->d(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_29e
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2af
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_2af
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->e(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_2bb
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2cc
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_2cc
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->f(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_2d8
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_2f3
sget-object v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;
:goto_2eb
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onRealTimeMessageReceived(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_2f3
move-object v0, v5
goto :goto_2eb
:sswitch_2f5
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->b(IILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_30e
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_32a
move v0, v6
:goto_322
invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->a(ILjava/lang/String;Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_32a
const/4 v0, 0x0
goto :goto_322
:sswitch_32c
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_33d
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_33d
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->B(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_345
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_356
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_356
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->C(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_35e
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->cd(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_36f
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_380
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_380
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->D(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_388
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->ce(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_399
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onP2PConnected(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_3aa
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onP2PDisconnected(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_3bb
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3cc
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_3cc
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->E(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_3d4
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3f3
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_3eb
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->b(ILandroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_3f3
move-object v0, v5
goto :goto_3eb
:sswitch_3f5
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_406
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_406
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->p(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_40e
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_41f
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_41f
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->q(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_427
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_438
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_438
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->r(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_440
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_451
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_451
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->s(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_459
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->f(ILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_46e
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_47f
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_47f
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->t(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_487
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onTurnBasedMatchRemoved(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_498
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onInvitationRemoved(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_4a9
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_4ba
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_4ba
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->l(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_4c2
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_4d3
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_4d3
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->o(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_4db
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->onRequestRemoved(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_4ec
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_4fd
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_4fd
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->F(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_505
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_516
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_516
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->G(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_51e
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_53d
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_535
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->c(ILandroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_53d
move-object v0, v5
goto :goto_535
:sswitch_53f
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_550
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_550
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->H(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_558
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_577
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_56f
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->d(ILandroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_577
move-object v0, v5
goto :goto_56f
:sswitch_579
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_58a
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_58a
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->I(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_592
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_5ba
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
move-object v1, v0
:goto_5a4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_5bc
sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/Contents;
:goto_5b2
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/Contents;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_5ba
move-object v1, v5
goto :goto_5a4
:cond_5bc
move-object v0, v5
goto :goto_5b2
:sswitch_5be
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_609
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v1
:goto_5cf
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_60b
sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/Contents;
move-object v3, v0
:goto_5e2
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_60d
sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/Contents;
move-object v4, v0
:goto_5f1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_600
sget-object v0, Lcom/google/android/gms/drive/Contents;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/Contents;
move-object v5, v0
:cond_600
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;Lcom/google/android/gms/drive/Contents;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_609
move-object v1, v5
goto :goto_5cf
:cond_60b
move-object v3, v5
goto :goto_5e2
:cond_60d
move-object v4, v5
goto :goto_5f1
:sswitch_60f
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_620
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_620
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->J(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_628
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->g(ILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_63d
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_65c
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_654
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->e(ILandroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_65c
move-object v0, v5
goto :goto_654
:sswitch_65e
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_66f
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_66f
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->P(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_677
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_688
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_688
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->d(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_690
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_6a1
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_6a1
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->K(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_6a9
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_6ba
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_6ba
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->L(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_6c2
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_6d3
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_6d3
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->M(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_6db
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_6ec
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_6ec
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->N(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_6f4
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_705
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v5
:cond_705
invoke-virtual {p0, v5}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->O(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_70d
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_72c
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_724
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesCallbacks$Stub;->f(ILandroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_72c
move-object v0, v5
goto :goto_724
:sswitch_data_72e
.sparse-switch
0x1389 -> :sswitch_10
0x138a -> :sswitch_24
0x138b -> :sswitch_3e
0x138c -> :sswitch_52
0x138d -> :sswitch_6a
0x138e -> :sswitch_91
0x138f -> :sswitch_aa
0x1390 -> :sswitch_c3
0x1391 -> :sswitch_dc
0x1392 -> :sswitch_f5
0x1393 -> :sswitch_10e
0x1398 -> :sswitch_127
0x1399 -> :sswitch_134
0x139a -> :sswitch_166
0x139b -> :sswitch_17f
0x139c -> :sswitch_198
0x139d -> :sswitch_1ad
0x139e -> :sswitch_1c6
0x139f -> :sswitch_1df
0x13a0 -> :sswitch_1f8
0x13a1 -> :sswitch_211
0x13a2 -> :sswitch_22a
0x13a3 -> :sswitch_247
0x13a4 -> :sswitch_264
0x13a5 -> :sswitch_281
0x13a6 -> :sswitch_29e
0x13a7 -> :sswitch_2bb
0x13a8 -> :sswitch_2d8
0x13a9 -> :sswitch_2f5
0x13aa -> :sswitch_30e
0x13ab -> :sswitch_345
0x13ac -> :sswitch_35e
0x13ad -> :sswitch_14d
0x13ae -> :sswitch_32c
0x13af -> :sswitch_36f
0x13b0 -> :sswitch_388
0x1771 -> :sswitch_399
0x1772 -> :sswitch_3aa
0x1f41 -> :sswitch_3bb
0x1f42 -> :sswitch_3d4
0x1f43 -> :sswitch_3f5
0x1f44 -> :sswitch_40e
0x1f45 -> :sswitch_427
0x1f46 -> :sswitch_440
0x1f47 -> :sswitch_459
0x1f48 -> :sswitch_46e
0x1f49 -> :sswitch_487
0x1f4a -> :sswitch_498
0x2329 -> :sswitch_4a9
0x2711 -> :sswitch_4c2
0x2712 -> :sswitch_4db
0x2713 -> :sswitch_4ec
0x2714 -> :sswitch_505
0x2715 -> :sswitch_51e
0x2716 -> :sswitch_53f
0x2af9 -> :sswitch_558
0x2ee1 -> :sswitch_579
0x2ee3 -> :sswitch_63d
0x2ee4 -> :sswitch_592
0x2ee5 -> :sswitch_60f
0x2ee6 -> :sswitch_690
0x2ee7 -> :sswitch_6a9
0x2ee8 -> :sswitch_6f4
0x2eeb -> :sswitch_677
0x2eec -> :sswitch_628
0x2eed -> :sswitch_65e
0x2eee -> :sswitch_6c2
0x2eef -> :sswitch_70d
0x2ef0 -> :sswitch_6db
0x2ef1 -> :sswitch_5be
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method