.class public abstract Lcom/google/android/gms/maps/internal/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/internal/c$a$a;
    }
.end annotation


# direct methods
.method public static ax(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/c;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/internal/c;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/internal/c;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/internal/c$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/c$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_10a

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v2

    goto :goto_9

    :sswitch_11
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/c$a;->h(Lcom/google/android/gms/dynamic/d;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    goto :goto_9

    :sswitch_26
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/c$a;->i(Lcom/google/android/gms/dynamic/d;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_40

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_40
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_9

    :sswitch_45
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_70

    sget-object v1, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/GoogleMapOptionsCreator;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v1

    :goto_5e
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/maps/internal/c$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/internal/IMapViewDelegate;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_6b

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IMapViewDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_9

    :cond_70
    move-object v1, v0

    goto :goto_5e

    :sswitch_72
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/c$a;->jC()Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_84

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/ICameraUpdateFactoryDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_84
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto :goto_9

    :sswitch_89
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/c$a;->jD()Lcom/google/android/gms/maps/model/internal/a;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_9b

    invoke-interface {v1}, Lcom/google/android/gms/maps/model/internal/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_9b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto/16 :goto_9

    :sswitch_a1
    const-string v0, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/maps/internal/c$a;->a(Lcom/google/android/gms/dynamic/d;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v2

    goto/16 :goto_9

    :sswitch_bb
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_e7

    sget-object v1, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Lcom/google/android/gms/maps/StreetViewPanoramaOptionsCreator;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/StreetViewPanoramaOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    move-result-object v1

    :goto_d4
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/maps/internal/c$a;->a(Lcom/google/android/gms/dynamic/d;Lcom/google/android/gms/maps/StreetViewPanoramaOptions;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_e1

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaViewDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_e1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto/16 :goto_9

    :cond_e7
    move-object v1, v0

    goto :goto_d4

    :sswitch_e9
    const-string v1, "com.google.android.gms.maps.internal.ICreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/internal/c$a;->j(Lcom/google/android/gms/dynamic/d;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_103

    invoke-interface {v1}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaFragmentDelegate;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_103
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v2

    goto/16 :goto_9

    nop

    :sswitch_data_10a
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_26
        0x3 -> :sswitch_45
        0x4 -> :sswitch_72
        0x5 -> :sswitch_89
        0x6 -> :sswitch_a1
        0x7 -> :sswitch_bb
        0x8 -> :sswitch_e9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
