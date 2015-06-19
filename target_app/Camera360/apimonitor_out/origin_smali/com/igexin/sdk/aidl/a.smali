.class public abstract Lcom/igexin/sdk/aidl/a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/igexin/sdk/aidl/ICACallback;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/ICACallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string/jumbo v0, "com.igexin.sdk.aidl.ICACallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/igexin/sdk/aidl/ICACallback;

    if-eqz v1, :cond_14

    check-cast v0, Lcom/igexin/sdk/aidl/ICACallback;

    goto :goto_3

    :cond_14
    new-instance v0, Lcom/igexin/sdk/aidl/b;

    invoke-direct {v0, p0}, Lcom/igexin/sdk/aidl/b;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13

    const/4 v7, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_50

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_9
    return v6

    :sswitch_a
    const-string/jumbo v0, "com.igexin.sdk.aidl.ICACallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_11
    const-string/jumbo v0, "com.igexin.sdk.aidl.ICACallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/sdk/aidl/a;->onAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_36

    move v0, v6

    :goto_32
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :cond_36
    move v0, v7

    goto :goto_32

    :sswitch_38
    const-string/jumbo v0, "com.igexin.sdk.aidl.ICACallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/igexin/sdk/aidl/a;->onError(I)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_4c

    move v7, v6

    :cond_4c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    :sswitch_data_50
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_38
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
