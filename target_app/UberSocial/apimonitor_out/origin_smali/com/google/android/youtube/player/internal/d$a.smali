.class public abstract Lcom/google/android/youtube/player/internal/d$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/youtube/player/internal/d;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/youtube/player/internal/d;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/youtube/player/internal/d;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/youtube/player/internal/d;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/youtube/player/internal/d$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/player/internal/d$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_3ae

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    :sswitch_b
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    :sswitch_11
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    :goto_1d
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->a(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :cond_24
    move v0, v2

    goto :goto_1d

    :sswitch_26
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/player/internal/d$a;->a(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_3a
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/google/android/youtube/player/internal/d$a;->b(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_4e
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/youtube/player/internal/d$a;->a(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_66
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/youtube/player/internal/d$a;->b(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    :sswitch_7e
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/youtube/player/internal/d$a;->a(Ljava/util/List;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_97
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/youtube/player/internal/d$a;->b(Ljava/util/List;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_b0
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->a()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_bd
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->b()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_ca
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->c()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_d9

    move v2, v1

    :cond_d9
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_de
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->d()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_ed

    move v2, v1

    :cond_ed
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_f2
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->e()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_101

    move v2, v1

    :cond_101
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_106
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->f()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_113
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->g()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_120
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->h()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_131
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->i()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_142
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->a(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_153
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->b(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_164
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_170

    move v2, v1

    :cond_170
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/player/internal/d$a;->b(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_178
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->c(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_189
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->j()I

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_19a
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->d(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1ab
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1bc
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1c8

    move v2, v1

    :cond_1c8
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/player/internal/d$a;->c(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1d0
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1dc

    move v2, v1

    :cond_1dc
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/player/internal/d$a;->d(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_1e4
    const-string v2, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_1f7

    :goto_1ef
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->a(Lcom/google/android/youtube/player/internal/e;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_1f7
    const-string v0, "com.google.android.youtube.player.internal.IOnFullscreenListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_206

    instance-of v3, v0, Lcom/google/android/youtube/player/internal/e;

    if-eqz v3, :cond_206

    check-cast v0, Lcom/google/android/youtube/player/internal/e;

    goto :goto_1ef

    :cond_206
    new-instance v0, Lcom/google/android/youtube/player/internal/e$a$a;

    invoke-direct {v0, v2}, Lcom/google/android/youtube/player/internal/e$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_1ef

    :sswitch_20c
    const-string v2, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_21f

    :goto_217
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->a(Lcom/google/android/youtube/player/internal/h;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_21f
    const-string v0, "com.google.android.youtube.player.internal.IPlaylistEventListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_22e

    instance-of v3, v0, Lcom/google/android/youtube/player/internal/h;

    if-eqz v3, :cond_22e

    check-cast v0, Lcom/google/android/youtube/player/internal/h;

    goto :goto_217

    :cond_22e
    new-instance v0, Lcom/google/android/youtube/player/internal/h$a$a;

    invoke-direct {v0, v2}, Lcom/google/android/youtube/player/internal/h$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_217

    :sswitch_234
    const-string v2, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_247

    :goto_23f
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->a(Lcom/google/android/youtube/player/internal/g;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_247
    const-string v0, "com.google.android.youtube.player.internal.IPlayerStateChangeListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_256

    instance-of v3, v0, Lcom/google/android/youtube/player/internal/g;

    if-eqz v3, :cond_256

    check-cast v0, Lcom/google/android/youtube/player/internal/g;

    goto :goto_23f

    :cond_256
    new-instance v0, Lcom/google/android/youtube/player/internal/g$a$a;

    invoke-direct {v0, v2}, Lcom/google/android/youtube/player/internal/g$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_23f

    :sswitch_25c
    const-string v2, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_26f

    :goto_267
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->a(Lcom/google/android/youtube/player/internal/f;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :cond_26f
    const-string v0, "com.google.android.youtube.player.internal.IPlaybackEventListener"

    invoke-interface {v2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_27e

    instance-of v3, v0, Lcom/google/android/youtube/player/internal/f;

    if-eqz v3, :cond_27e

    check-cast v0, Lcom/google/android/youtube/player/internal/f;

    goto :goto_267

    :cond_27e
    new-instance v0, Lcom/google/android/youtube/player/internal/f$a$a;

    invoke-direct {v0, v2}, Lcom/google/android/youtube/player/internal/f$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_267

    :sswitch_284
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->k()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_291
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->l()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_29e
    const-string v2, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2b1

    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    :cond_2b1
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->a(Landroid/content/res/Configuration;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_2b9
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->m()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_2c6
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->n()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_2d3
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->o()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_2e0
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->p()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_2ed
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2f9

    move v2, v1

    :cond_2f9
    invoke-virtual {p0, v2}, Lcom/google/android/youtube/player/internal/d$a;->e(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_301
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->q()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    :sswitch_30e
    const-string v0, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->r()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_324

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    :cond_324
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_329
    const-string v3, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_33c

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :cond_33c
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/player/internal/d$a;->a(Landroid/os/Bundle;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_346

    move v2, v1

    :cond_346
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_34b
    const-string v3, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_362

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    :cond_362
    invoke-virtual {p0, v3, v0}, Lcom/google/android/youtube/player/internal/d$a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_36c

    move v2, v1

    :cond_36c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_371
    const-string v3, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_388

    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    :cond_388
    invoke-virtual {p0, v3, v0}, Lcom/google/android/youtube/player/internal/d$a;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_392

    move v2, v1

    :cond_392
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    :sswitch_397
    const-string v2, "com.google.android.youtube.player.internal.IEmbeddedPlayer"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/d$a;->s()Lcom/google/android/youtube/player/internal/u;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3a9

    invoke-interface {v2}, Lcom/google/android/youtube/player/internal/u;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3a9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_a

    :sswitch_data_3ae
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_26
        0x3 -> :sswitch_3a
        0x4 -> :sswitch_4e
        0x5 -> :sswitch_66
        0x6 -> :sswitch_7e
        0x7 -> :sswitch_97
        0x8 -> :sswitch_b0
        0x9 -> :sswitch_bd
        0xa -> :sswitch_ca
        0xb -> :sswitch_de
        0xc -> :sswitch_f2
        0xd -> :sswitch_106
        0xe -> :sswitch_113
        0xf -> :sswitch_120
        0x10 -> :sswitch_131
        0x11 -> :sswitch_142
        0x12 -> :sswitch_153
        0x13 -> :sswitch_164
        0x14 -> :sswitch_178
        0x15 -> :sswitch_189
        0x16 -> :sswitch_19a
        0x17 -> :sswitch_1ab
        0x18 -> :sswitch_1bc
        0x19 -> :sswitch_1d0
        0x1a -> :sswitch_1e4
        0x1b -> :sswitch_20c
        0x1c -> :sswitch_234
        0x1d -> :sswitch_25c
        0x1e -> :sswitch_284
        0x1f -> :sswitch_291
        0x20 -> :sswitch_29e
        0x21 -> :sswitch_2b9
        0x22 -> :sswitch_2c6
        0x23 -> :sswitch_2d3
        0x24 -> :sswitch_2e0
        0x25 -> :sswitch_2ed
        0x26 -> :sswitch_301
        0x27 -> :sswitch_30e
        0x28 -> :sswitch_329
        0x29 -> :sswitch_34b
        0x2a -> :sswitch_371
        0x2b -> :sswitch_397
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
