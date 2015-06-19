.class public abstract Lcom/spotify/mobile/android/service/n;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/m;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.spotify.mobile.android.service.IServiceShutdownReceiver"

    invoke-virtual {p0, p0, v0}, Lcom/spotify/mobile/android/service/n;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/spotify/mobile/android/service/m;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.spotify.mobile.android.service.IServiceShutdownReceiver"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/spotify/mobile/android/service/m;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/spotify/mobile/android/service/m;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/spotify/mobile/android/service/o;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/o;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_18

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v1, "com.spotify.mobile.android.service.IServiceShutdownReceiver"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v1, "com.spotify.mobile.android.service.IServiceShutdownReceiver"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/n;->a()V

    goto :goto_8

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
