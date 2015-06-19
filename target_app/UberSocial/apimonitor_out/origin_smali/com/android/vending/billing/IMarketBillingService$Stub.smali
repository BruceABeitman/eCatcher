.class public abstract Lcom/android/vending/billing/IMarketBillingService$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/android/vending/billing/IMarketBillingService;


# static fields
.field static final a:I = 0x1

.field private static final b:Ljava/lang/String; = "com.android.vending.billing.IMarketBillingService"


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.vending.billing.IMarketBillingService"

    invoke-virtual {p0, p0, v0}, Lcom/android/vending/billing/IMarketBillingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/android/vending/billing/IMarketBillingService;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.android.vending.billing.IMarketBillingService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/android/vending/billing/IMarketBillingService;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/android/vending/billing/IMarketBillingService;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/android/vending/billing/IMarketBillingService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/vending/billing/IMarketBillingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_3c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v0, "com.android.vending.billing.IMarketBillingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_8

    :sswitch_10
    const-string v0, "com.android.vending.billing.IMarketBillingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_34

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_23
    invoke-virtual {p0, v0}, Lcom/android/vending/billing/IMarketBillingService$Stub;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_36

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_32
    move v0, v1

    goto :goto_8

    :cond_34
    const/4 v0, 0x0

    goto :goto_23

    :cond_36
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    nop

    :sswitch_data_3c
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
