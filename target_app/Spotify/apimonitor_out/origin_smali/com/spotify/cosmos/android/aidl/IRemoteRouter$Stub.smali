.class public abstract Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/cosmos/android/aidl/IRemoteRouter;


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.spotify.cosmos.android.aidl.IRemoteRouter"

.field static final TRANSACTION_registerDestroyCallback:I = 0x4

.field static final TRANSACTION_resolve:I = 0x1

.field static final TRANSACTION_subscribe:I = 0x2

.field static final TRANSACTION_unsubscribe:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.spotify.cosmos.android.aidl.IRemoteRouter"

    invoke-virtual {p0, p0, v0}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/spotify/cosmos/android/aidl/IRemoteRouter;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.spotify.cosmos.android.aidl.IRemoteRouter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/spotify/cosmos/android/aidl/IRemoteRouter;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_b0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.spotify.cosmos.android.aidl.IRemoteRouter"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_9

    :sswitch_11
    const-string v0, "com.spotify.cosmos.android.aidl.IRemoteRouter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3d

    sget-object v0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;

    move-object v5, v0

    :cond_3d
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;->resolve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v6

    goto :goto_9

    :sswitch_4a
    const-string v0, "com.spotify.cosmos.android.aidl.IRemoteRouter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_76

    sget-object v0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;

    move-object v5, v0

    :cond_76
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;->subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BLcom/spotify/cosmos/android/aidl/ResolveCallbackReceiver;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v6

    goto :goto_9

    :sswitch_83
    const-string v0, "com.spotify.cosmos.android.aidl.IRemoteRouter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;->unsubscribe(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_95
    const-string v0, "com.spotify.cosmos.android.aidl.IRemoteRouter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_ae

    sget-object v0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;

    :goto_a8
    invoke-virtual {p0, v0}, Lcom/spotify/cosmos/android/aidl/IRemoteRouter$Stub;->registerDestroyCallback(Lcom/spotify/cosmos/android/aidl/DestroyCallbackReceiver;)V

    move v0, v6

    goto/16 :goto_9

    :cond_ae
    move-object v0, v5

    goto :goto_a8

    :sswitch_data_b0
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_4a
        0x3 -> :sswitch_83
        0x4 -> :sswitch_95
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
