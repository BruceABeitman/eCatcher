.class public abstract Lcom/google/android/gms/maps/model/internal/h$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/h$a$a;
    }
.end annotation


# direct methods
.method public static bf(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/h;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/h;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/model/internal/h;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/h$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/h$a$a;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_d4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    :sswitch_a
    const-string v0, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v0, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->remove()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_1c
    const-string v0, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->clearTileCache()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_28
    const-string v0, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_38
    const-string v0, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/h$a;->setZIndex(F)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_48
    const-string v0, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->getZIndex()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_9

    :sswitch_58
    const-string v2, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_64

    move v0, v1

    :cond_64
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/h$a;->setVisible(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_6b
    const-string v2, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->isVisible()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_7a

    move v0, v1

    :cond_7a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_7e
    const-string v2, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/h$a;->bf(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/h;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/h$a;->a(Lcom/google/android/gms/maps/model/internal/h;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_95

    move v0, v1

    :cond_95
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_9a
    const-string v0, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->hashCodeRemote()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_ab
    const-string v2, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_b7

    move v0, v1

    :cond_b7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/h$a;->setFadeIn(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_bf
    const-string v2, "com.google.android.gms.maps.model.internal.ITileOverlayDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/h$a;->getFadeIn()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_ce

    move v0, v1

    :cond_ce
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    nop

    :sswitch_data_d4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_28
        0x4 -> :sswitch_38
        0x5 -> :sswitch_48
        0x6 -> :sswitch_58
        0x7 -> :sswitch_6b
        0x8 -> :sswitch_7e
        0x9 -> :sswitch_9a
        0xa -> :sswitch_ab
        0xb -> :sswitch_bf
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
