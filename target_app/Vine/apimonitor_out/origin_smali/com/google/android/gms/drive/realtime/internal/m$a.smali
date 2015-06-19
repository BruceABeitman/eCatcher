.class public abstract Lcom/google/android/gms/drive/realtime/internal/m$a;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/drive/realtime/internal/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/drive/realtime/internal/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/drive/realtime/internal/m$a$a;
    }
.end annotation


# direct methods
.method public static ac(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/m;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/drive/realtime/internal/m;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/m;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/drive/realtime/internal/m$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/drive/realtime/internal/m$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v6, 0x1

    sparse-switch p1, :sswitch_data_44e

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v6

    goto :goto_9

    :sswitch_11
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/n$a;->ad(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/n;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/n;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_9

    :sswitch_2a
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->S(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/c;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_9

    :sswitch_3f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_9

    :sswitch_54
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->S(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Lcom/google/android/gms/drive/realtime/internal/c;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_9

    :sswitch_69
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto :goto_9

    :sswitch_7e
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/realtime/internal/f$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/f;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/f;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_9c
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/l$a;->ab(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/l;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/l;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_b6
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_cb

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :cond_cb
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/realtime/internal/j$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_dc
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/j$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_f6
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/f$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/f;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/f;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_110
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/realtime/internal/g$a;->W(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/g;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/g;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_12e
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/l$a;->ab(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/l;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/l;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_148
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/n$a;->ad(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/n;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/n;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_162
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/realtime/internal/j$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_184
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/realtime/internal/j$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;IILcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_1a6
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/realtime/internal/j$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_1c4
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/f$a;->V(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/f;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/f;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_1de
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/l$a;->ab(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/l;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->c(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/l;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_1f8
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_211

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :cond_211
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/realtime/internal/j$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_222
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_23b

    sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    :cond_23b
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/realtime/internal/g$a;->W(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/g;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;ILcom/google/android/gms/common/data/DataHolder;Lcom/google/android/gms/drive/realtime/internal/g;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_24c
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/drive/realtime/internal/g$a;->W(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/g;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;IILcom/google/android/gms/drive/realtime/internal/g;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_26e
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/j$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;ILjava/lang/String;ILcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_295
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2a8

    sget-object v0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;

    :cond_2a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/BeginCompoundOperationRequest;Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_2b9
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2cc

    sget-object v0, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;

    :cond_2cc
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/EndCompoundOperationRequest;Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_2dd
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/j$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_2f3
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/j$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Lcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_309
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->S(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->c(Lcom/google/android/gms/drive/realtime/internal/c;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_31f
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/c$a;->S(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->d(Lcom/google/android/gms/drive/realtime/internal/c;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_335
    const-string v1, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_348

    sget-object v0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;

    :cond_348
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/n$a;->ad(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/n;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/ParcelableIndexReference;Lcom/google/android/gms/drive/realtime/internal/n;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_359
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/k$a;->aa(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/k;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/k;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_373
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;ILcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_391
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/l$a;->ab(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/l;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/l;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_3a7
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/j$a;->Z(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/j;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(ILcom/google/android/gms/drive/realtime/internal/j;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_3c1
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/e$a;->U(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/e;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/e;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_3d7
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/d$a;->T(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/d;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/d;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_3ed
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/i$a;->Y(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/i;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_403
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/drive/realtime/internal/h$a;->X(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Lcom/google/android/gms/drive/realtime/internal/h;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_419
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->a(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    :sswitch_433
    const-string v0, "com.google.android.gms.drive.realtime.internal.IRealtimeService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/drive/realtime/internal/o$a;->ae(Landroid/os/IBinder;)Lcom/google/android/gms/drive/realtime/internal/o;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/drive/realtime/internal/m$a;->b(Ljava/lang/String;Lcom/google/android/gms/drive/realtime/internal/o;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v6

    goto/16 :goto_9

    nop

    :sswitch_data_44e
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_2a
        0x3 -> :sswitch_3f
        0x4 -> :sswitch_7e
        0x5 -> :sswitch_9c
        0x6 -> :sswitch_b6
        0x7 -> :sswitch_dc
        0x8 -> :sswitch_12e
        0x9 -> :sswitch_148
        0xa -> :sswitch_162
        0xb -> :sswitch_184
        0xc -> :sswitch_1a6
        0xd -> :sswitch_1c4
        0xe -> :sswitch_1de
        0xf -> :sswitch_1f8
        0x10 -> :sswitch_222
        0x11 -> :sswitch_24c
        0x12 -> :sswitch_295
        0x13 -> :sswitch_2b9
        0x14 -> :sswitch_f6
        0x15 -> :sswitch_110
        0x16 -> :sswitch_2dd
        0x17 -> :sswitch_2f3
        0x18 -> :sswitch_309
        0x19 -> :sswitch_31f
        0x1a -> :sswitch_335
        0x1b -> :sswitch_359
        0x1c -> :sswitch_373
        0x1d -> :sswitch_391
        0x1e -> :sswitch_3a7
        0x1f -> :sswitch_3c1
        0x20 -> :sswitch_3d7
        0x21 -> :sswitch_54
        0x22 -> :sswitch_3ed
        0x23 -> :sswitch_69
        0x24 -> :sswitch_403
        0x25 -> :sswitch_26e
        0x26 -> :sswitch_419
        0x27 -> :sswitch_433
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
