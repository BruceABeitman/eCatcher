.class public abstract Lcom/google/android/gms/plus/internal/f;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/plus/internal/e;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/e;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.plus.internal.IPlusOneButtonCreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/plus/internal/e;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/plus/internal/e;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/plus/internal/g;

    invoke-direct {v0, p0}, Lcom/google/android/gms/plus/internal/g;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13

    const/4 v6, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_74

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.plus.internal.IPlusOneButtonCreator"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    goto :goto_9

    :sswitch_11
    const-string v0, "com.google.android.gms.plus.internal.IPlusOneButtonCreator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/f;->a(Lcom/google/android/gms/c/d;IILjava/lang/String;I)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_41

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_3c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    goto :goto_9

    :cond_41
    move-object v0, v6

    goto :goto_3c

    :sswitch_43
    const-string v0, "com.google.android.gms.plus.internal.IPlusOneButtonCreator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/f;->a(Lcom/google/android/gms/c/d;IILjava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_6e

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :cond_6e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    goto :goto_9

    nop

    :sswitch_data_74
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_43
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
