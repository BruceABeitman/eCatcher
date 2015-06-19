.class public abstract Lcom/google/android/youtube/player/internal/h$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/youtube/player/internal/h;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.youtube.player.internal.IPlaylistEventListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/youtube/player/internal/h$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_34

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v1, "com.google.android.youtube.player.internal.IPlaylistEventListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v1, "com.google.android.youtube.player.internal.IPlaylistEventListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/h$a;->a()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_1b
    const-string v1, "com.google.android.youtube.player.internal.IPlaylistEventListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/h$a;->b()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_27
    const-string v1, "com.google.android.youtube.player.internal.IPlaylistEventListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/h$a;->c()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    nop

    :sswitch_data_34
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_27
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
