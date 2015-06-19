.class public abstract Lcom/google/android/gms/wearable/internal/ab$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/wearable/internal/ab;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/wearable/internal/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wearable/internal/ab$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static bw(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ab;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/wearable/internal/ab;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/wearable/internal/ab;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/wearable/internal/ab$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/ab$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_13e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    goto :goto_9

    :sswitch_11
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    sget-object v0, Lcom/google/android/gms/wearable/internal/r;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/r;

    :cond_24
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/r;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_2c
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3f

    sget-object v0, Lcom/google/android/gms/wearable/internal/am;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/am;

    :cond_3f
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/am;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_47
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5a

    sget-object v0, Lcom/google/android/gms/wearable/internal/v;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/v;

    :cond_5a
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/v;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_62
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_73

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :cond_73
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->Z(Lcom/google/android/gms/common/data/DataHolder;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto :goto_9

    :sswitch_7b
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8e

    sget-object v0, Lcom/google/android/gms/wearable/internal/p;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/p;

    :cond_8e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/p;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_97
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_aa

    sget-object v0, Lcom/google/android/gms/wearable/internal/aq;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/aq;

    :cond_aa
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/aq;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_b3
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_c6

    sget-object v0, Lcom/google/android/gms/wearable/internal/x;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/x;

    :cond_c6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/x;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_cf
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e2

    sget-object v0, Lcom/google/android/gms/wearable/internal/z;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/z;

    :cond_e2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/z;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_eb
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_fe

    sget-object v0, Lcom/google/android/gms/wearable/internal/t;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/t;

    :cond_fe
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/t;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_107
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_118

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    :cond_118
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    :sswitch_121
    const-string v2, "com.google.android.gms.wearable.internal.IWearableCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_134

    sget-object v0, Lcom/google/android/gms/wearable/internal/as;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/internal/as;

    :cond_134
    invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ab$a;->a(Lcom/google/android/gms/wearable/internal/as;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    goto/16 :goto_9

    nop

    :sswitch_data_13e
    .sparse-switch
        0x2 -> :sswitch_11
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_47
        0x5 -> :sswitch_62
        0x6 -> :sswitch_7b
        0x7 -> :sswitch_97
        0x8 -> :sswitch_b3
        0x9 -> :sswitch_cf
        0xa -> :sswitch_eb
        0xb -> :sswitch_107
        0xc -> :sswitch_121
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
