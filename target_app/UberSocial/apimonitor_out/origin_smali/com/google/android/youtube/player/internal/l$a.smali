.class public abstract Lcom/google/android/youtube/player/internal/l$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/youtube/player/internal/l;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/youtube/player/internal/l;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.youtube.player.internal.IYouTubeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/youtube/player/internal/l;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/youtube/player/internal/l;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/youtube/player/internal/l$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/player/internal/l$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_68

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    :sswitch_a
    const-string v0, "com.google.android.youtube.player.internal.IYouTubeService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v0, "com.google.android.youtube.player.internal.IYouTubeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/l$a;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_9

    :sswitch_20
    const-string v0, "com.google.android.youtube.player.internal.IYouTubeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_3d

    move-object v0, v1

    :goto_2c
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/l$a;->a(Lcom/google/android/youtube/player/internal/j;)Lcom/google/android/youtube/player/internal/k;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_39

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/k;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_39
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_9

    :cond_3d
    const-string v0, "com.google.android.youtube.player.internal.IThumbnailLoaderClient"

    invoke-interface {v3, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_4c

    instance-of v4, v0, Lcom/google/android/youtube/player/internal/j;

    if-eqz v4, :cond_4c

    check-cast v0, Lcom/google/android/youtube/player/internal/j;

    goto :goto_2c

    :cond_4c
    new-instance v0, Lcom/google/android/youtube/player/internal/j$a$a;

    invoke-direct {v0, v3}, Lcom/google/android/youtube/player/internal/j$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_2c

    :sswitch_52
    const-string v0, "com.google.android.youtube.player.internal.IYouTubeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_65

    move v0, v2

    :goto_5e
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/l$a;->a(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :cond_65
    const/4 v0, 0x0

    goto :goto_5e

    nop

    :sswitch_data_68
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_20
        0x3 -> :sswitch_52
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
