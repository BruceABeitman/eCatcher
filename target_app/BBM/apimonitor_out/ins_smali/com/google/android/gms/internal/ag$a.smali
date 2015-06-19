.class public abstract Lcom/google/android/gms/internal/ag$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/ag;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/ag$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static f(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ag;
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
instance-of v1, v0, Lcom/google/android/gms/internal/ag;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/ag;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/ag$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ag$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v0, 0x0
const/4 v2, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_104
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
invoke-virtual {p0}, Lcom/google/android/gms/internal/ag$a;->P()Lcom/google/android/gms/dynamic/b;
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
invoke-virtual {p0}, Lcom/google/android/gms/internal/ag$a;->destroy()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_33
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/ag$a;->isReady()Z
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
sget-object v0, Lcom/google/android/gms/internal/z;->CREATOR:Lcom/google/android/gms/internal/aa;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/aa;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/z;
move-result-object v0
:cond_59
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ag$a;->a(Lcom/google/android/gms/internal/z;)Z
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
invoke-virtual {p0}, Lcom/google/android/gms/internal/ag$a;->pause()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_73
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/ag$a;->resume()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_7f
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/af$a;->e(Landroid/os/IBinder;)Lcom/google/android/gms/internal/af;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ag$a;->a(Lcom/google/android/gms/internal/af;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_94
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ai$a;->h(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ai;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ag$a;->a(Lcom/google/android/gms/internal/ai;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_a9
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/ag$a;->showInterstitial()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_b6
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/ag$a;->stopLoading()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_c3
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/ag$a;->Z()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_d0
const-string v0, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/ag$a;->Q()Lcom/google/android/gms/internal/ab;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_e6
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/internal/ab;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_a
:cond_e6
invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
:sswitch_eb
const-string v2, "com.google.android.gms.ads.internal.client.IAdManager"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_fc
sget-object v0, Lcom/google/android/gms/internal/ab;->CREATOR:Lcom/google/android/gms/internal/ac;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ac;->b(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ab;
move-result-object v0
:cond_fc
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ag$a;->a(Lcom/google/android/gms/internal/ab;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_data_104
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_27
0x3 -> :sswitch_33
0x4 -> :sswitch_48
0x5 -> :sswitch_67
0x6 -> :sswitch_73
0x7 -> :sswitch_7f
0x8 -> :sswitch_94
0x9 -> :sswitch_a9
0xa -> :sswitch_b6
0xb -> :sswitch_c3
0xc -> :sswitch_d0
0xd -> :sswitch_eb
0x5f4e5446 -> :sswitch_b
.end sparse-switch
.end method