.class public abstract Lcom/google/android/gms/internal/mu;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/mt;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/mu;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/mt;
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
instance-of v1, v0, Lcom/google/android/gms/internal/mt;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/mt;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/mv;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/mv;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v0, 0x0
const/4 v2, 0x1
sparse-switch p1, :sswitch_data_550
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v2
:goto_9
return v2
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
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mu;->a(ILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_24
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_35
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_35
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_3c
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mu;->b(ILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_50
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_61
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_61
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->b(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_68
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_8d
sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v1, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v1
:goto_79
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_85
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_85
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_8d
move-object v1, v0
goto :goto_79
:sswitch_8f
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_a0
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_a0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->c(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_a8
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_b9
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_b9
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->d(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_c1
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_d2
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_d2
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->e(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_da
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_eb
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_eb
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->f(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_f3
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_104
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_104
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->g(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_10c
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_11d
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_11d
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->h(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_125
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/mu;->a()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_132
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_143
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_143
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->j(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_14b
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_15c
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_15c
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->k(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_164
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_175
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_175
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->r(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_17d
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_18e
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_18e
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->s(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_196
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mu;->d(ILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1ab
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_1bc
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_1bc
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->t(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1c4
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_1d5
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_1d5
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->u(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1dd
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_1ee
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_1ee
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->v(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1f6
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_207
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_207
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->w(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_20f
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_220
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_220
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->x(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_228
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_239
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_239
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_245
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_256
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_256
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mu;->b(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_262
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_273
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_273
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mu;->c(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_27f
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_290
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_290
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mu;->d(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_29c
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_2ad
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_2ad
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mu;->e(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_2b9
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_2ca
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_2ca
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mu;->f(Lcom/google/android/gms/common/data/DataHolder;[Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_2d6
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_2e9
sget-object v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;
:cond_2e9
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->a(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessage;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_2f1
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/internal/mu;->a(IILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_30a
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_326
move v0, v2
:goto_31e
invoke-virtual {p0, v1, v3, v0}, Lcom/google/android/gms/internal/mu;->a(ILjava/lang/String;Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_326
const/4 v0, 0x0
goto :goto_31e
:sswitch_328
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_339
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_339
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->y(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_341
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_352
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_352
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->z(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_35a
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->a(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_36b
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_37c
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_37c
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->A(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_384
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->b(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_395
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->d(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_3a6
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->e(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_3b7
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_3c8
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_3c8
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->B(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_3d0
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_3e7
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:cond_3e7
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/mu;->a(ILandroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_3ef
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_400
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_400
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->m(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_408
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_419
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_419
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->n(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_421
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_432
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_432
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->o(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_43a
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_44b
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_44b
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->p(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_453
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/mu;->c(ILjava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_468
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_479
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_479
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->q(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_481
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->c(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_492
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->a(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_4a3
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_4b4
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_4b4
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->i(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_4bc
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_4cd
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_4cd
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->l(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_4d5
const-string v0, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->b(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_4e6
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_4f7
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_4f7
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->C(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_4ff
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_510
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_510
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->D(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_518
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_52f
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:cond_52f
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/mu;->b(ILandroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_537
const-string v1, "com.google.android.gms.games.internal.IGamesCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_548
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_548
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/mu;->E(Lcom/google/android/gms/common/data/DataHolder;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_data_550
.sparse-switch
0x1389 -> :sswitch_10
0x138a -> :sswitch_24
0x138b -> :sswitch_3c
0x138c -> :sswitch_50
0x138d -> :sswitch_68
0x138e -> :sswitch_8f
0x138f -> :sswitch_a8
0x1390 -> :sswitch_c1
0x1391 -> :sswitch_da
0x1392 -> :sswitch_f3
0x1393 -> :sswitch_10c
0x1398 -> :sswitch_125
0x1399 -> :sswitch_132
0x139a -> :sswitch_164
0x139b -> :sswitch_17d
0x139c -> :sswitch_196
0x139d -> :sswitch_1ab
0x139e -> :sswitch_1c4
0x139f -> :sswitch_1dd
0x13a0 -> :sswitch_1f6
0x13a1 -> :sswitch_20f
0x13a2 -> :sswitch_228
0x13a3 -> :sswitch_245
0x13a4 -> :sswitch_262
0x13a5 -> :sswitch_27f
0x13a6 -> :sswitch_29c
0x13a7 -> :sswitch_2b9
0x13a8 -> :sswitch_2d6
0x13a9 -> :sswitch_2f1
0x13aa -> :sswitch_30a
0x13ab -> :sswitch_341
0x13ac -> :sswitch_35a
0x13ad -> :sswitch_14b
0x13ae -> :sswitch_328
0x13af -> :sswitch_36b
0x13b0 -> :sswitch_384
0x1771 -> :sswitch_395
0x1772 -> :sswitch_3a6
0x1f41 -> :sswitch_3b7
0x1f42 -> :sswitch_3d0
0x1f43 -> :sswitch_3ef
0x1f44 -> :sswitch_408
0x1f45 -> :sswitch_421
0x1f46 -> :sswitch_43a
0x1f47 -> :sswitch_453
0x1f48 -> :sswitch_468
0x1f49 -> :sswitch_481
0x1f4a -> :sswitch_492
0x2329 -> :sswitch_4a3
0x2711 -> :sswitch_4bc
0x2712 -> :sswitch_4d5
0x2713 -> :sswitch_4e6
0x2714 -> :sswitch_4ff
0x2715 -> :sswitch_518
0x2716 -> :sswitch_537
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method