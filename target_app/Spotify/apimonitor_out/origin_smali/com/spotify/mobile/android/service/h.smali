.class public abstract Lcom/spotify/mobile/android/service/h;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/g;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p0, p0, v0}, Lcom/spotify/mobile/android/service/h;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/spotify/mobile/android/service/g;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/spotify/mobile/android/service/g;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/spotify/mobile/android/service/g;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/spotify/mobile/android/service/i;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/i;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_126

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_9
    return v1

    :sswitch_a
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_27

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/h;->a(Lcom/spotify/mobile/android/service/d;)I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_27
    const-string v0, "com.spotify.mobile.android.service.IConnectDeviceListObserver"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_36

    instance-of v3, v0, Lcom/spotify/mobile/android/service/d;

    if-eqz v3, :cond_36

    check-cast v0, Lcom/spotify/mobile/android/service/d;

    goto :goto_1c

    :cond_36
    new-instance v0, Lcom/spotify/mobile/android/service/f;

    invoke-direct {v0, v2}, Lcom/spotify/mobile/android/service/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_1c

    :sswitch_3c
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/h;->a(I)V

    goto :goto_9

    :sswitch_49
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_9

    :sswitch_59
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/h;->b()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_69
    const-string v2, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/h;->c()Lcom/spotify/mobile/android/service/ConnectDevice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_7e

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lcom/spotify/mobile/android/service/ConnectDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_9

    :cond_7e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_82
    const-string v2, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/h;->d()Lcom/spotify/mobile/android/service/ConnectDevice;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_98

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v2, p3, v1}, Lcom/spotify/mobile/android/service/ConnectDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    :cond_98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_9d
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/h;->e()V

    goto/16 :goto_9

    :sswitch_a7
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/h;->a(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_b5
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/h;->f()V

    goto/16 :goto_9

    :sswitch_bf
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/h;->a(F)V

    goto/16 :goto_9

    :sswitch_cd
    const-string v2, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_d9

    move v0, v1

    :cond_d9
    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/h;->a(Z)V

    goto/16 :goto_9

    :sswitch_de
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/h;->g()F

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_9

    :sswitch_ef
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/h;->h()V

    goto/16 :goto_9

    :sswitch_f9
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/h;->i()V

    goto/16 :goto_9

    :sswitch_103
    const-string v2, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/h;->j()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_112

    move v0, v1

    :cond_112
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :sswitch_117
    const-string v0, "com.spotify.mobile.android.service.IConnectManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/h;->b(Ljava/lang/String;)V

    goto/16 :goto_9

    nop

    :sswitch_data_126
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3c
        0x3 -> :sswitch_49
        0x4 -> :sswitch_59
        0x5 -> :sswitch_69
        0x6 -> :sswitch_82
        0x7 -> :sswitch_9d
        0x8 -> :sswitch_a7
        0x9 -> :sswitch_b5
        0xa -> :sswitch_bf
        0xb -> :sswitch_cd
        0xc -> :sswitch_de
        0xd -> :sswitch_ef
        0xe -> :sswitch_f9
        0xf -> :sswitch_103
        0x10 -> :sswitch_117
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
