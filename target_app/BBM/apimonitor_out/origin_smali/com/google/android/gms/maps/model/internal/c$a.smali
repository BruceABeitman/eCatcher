.class public abstract Lcom/google/android/gms/maps/model/internal/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/c;


# direct methods
.method public static ap(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/c;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/c;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/model/internal/c;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/c$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/c$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_1aa

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    :sswitch_b
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->remove()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_1d
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_2d
    const-string v2, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3e

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    :cond_3e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_45
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_5a

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    :cond_5a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :sswitch_5e
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setDimensions(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_6e
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/maps/model/internal/c$a;->a(FF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_82
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getWidth()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a

    :sswitch_93
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getHeight()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a

    :sswitch_a4
    const-string v2, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b5

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    :cond_b5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setPositionFromBounds(Lcom/google/android/gms/maps/model/LatLngBounds;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_bd
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getBounds()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_d3

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Lcom/google/android/gms/maps/model/LatLngBounds;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_d3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_d8
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setBearing(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_e9
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getBearing()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a

    :sswitch_fa
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setZIndex(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_10b
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getZIndex()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a

    :sswitch_11c
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_130

    move v0, v1

    :goto_128
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setVisible(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_130
    move v0, v2

    goto :goto_128

    :sswitch_132
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->isVisible()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_141

    move v2, v1

    :cond_141
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_146
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->setTransparency(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_157
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->getTransparency()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_a

    :sswitch_168
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/c$a;->ap(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->a(Lcom/google/android/gms/maps/model/internal/c;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_17f

    move v2, v1

    :cond_17f
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_184
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/c$a;->hashCodeRemote()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_195
    const-string v0, "com.google.android.gms.maps.model.internal.IGroundOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/c$a;->h(Lcom/google/android/gms/dynamic/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_data_1aa
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2d
        0x4 -> :sswitch_45
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_6e
        0x7 -> :sswitch_82
        0x8 -> :sswitch_93
        0x9 -> :sswitch_a4
        0xa -> :sswitch_bd
        0xb -> :sswitch_d8
        0xc -> :sswitch_e9
        0xd -> :sswitch_fa
        0xe -> :sswitch_10b
        0xf -> :sswitch_11c
        0x10 -> :sswitch_132
        0x11 -> :sswitch_146
        0x12 -> :sswitch_157
        0x13 -> :sswitch_168
        0x14 -> :sswitch_184
        0x15 -> :sswitch_195
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
