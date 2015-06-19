.class public abstract Lcom/google/android/gms/internal/cu;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/ct;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/cu;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_3a
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_8
return v0
:sswitch_9
const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v1
goto :goto_8
:sswitch_10
const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
if-nez v2, :cond_24
const/4 v0, 0x0
:goto_1c
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cu;->a(Lcom/google/android/gms/internal/cp;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto :goto_8
:cond_24
const-string v0, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchase"
invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_33
instance-of v3, v0, Lcom/google/android/gms/internal/cp;
if-eqz v3, :cond_33
check-cast v0, Lcom/google/android/gms/internal/cp;
goto :goto_1c
:cond_33
new-instance v0, Lcom/google/android/gms/internal/cr;
invoke-direct {v0, v2}, Lcom/google/android/gms/internal/cr;-><init>(Landroid/os/IBinder;)V
goto :goto_1c
nop
:sswitch_data_3a
.sparse-switch
0x1 -> :sswitch_10
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method