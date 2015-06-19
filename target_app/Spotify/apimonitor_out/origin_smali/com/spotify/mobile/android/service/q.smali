.class public abstract Lcom/spotify/mobile/android/service/q;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/p;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.spotify.mobile.android.service.ISession"

    invoke-virtual {p0, p0, v0}, Lcom/spotify/mobile/android/service/q;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/spotify/mobile/android/service/p;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.spotify.mobile.android.service.ISession"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/spotify/mobile/android/service/p;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/spotify/mobile/android/service/p;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/spotify/mobile/android/service/r;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/r;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_62

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v0, "com.spotify.mobile.android.service.ISession"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.spotify.mobile.android.service.ISession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/spotify/mobile/android/service/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_20
    const-string v0, "com.spotify.mobile.android.service.ISession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_38

    move v0, v1

    :goto_34
    invoke-virtual {p0, v2, v3, v0}, Lcom/spotify/mobile/android/service/q;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_8

    :cond_38
    const/4 v0, 0x0

    goto :goto_34

    :sswitch_3a
    const-string v0, "com.spotify.mobile.android.service.ISession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/spotify/mobile/android/service/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :sswitch_4b
    const-string v0, "com.spotify.mobile.android.service.ISession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/q;->a()V

    goto :goto_8

    :sswitch_54
    const-string v0, "com.spotify.mobile.android.service.ISession"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/q;->a(Ljava/lang/String;)V

    goto :goto_8

    nop

    :sswitch_data_62
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_54
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
