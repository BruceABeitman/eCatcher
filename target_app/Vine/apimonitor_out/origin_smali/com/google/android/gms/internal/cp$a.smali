.class public abstract Lcom/google/android/gms/internal/cp$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/cp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/cp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/cp$a$a;
    }
.end annotation


# direct methods
.method public static n(Landroid/os/IBinder;)Lcom/google/android/gms/internal/cp;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/cp;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/cp;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/cp$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/cp$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    sparse-switch p1, :sswitch_data_28

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_8
    return v0

    :sswitch_9
    const-string v1, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v1, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/cp$a;->a(Lcom/google/android/gms/dynamic/d;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_8

    nop

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
