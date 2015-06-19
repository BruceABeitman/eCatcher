.class public abstract Lcom/google/android/gms/internal/bh$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/bh;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/bh$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static k(Landroid/os/IBinder;)Lcom/google/android/gms/internal/bh;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/bh;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/bh;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/bh$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/bh$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_5c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bh$a;->O()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_1b
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bh$a;->onAdClosed()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_27
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/bh$a;->onAdFailedToLoad(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_37
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bh$a;->onAdLeftApplication()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_43
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bh$a;->onAdOpened()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_4f
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bh$a;->onAdLoaded()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    nop

    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_27
        0x4 -> :sswitch_37
        0x5 -> :sswitch_43
        0x6 -> :sswitch_4f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
