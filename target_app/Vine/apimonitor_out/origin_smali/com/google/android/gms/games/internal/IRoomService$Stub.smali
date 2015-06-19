.class public abstract Lcom/google/android/gms/games/internal/IRoomService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IRoomService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IRoomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IRoomService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_f6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_9
    return v2

    :sswitch_a
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/games/internal/IRoomServiceCallbacks$Stub;->am(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a(Landroid/os/IBinder;Lcom/google/android/gms/games/internal/IRoomServiceCallbacks;)V

    goto :goto_9

    :sswitch_25
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->hA()V

    goto :goto_9

    :sswitch_2e
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->hB()V

    goto :goto_9

    :sswitch_37
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :sswitch_4c
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->hC()V

    goto :goto_9

    :sswitch_55
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_71

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :goto_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6d

    move v1, v2

    :cond_6d
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a(Lcom/google/android/gms/common/data/DataHolder;Z)V

    goto :goto_9

    :cond_71
    const/4 v0, 0x0

    goto :goto_66

    :sswitch_73
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->hD()V

    goto :goto_9

    :sswitch_7c
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_88

    move v1, v2

    :cond_88
    invoke-virtual {p0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->G(Z)V

    goto/16 :goto_9

    :sswitch_8d
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a([BLjava/lang/String;I)V

    goto/16 :goto_9

    :sswitch_a3
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->a([B[Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_b5
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->r(Ljava/lang/String;I)V

    goto/16 :goto_9

    :sswitch_c7
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->s(Ljava/lang/String;I)V

    goto/16 :goto_9

    :sswitch_d9
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->be(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_e7
    const-string v0, "com.google.android.gms.games.internal.IRoomService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IRoomService$Stub;->bf(Ljava/lang/String;)V

    goto/16 :goto_9

    nop

    :sswitch_data_f6
    .sparse-switch
        0x3e9 -> :sswitch_10
        0x3ea -> :sswitch_25
        0x3eb -> :sswitch_2e
        0x3ec -> :sswitch_37
        0x3ed -> :sswitch_4c
        0x3ee -> :sswitch_55
        0x3ef -> :sswitch_73
        0x3f0 -> :sswitch_7c
        0x3f1 -> :sswitch_8d
        0x3f2 -> :sswitch_a3
        0x3f3 -> :sswitch_b5
        0x3f4 -> :sswitch_c7
        0x3f5 -> :sswitch_d9
        0x3f6 -> :sswitch_e7
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
