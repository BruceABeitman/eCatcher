.class public abstract Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a$a;
    }
.end annotation


# direct methods
.method public static aW(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_15e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1c

    move v0, v1

    :cond_1c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setZoomControlsEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_23
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2f

    move v0, v1

    :cond_2f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setCompassEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_36
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_42

    move v0, v1

    :cond_42
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setMyLocationButtonEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_49
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_55

    move v0, v1

    :cond_55
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setScrollGesturesEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_5c
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_68

    move v0, v1

    :cond_68
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setZoomGesturesEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_6f
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7b

    move v0, v1

    :cond_7b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setTiltGesturesEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_82
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8e

    move v0, v1

    :cond_8e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setRotateGesturesEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_96
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a2

    move v0, v1

    :cond_a2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setAllGesturesEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_aa
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isZoomControlsEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_b9

    move v0, v1

    :cond_b9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_be
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isCompassEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_cd

    move v0, v1

    :cond_cd
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_d2
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isMyLocationButtonEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_e1

    move v0, v1

    :cond_e1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_e6
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isScrollGesturesEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_f5

    move v0, v1

    :cond_f5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_fa
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isZoomGesturesEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_109

    move v0, v1

    :cond_109
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_10e
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isTiltGesturesEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_11d

    move v0, v1

    :cond_11d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_122
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isRotateGesturesEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_131

    move v0, v1

    :cond_131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_136
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_142

    move v0, v1

    :cond_142
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->setIndoorLevelPickerEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_14a
    const-string v2, "com.google.android.gms.maps.internal.IUiSettingsDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IUiSettingsDelegate$a;->isIndoorLevelPickerEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_159

    move v0, v1

    :cond_159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_data_15e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_23
        0x3 -> :sswitch_36
        0x4 -> :sswitch_49
        0x5 -> :sswitch_5c
        0x6 -> :sswitch_6f
        0x7 -> :sswitch_82
        0x8 -> :sswitch_96
        0x9 -> :sswitch_aa
        0xa -> :sswitch_be
        0xb -> :sswitch_d2
        0xc -> :sswitch_e6
        0xd -> :sswitch_fa
        0xe -> :sswitch_10e
        0xf -> :sswitch_122
        0x10 -> :sswitch_136
        0x11 -> :sswitch_14a
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
