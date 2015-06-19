.class public abstract Lcom/google/android/gms/internal/jf$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/jf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/jf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/jf$a$a;
    }
.end annotation


# direct methods
.method public static as(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jf;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/jf;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/jf;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/jf$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jf$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    sparse-switch p1, :sswitch_data_51c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_a
    return v7

    :sswitch_b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/ji;->CREATOR:Lcom/google/android/gms/internal/jj;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/je$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/jf$a;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_3d
    move-object v0, v5

    goto :goto_2a

    :sswitch_3f
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/je$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/jf$a;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_65
    move-object v0, v5

    goto :goto_52

    :sswitch_67
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/je$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/jf$a;->a([Ljava/lang/String;Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_83
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/je$a;->ar(Landroid/os/IBinder;)Lcom/google/android/gms/internal/je;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/je;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_9c
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c2

    move v1, v7

    :goto_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c4

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_ba
    invoke-virtual {p0, v2, v3, v1, v0}, Lcom/google/android/gms/internal/jf$a;->a(JZLandroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_c2
    move v1, v0

    goto :goto_ac

    :cond_c4
    move-object v0, v5

    goto :goto_ba

    :sswitch_c6
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e1

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_d9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jf$a;->removeActivityUpdates(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_e1
    move-object v0, v5

    goto :goto_d9

    :sswitch_e3
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jf$a;->iR()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_f9

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_f9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_fe
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10f

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    :cond_10f
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aq(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    move-result-object v0

    invoke-virtual {p0, v5, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_11f
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_147

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    move-object v1, v0

    :goto_131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_149

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_13f
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_147
    move-object v1, v5

    goto :goto_131

    :cond_149
    move-object v0, v5

    goto :goto_13f

    :sswitch_14b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aq(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/location/a;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_160
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17b

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_173
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jf$a;->a(Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_17b
    move-object v0, v5

    goto :goto_173

    :sswitch_17d
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_189

    move v0, v7

    :cond_189
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jf$a;->setMockMode(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_191
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ac

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_1a4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/jf$a;->setMockLocation(Landroid/location/Location;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_1ac
    move-object v0, v5

    goto :goto_1a4

    :sswitch_1ae
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ec

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    :goto_1bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1ee

    sget-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jo;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jn;

    move-result-object v3

    :goto_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1f0

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v4

    :goto_1db
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/internal/jn;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_1ec
    move-object v1, v5

    goto :goto_1bf

    :cond_1ee
    move-object v3, v5

    goto :goto_1cf

    :cond_1f0
    move-object v4, v5

    goto :goto_1db

    :sswitch_1f2
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_234

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    :goto_203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_236

    sget-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jo;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jn;

    move-result-object v4

    :goto_217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_223

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_223
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILjava/lang/String;Lcom/google/android/gms/internal/jn;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_234
    move-object v1, v5

    goto :goto_203

    :cond_236
    move-object v4, v5

    goto :goto_217

    :sswitch_238
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_24d

    sget-object v1, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_24d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/jf$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_25d
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_296

    sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    :goto_26e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_298

    sget-object v1, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/jo;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jn;

    move-result-object v1

    :goto_27a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_286

    sget-object v2, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_286
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v5, v2}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/internal/jn;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_296
    move-object v0, v5

    goto :goto_26e

    :cond_298
    move-object v1, v5

    goto :goto_27a

    :sswitch_29a
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2c7

    sget-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jo;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jn;

    move-result-object v0

    :goto_2ab
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2b7

    sget-object v1, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_2b7
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/jn;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_2c7
    move-object v0, v5

    goto :goto_2ab

    :sswitch_2c9
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2de

    sget-object v1, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_2de
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/jf$a;->b(Ljava/lang/String;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_2ee
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/jx;->CREATOR:Lcom/google/android/gms/internal/jy;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_31e

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v4

    :goto_30d
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jf$a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_31e
    move-object v4, v5

    goto :goto_30d

    :sswitch_320
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_355

    sget-object v0, Lcom/google/android/gms/internal/jr;->CREATOR:Lcom/google/android/gms/internal/js;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/js;->bx(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jr;

    move-result-object v0

    move-object v1, v0

    :goto_332
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_357

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v0

    move-object v2, v0

    :goto_33f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_359

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_34d
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/jr;Lcom/google/android/gms/internal/kb;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_355
    move-object v1, v5

    goto :goto_332

    :cond_357
    move-object v2, v5

    goto :goto_33f

    :cond_359
    move-object v0, v5

    goto :goto_34d

    :sswitch_35b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_383

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v0

    move-object v1, v0

    :goto_36d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_385

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_37b
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/kb;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_383
    move-object v1, v5

    goto :goto_36d

    :cond_385
    move-object v0, v5

    goto :goto_37b

    :sswitch_387
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3bc

    sget-object v0, Lcom/google/android/gms/internal/jl;->CREATOR:Lcom/google/android/gms/internal/jm;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jm;->bu(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jl;

    move-result-object v0

    move-object v1, v0

    :goto_399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3be

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v0

    move-object v2, v0

    :goto_3a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c0

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_3b4
    invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/jl;Lcom/google/android/gms/internal/kb;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_3bc
    move-object v1, v5

    goto :goto_399

    :cond_3be
    move-object v2, v5

    goto :goto_3a6

    :cond_3c0
    move-object v0, v5

    goto :goto_3b4

    :sswitch_3c2
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3ea

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v0

    move-object v1, v0

    :goto_3d4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3ec

    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    :goto_3e2
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/jf$a;->b(Lcom/google/android/gms/internal/kb;Landroid/app/PendingIntent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_3ea
    move-object v1, v5

    goto :goto_3d4

    :cond_3ec
    move-object v0, v5

    goto :goto_3e2

    :sswitch_3ee
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42c

    sget-object v0, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/LatLngBoundsCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngBoundsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v2

    :goto_403
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_42e

    sget-object v0, Lcom/google/android/gms/internal/jn;->CREATOR:Lcom/google/android/gms/internal/jo;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jo;->bv(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jn;

    move-result-object v3

    :goto_40f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_430

    sget-object v0, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v4

    :goto_41b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/jf$a;->a(Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/internal/jn;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_42c
    move-object v2, v5

    goto :goto_403

    :cond_42e
    move-object v3, v5

    goto :goto_40f

    :cond_430
    move-object v4, v5

    goto :goto_41b

    :sswitch_432
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_461

    sget-object v0, Lcom/google/android/gms/internal/jv;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/jv;

    :goto_445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_451

    sget-object v1, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_451
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/jz$a;->au(Landroid/os/IBinder;)Lcom/google/android/gms/internal/jz;

    move-result-object v1

    invoke-virtual {p0, v0, v5, v1}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/jv;Lcom/google/android/gms/internal/kb;Lcom/google/android/gms/internal/jz;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_461
    move-object v0, v5

    goto :goto_445

    :sswitch_463
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_474

    sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/LocationRequestCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/location/LocationRequestCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v5

    :cond_474
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/a$a;->aq(Landroid/os/IBinder;)Lcom/google/android/gms/location/a;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v5, v0, v1}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/a;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_488
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jf$a;->bo(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_4a2

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_4a2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_4a7
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4c9

    sget-object v0, Lcom/google/android/gms/internal/jp;->CREATOR:Lcom/google/android/gms/internal/jq;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jq;->bw(Landroid/os/Parcel;)Lcom/google/android/gms/internal/jp;

    move-result-object v0

    :goto_4b8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4c4

    sget-object v1, Lcom/google/android/gms/internal/kb;->CREATOR:Lcom/google/android/gms/internal/kc;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/kc;->bB(Landroid/os/Parcel;)Lcom/google/android/gms/internal/kb;

    move-result-object v5

    :cond_4c4
    invoke-virtual {p0, v0, v5}, Lcom/google/android/gms/internal/jf$a;->a(Lcom/google/android/gms/internal/jp;Lcom/google/android/gms/internal/kb;)V

    goto/16 :goto_a

    :cond_4c9
    move-object v0, v5

    goto :goto_4b8

    :sswitch_4cb
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4ea

    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    :goto_4de
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/jf$a;->a(Landroid/location/Location;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_4ea
    move-object v0, v5

    goto :goto_4de

    :sswitch_4ec
    const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/jf$a;->bp(Ljava/lang/String;)Lcom/google/android/gms/location/b;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_506

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v7}, Lcom/google/android/gms/location/b;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_506
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_50b
    const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/jf$a;->iS()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    :sswitch_data_51c
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_67
        0x4 -> :sswitch_83
        0x5 -> :sswitch_9c
        0x6 -> :sswitch_c6
        0x7 -> :sswitch_e3
        0x8 -> :sswitch_fe
        0x9 -> :sswitch_11f
        0xa -> :sswitch_14b
        0xb -> :sswitch_160
        0xc -> :sswitch_17d
        0xd -> :sswitch_191
        0xe -> :sswitch_1ae
        0xf -> :sswitch_238
        0x10 -> :sswitch_25d
        0x11 -> :sswitch_29a
        0x12 -> :sswitch_320
        0x13 -> :sswitch_35b
        0x14 -> :sswitch_463
        0x15 -> :sswitch_488
        0x19 -> :sswitch_4a7
        0x1a -> :sswitch_4cb
        0x22 -> :sswitch_4ec
        0x2a -> :sswitch_2c9
        0x2d -> :sswitch_3ee
        0x2e -> :sswitch_432
        0x2f -> :sswitch_1f2
        0x30 -> :sswitch_387
        0x31 -> :sswitch_3c2
        0x32 -> :sswitch_2ee
        0x33 -> :sswitch_50b
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
