.class public abstract Lcom/alipay/android/app/IAlixPay$Stub;
.super Landroid/os/Binder;
.source "IAlixPay.java"

# interfaces
.implements Lcom/alipay/android/app/IAlixPay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/IAlixPay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/IAlixPay$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.alipay.android.app.IAlixPay"

.field static final TRANSACTION_Pay:I = 0x1

.field static final TRANSACTION_prePay:I = 0x5

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_test:I = 0x2

.field static final TRANSACTION_unregisterCallback:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.alipay.android.app.IAlixPay"

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/app/IAlixPay$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v1, "com.alipay.android.app.IAlixPay"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/alipay/android/app/IAlixPay;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/alipay/android/app/IAlixPay;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/alipay/android/app/IAlixPay$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/IAlixPay$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_76

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_8
    return v2

    :sswitch_9
    const-string/jumbo v3, "com.alipay.android.app.IAlixPay"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_10
    const-string/jumbo v3, "com.alipay.android.app.IAlixPay"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/IAlixPay$Stub;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_25
    const-string/jumbo v3, "com.alipay.android.app.IAlixPay"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/app/IAlixPay$Stub;->test()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_36
    const-string/jumbo v3, "com.alipay.android.app.IAlixPay"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/IAlixPay$Stub;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_4b
    const-string/jumbo v3, "com.alipay.android.app.IAlixPay"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/IRemoteServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/IAlixPay$Stub;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_60
    const-string/jumbo v3, "com.alipay.android.app.IAlixPay"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/IAlixPay$Stub;->prePay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    nop

    :sswitch_data_76
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_25
        0x3 -> :sswitch_36
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_60
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
