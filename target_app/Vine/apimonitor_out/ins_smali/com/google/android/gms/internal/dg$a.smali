.class public abstract Lcom/google/android/gms/internal/dg$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/dg;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/dg$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static t(Landroid/os/IBinder;)Lcom/google/android/gms/internal/dg;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/dg;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/dg;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/dg$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/dg$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 8
const/4 v0, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_68
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v1
:goto_9
return v1
:sswitch_a
const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/dg$a;->getProductId()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_20
const-string v2, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/dg$a;->getPurchaseData()Landroid/content/Intent;
move-result-object v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_35
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p3, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V
goto :goto_9
:cond_35
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_9
:sswitch_39
const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/dg$a;->getResultCode()I
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_9
:sswitch_49
const-string v2, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/dg$a;->isVerified()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_58
move v0, v1
:cond_58
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_9
:sswitch_5c
const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseResult"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/dg$a;->finishPurchase()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_data_68
.sparse-switch
0x1 -> :sswitch_10
0x2 -> :sswitch_20
0x3 -> :sswitch_39
0x4 -> :sswitch_49
0x5 -> :sswitch_5c
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method