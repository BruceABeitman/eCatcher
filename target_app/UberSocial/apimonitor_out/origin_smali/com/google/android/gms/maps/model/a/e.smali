.class public abstract Lcom/google/android/gms/maps/model/a/e;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/a/d;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/d;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/model/a/d;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/model/a/d;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/a/f;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/a/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_dc

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    goto :goto_9

    :sswitch_11
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/e;->a(I)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_9

    :cond_2c
    move-object v0, v1

    goto :goto_27

    :sswitch_2e
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/e;->a(Ljava/lang/String;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_44

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_44
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_9

    :sswitch_49
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/e;->b(Ljava/lang/String;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5f

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_5f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_9

    :sswitch_64
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/e;->a()Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_76

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_76
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_9

    :sswitch_7b
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/e;->a(F)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_91

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_91
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto/16 :goto_9

    :sswitch_97
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bd

    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_aa
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/e;->a(Landroid/graphics/Bitmap;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_b7

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_b7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto/16 :goto_9

    :cond_bd
    move-object v0, v1

    goto :goto_aa

    :sswitch_bf
    const-string v0, "com.google.android.gms.maps.model.internal.IBitmapDescriptorFactoryDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/e;->c(Ljava/lang/String;)Lcom/google/android/gms/c/d;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_d5

    invoke-interface {v0}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_d5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto/16 :goto_9

    nop

    :sswitch_data_dc
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2e
        0x3 -> :sswitch_49
        0x4 -> :sswitch_64
        0x5 -> :sswitch_7b
        0x6 -> :sswitch_97
        0x7 -> :sswitch_bf
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
