.class public abstract Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/games/internal/IGamesSignInService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/IGamesSignInService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_130

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_8
    return v6

    :sswitch_9
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->bc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_23
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->bd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_37
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_52

    move v0, v6

    :goto_47
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->f(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :cond_52
    const/4 v0, 0x0

    goto :goto_47

    :sswitch_54
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_79
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_9a
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_bb
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->a(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_d8
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_f9
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/games/internal/IGamesSignInCallbacks$Stub;->ak(Landroid/os/IBinder;)Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->b(Lcom/google/android/gms/games/internal/IGamesSignInCallbacks;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_11a
    const-string v0, "com.google.android.gms.games.internal.IGamesSignInService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/games/internal/IGamesSignInService$Stub;->o(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    nop

    :sswitch_data_130
    .sparse-switch
        0x1389 -> :sswitch_f
        0x138a -> :sswitch_23
        0x138b -> :sswitch_54
        0x138c -> :sswitch_79
        0x138d -> :sswitch_9a
        0x138e -> :sswitch_bb
        0x138f -> :sswitch_d8
        0x1390 -> :sswitch_f9
        0x1391 -> :sswitch_37
        0x2329 -> :sswitch_11a
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
