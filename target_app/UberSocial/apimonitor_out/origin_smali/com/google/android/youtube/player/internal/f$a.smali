.class public abstract Lcom/google/android/youtube/player/internal/f$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/youtube/player/internal/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.youtube.player.internal.IPlaybackEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/youtube/player/internal/f$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_58

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v0, "com.google.android.youtube.player.internal.IPlaybackEventListener"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.google.android.youtube.player.internal.IPlaybackEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/f$a;->a()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_1b
    const-string v0, "com.google.android.youtube.player.internal.IPlaybackEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/f$a;->b()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_27
    const-string v0, "com.google.android.youtube.player.internal.IPlaybackEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/f$a;->c()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_33
    const-string v0, "com.google.android.youtube.player.internal.IPlaybackEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_46

    move v0, v1

    :goto_3f
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/f$a;->a(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :cond_46
    const/4 v0, 0x0

    goto :goto_3f

    :sswitch_48
    const-string v0, "com.google.android.youtube.player.internal.IPlaybackEventListener"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/f$a;->a(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_27
        0x4 -> :sswitch_33
        0x5 -> :sswitch_48
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
