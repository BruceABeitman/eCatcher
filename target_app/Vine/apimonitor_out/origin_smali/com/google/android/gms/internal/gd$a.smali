.class public abstract Lcom/google/android/gms/internal/gd$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/gd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gd$a$a;
    }
.end annotation


# direct methods
.method public static F(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gd;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.appstate.internal.IAppStateService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/gd;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/gd;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/gd$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gd$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_dc

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gd$a;->dP()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_1f
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gd$a;->dQ()I

    move-result v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :sswitch_2f
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gc$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gc;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/gd$a;->a(Lcom/google/android/gms/internal/gc;I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_4b
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gc$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gc;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/gd$a;->a(Lcom/google/android/gms/internal/gc;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_63
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gc$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gc;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gd$a;->a(Lcom/google/android/gms/internal/gc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :sswitch_77
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gc$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gc;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/gd$a;->a(Lcom/google/android/gms/internal/gc;ILjava/lang/String;[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_98
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gc$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gc;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gms/internal/gd$a;->b(Lcom/google/android/gms/internal/gc;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_b1
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gc$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gc;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gd$a;->b(Lcom/google/android/gms/internal/gc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    :sswitch_c6
    const-string v1, "com.google.android.gms.appstate.internal.IAppStateService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gc$a;->E(Landroid/os/IBinder;)Lcom/google/android/gms/internal/gc;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gd$a;->c(Lcom/google/android/gms/internal/gc;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_8

    nop

    :sswitch_data_dc
    .sparse-switch
        0x1389 -> :sswitch_f
        0x138a -> :sswitch_1f
        0x138b -> :sswitch_2f
        0x138c -> :sswitch_4b
        0x138d -> :sswitch_63
        0x138e -> :sswitch_77
        0x138f -> :sswitch_98
        0x1390 -> :sswitch_b1
        0x1391 -> :sswitch_c6
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
