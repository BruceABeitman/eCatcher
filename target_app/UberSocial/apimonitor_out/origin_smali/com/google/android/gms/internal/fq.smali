.class public abstract Lcom/google/android/gms/internal/fq;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/fp;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fp;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/fp;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/fp;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/fr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fr;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12

    const/4 v0, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_de

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    :sswitch_a
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fq;->a()V

    goto :goto_9

    :sswitch_19
    const-string v1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_29

    move v0, v6

    :cond_29
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/fq;->a(Ljava/lang/String;Z)V

    goto :goto_9

    :sswitch_2d
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/fq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :sswitch_3e
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fq;->b()V

    goto :goto_9

    :sswitch_47
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fq;->a(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_54
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fq;->c()V

    goto :goto_9

    :sswitch_5d
    const-string v1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_76

    move v5, v6

    :goto_71
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fq;->a(DDZ)V

    goto :goto_9

    :cond_76
    move v5, v0

    goto :goto_71

    :sswitch_78
    const-string v1, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_94

    move v1, v6

    :goto_84
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8f

    move v0, v6

    :cond_8f
    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/google/android/gms/internal/fq;->a(ZDZ)V

    goto/16 :goto_9

    :cond_94
    move v1, v0

    goto :goto_84

    :sswitch_96
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/fq;->a(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_9

    :sswitch_ac
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/internal/fq;->a(Ljava/lang/String;[BJ)V

    goto/16 :goto_9

    :sswitch_c2
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fq;->b(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_d0
    const-string v0, "com.google.android.gms.cast.internal.ICastDeviceController"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fq;->c(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_data_de
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_19
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_3e
        0x5 -> :sswitch_47
        0x6 -> :sswitch_54
        0x7 -> :sswitch_5d
        0x8 -> :sswitch_78
        0x9 -> :sswitch_96
        0xa -> :sswitch_ac
        0xb -> :sswitch_c2
        0xc -> :sswitch_d0
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
