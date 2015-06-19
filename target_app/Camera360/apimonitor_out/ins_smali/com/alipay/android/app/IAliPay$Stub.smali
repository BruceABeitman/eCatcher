.class public abstract Lcom/alipay/android/app/IAliPay$Stub;
.super Landroid/os/Binder;
.source "IAliPay.java"
.implements Lcom/alipay/android/app/IAliPay;
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alipay.android.app.IAliPay"
.field static final TRANSACTION_Pay:I = 0x1
.field static final TRANSACTION_registerCallback:I = 0x3
.field static final TRANSACTION_test:I = 0x2
.field static final TRANSACTION_unregisterCallback:I = 0x4
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string/jumbo v0, "com.alipay.android.app.IAliPay"
invoke-virtual {p0, p0, v0}, Lcom/alipay/android/app/IAliPay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAliPay;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string/jumbo v1, "com.alipay.android.app.IAliPay"
invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_14
instance-of v1, v0, Lcom/alipay/android/app/IAliPay;
if-eqz v1, :cond_14
check-cast v0, Lcom/alipay/android/app/IAliPay;
goto :goto_3
:cond_14
new-instance v0, Lcom/alipay/android/app/IAliPay$Stub$Proxy;
invoke-direct {v0, p0}, Lcom/alipay/android/app/IAliPay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 11
const/4 v4, 0x1
sparse-switch p1, :sswitch_data_68
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v4
:goto_8
return v4
:sswitch_9
const-string/jumbo v5, "com.alipay.android.app.IAliPay"
invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_10
const-string/jumbo v5, "com.alipay.android.app.IAliPay"
invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/android/app/IAliPay$Stub;->Pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_2d
const-string/jumbo v5, "com.alipay.android.app.IAliPay"
invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/alipay/android/app/IAliPay$Stub;->test()Ljava/lang/String;
move-result-object v3
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_8
:sswitch_3e
const-string/jumbo v5, "com.alipay.android.app.IAliPay"
invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v5
invoke-static {v5}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IRemoteServiceCallback;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/IAliPay$Stub;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:sswitch_53
const-string/jumbo v5, "com.alipay.android.app.IAliPay"
invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v5
invoke-static {v5}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IRemoteServiceCallback;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/alipay/android/app/IAliPay$Stub;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_8
:sswitch_data_68
.sparse-switch
0x1 -> :sswitch_10
0x2 -> :sswitch_2d
0x3 -> :sswitch_3e
0x4 -> :sswitch_53
0x5f4e5446 -> :sswitch_9
.end sparse-switch
.end method