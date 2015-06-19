.class public abstract Lcom/google/android/gms/drive/realtime/internal/c$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/realtime/internal/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/realtime/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/realtime/internal/c$a$a;
    }
.end annotation


# direct methods
.method public static S(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/c;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/drive/realtime/internal/c;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/c;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/c$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/realtime/internal/c$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_3e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_8
    return v1

    :sswitch_9
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    :sswitch_f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_22

    move v0, v1

    :goto_1b
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->D(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :cond_22
    const/4 v0, 0x0

    goto :goto_1b

    :sswitch_24
    const-string v0, "com.google.android.gms.drive.realtime.internal.IBooleanCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    :goto_35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->o(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_8

    :cond_3c
    const/4 v0, 0x0

    goto :goto_35

    :sswitch_data_3e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_24
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
