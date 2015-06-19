.class public abstract Lcom/google/android/gms/internal/u;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/t;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/u;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/t;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/t;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/t;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/v;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/v;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v2, 0x0
const/4 v0, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_152
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v1
:goto_a
return v1
:sswitch_b
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_a
:sswitch_11
const-string v2, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->a()Lcom/google/android/gms/dynamic/b;
move-result-object v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_23
invoke-interface {v2}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_23
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
goto :goto_a
:sswitch_27
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->b()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_33
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->c()Z
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_46
move v0, v1
:goto_42
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_a
:cond_46
move v0, v2
goto :goto_42
:sswitch_48
const-string v3, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_59
sget-object v0, Lcom/google/android/gms/internal/ah;->CREATOR:Lcom/google/android/gms/internal/k;
invoke-static {p2}, Lcom/google/android/gms/internal/k;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ah;
move-result-object v0
:cond_59
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/ah;)Z
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_63
move v2, v1
:cond_63
invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_a
:sswitch_67
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->d()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_73
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->e()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_7f
const-string v2, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
if-nez v2, :cond_92
:goto_8a
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/q;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:cond_92
const-string v0, "com.google.android.gms.ads.internal.client.IAdListener"
invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_a1
instance-of v3, v0, Lcom/google/android/gms/internal/q;
if-eqz v3, :cond_a1
check-cast v0, Lcom/google/android/gms/internal/q;
goto :goto_8a
:cond_a1
new-instance v0, Lcom/google/android/gms/internal/s;
invoke-direct {v0, v2}, Lcom/google/android/gms/internal/s;-><init>(Landroid/os/IBinder;)V
goto :goto_8a
:sswitch_a7
const-string v2, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
if-nez v2, :cond_ba
:goto_b2
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/z;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:cond_ba
const-string v0, "com.google.android.gms.ads.internal.client.IAppEventListener"
invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_c9
instance-of v3, v0, Lcom/google/android/gms/internal/z;
if-eqz v3, :cond_c9
check-cast v0, Lcom/google/android/gms/internal/z;
goto :goto_b2
:cond_c9
new-instance v0, Lcom/google/android/gms/internal/ab;
invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ab;-><init>(Landroid/os/IBinder;)V
goto :goto_b2
:sswitch_cf
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->f()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_dc
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->g()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_e9
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->h()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_f6
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/u;->i()Lcom/google/android/gms/internal/ak;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_10c
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/ak;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_a
:cond_10c
invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
:sswitch_111
const-string v2, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_122
sget-object v0, Lcom/google/android/gms/internal/ak;->CREATOR:Lcom/google/android/gms/internal/n;
invoke-static {p2}, Lcom/google/android/gms/internal/n;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ak;
move-result-object v0
:cond_122
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/ak;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_12a
const-string v2, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
if-nez v2, :cond_13d
:goto_135
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/u;->a(Lcom/google/android/gms/internal/ct;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:cond_13d
const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener"
invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_14c
instance-of v3, v0, Lcom/google/android/gms/internal/ct;
if-eqz v3, :cond_14c
check-cast v0, Lcom/google/android/gms/internal/ct;
goto :goto_135
:cond_14c
new-instance v0, Lcom/google/android/gms/internal/cv;
invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cv;-><init>(Landroid/os/IBinder;)V
goto :goto_135
:sswitch_data_152
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_27
0x3 -> :sswitch_33
0x4 -> :sswitch_48
0x5 -> :sswitch_67
0x6 -> :sswitch_73
0x7 -> :sswitch_7f
0x8 -> :sswitch_a7
0x9 -> :sswitch_cf
0xa -> :sswitch_dc
0xb -> :sswitch_e9
0xc -> :sswitch_f6
0xd -> :sswitch_111
0xe -> :sswitch_12a
0x5f4e5446 -> :sswitch_b
.end sparse-switch
.end method