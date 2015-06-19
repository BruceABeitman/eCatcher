.class public abstract Lcom/google/android/gms/maps/model/internal/d$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/maps/model/internal/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/maps/model/internal/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/model/internal/d$a$a;
    }
.end annotation


# direct methods
.method public static ba(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/d;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/d;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/maps/model/internal/d;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/maps/model/internal/d$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/d$a$a;-><init>(Landroid/os/IBinder;)V

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

    sparse-switch p1, :sswitch_data_7e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    :sswitch_a
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/d$a;->getActiveLevelIndex()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_20
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/d$a;->getDefaultLevelIndex()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_30
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/d$a;->getLevels()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeBinderList(Ljava/util/List;)V

    goto :goto_9

    :sswitch_40
    const-string v2, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/d$a;->isUnderground()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4f

    move v0, v1

    :cond_4f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_53
    const-string v2, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/d$a;->ba(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/d;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/d$a;->b(Lcom/google/android/gms/maps/model/internal/d;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_6a

    move v0, v1

    :cond_6a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_6e
    const-string v0, "com.google.android.gms.maps.model.internal.IIndoorBuildingDelegate"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/d$a;->hashCodeRemote()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_data_7e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_30
        0x4 -> :sswitch_40
        0x5 -> :sswitch_53
        0x6 -> :sswitch_6e
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
