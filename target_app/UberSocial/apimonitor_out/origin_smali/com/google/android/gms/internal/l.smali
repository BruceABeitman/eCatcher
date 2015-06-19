.class public abstract Lcom/google/android/gms/internal/l;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/k;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/k;
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

    instance-of v1, v0, Lcom/google/android/gms/internal/k;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/k;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/m;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/m;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_48

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_8

    :sswitch_10
    const-string v0, "com.google.android.gms.ads.internal.client.IAdManagerCreator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    sget-object v0, Lcom/google/android/gms/internal/ab;->CREATOR:Lcom/google/android/gms/internal/c;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/c;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ab;

    move-result-object v2

    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/at;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/as;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/l;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/ab;Ljava/lang/String;Lcom/google/android/gms/internal/as;I)Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v6

    goto :goto_8

    :cond_46
    const/4 v2, 0x0

    goto :goto_29

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_10
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
