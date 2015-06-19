.class public abstract Lcom/google/android/gms/internal/x;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/w;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/w;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/w;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/w;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/y;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/y;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_60

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_9

    :sswitch_11
    const-string v1, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_46

    sget-object v2, Lcom/google/android/gms/internal/ak;->CREATOR:Lcom/google/android/gms/internal/n;

    invoke-static {p2}, Lcom/google/android/gms/internal/n;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ak;

    move-result-object v2

    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_48

    move-object v4, v0

    :goto_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/x;->a(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/internal/ak;Ljava/lang/String;Lcom/google/android/gms/internal/bf;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v6

    goto :goto_9

    :cond_46
    move-object v2, v0

    goto :goto_2a

    :cond_48
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"

    invoke-interface {v4, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_58

    instance-of v5, v0, Lcom/google/android/gms/internal/bf;

    if-eqz v5, :cond_58

    check-cast v0, Lcom/google/android/gms/internal/bf;

    move-object v4, v0

    goto :goto_35

    :cond_58
    new-instance v0, Lcom/google/android/gms/internal/bh;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/bh;-><init>(Landroid/os/IBinder;)V

    move-object v4, v0

    goto :goto_35

    nop

    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_11
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
