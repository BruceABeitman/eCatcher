.class public abstract Lcom/google/android/gms/wearable/internal/ad$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/ad$a$a;
    }
.end annotation


# direct methods
.method public static by(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ad;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/ad;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/wearable/internal/ad;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/wearable/internal/ad$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/ad$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_200

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_11
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2c

    sget-object v0, Lcom/google/android/gms/wearable/c;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/c;

    :cond_2c
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/c;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_34
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_49
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->b(Lcom/google/android/gms/wearable/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_5e
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->c(Lcom/google/android/gms/wearable/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_73
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8e

    sget-object v0, Lcom/google/android/gms/wearable/PutDataRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/PutDataRequest;

    :cond_8e
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/PutDataRequest;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_97
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_b2

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :cond_b2
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Landroid/net/Uri;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_bb
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->d(Lcom/google/android/gms/wearable/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_d1
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_ec

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :cond_ec
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->b(Lcom/google/android/gms/wearable/internal/ab;Landroid/net/Uri;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_f5
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_110

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    :cond_110
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->c(Lcom/google/android/gms/wearable/internal/ab;Landroid/net/Uri;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_119
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_13b
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_156

    sget-object v0, Lcom/google/android/gms/wearable/Asset;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/Asset;

    :cond_156
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/Asset;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_15f
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->e(Lcom/google/android/gms/wearable/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_175
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->f(Lcom/google/android/gms/wearable/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_18b
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a6

    sget-object v0, Lcom/google/android/gms/wearable/internal/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/b;

    :cond_1a6
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/internal/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_1af
    const-string v2, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1ca

    sget-object v0, Lcom/google/android/gms/wearable/internal/ao;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/ao;

    :cond_1ca
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->a(Lcom/google/android/gms/wearable/internal/ab;Lcom/google/android/gms/wearable/internal/ao;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_1d3
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->g(Lcom/google/android/gms/wearable/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_1e9
    const-string v0, "com.google.android.gms.wearable.internal.IWearableService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/wearable/internal/ab$a;->bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ad$a;->h(Lcom/google/android/gms/wearable/internal/ab;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    nop

    :sswitch_data_200
    .sparse-switch
        0x2 -> :sswitch_11
        0x3 -> :sswitch_34
        0x4 -> :sswitch_49
        0x5 -> :sswitch_5e
        0x6 -> :sswitch_73
        0x7 -> :sswitch_97
        0x8 -> :sswitch_bb
        0x9 -> :sswitch_d1
        0xb -> :sswitch_f5
        0xc -> :sswitch_119
        0xd -> :sswitch_13b
        0xe -> :sswitch_15f
        0xf -> :sswitch_175
        0x10 -> :sswitch_18b
        0x11 -> :sswitch_1af
        0x12 -> :sswitch_1d3
        0x13 -> :sswitch_1e9
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
