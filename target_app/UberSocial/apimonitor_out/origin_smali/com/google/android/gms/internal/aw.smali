.class public abstract Lcom/google/android/gms/internal/aw;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/internal/av;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/aw;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/av;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/internal/av;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/internal/av;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ax;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ax;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13

    const/4 v0, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_128

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    :sswitch_a
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    goto :goto_9

    :sswitch_11
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4b

    sget-object v2, Lcom/google/android/gms/internal/ab;->CREATOR:Lcom/google/android/gms/internal/c;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/c;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ab;

    move-result-object v2

    :goto_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4d

    sget-object v0, Lcom/google/android/gms/internal/z;->CREATOR:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/z;

    move-result-object v3

    :goto_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/az;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ay;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto :goto_9

    :cond_4b
    move-object v2, v0

    goto :goto_2a

    :cond_4d
    move-object v3, v0

    goto :goto_36

    :sswitch_4f
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aw;->a()Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v1, :cond_61

    invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_61
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    move v0, v7

    goto :goto_9

    :sswitch_66
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7f

    sget-object v0, Lcom/google/android/gms/internal/z;->CREATOR:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/z;

    move-result-object v0

    :cond_7f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/az;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ay;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/z;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_9

    :sswitch_94
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aw;->b()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_9

    :sswitch_a2
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aw;->c()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_9

    :sswitch_b0
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_ef

    sget-object v2, Lcom/google/android/gms/internal/ab;->CREATOR:Lcom/google/android/gms/internal/c;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/c;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ab;

    move-result-object v2

    :goto_c9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_f1

    sget-object v0, Lcom/google/android/gms/internal/z;->CREATOR:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/z;

    move-result-object v3

    :goto_d5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/az;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ay;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/ab;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_9

    :cond_ef
    move-object v2, v0

    goto :goto_c9

    :cond_f1
    move-object v3, v0

    goto :goto_d5

    :sswitch_f3
    const-string v1, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_126

    sget-object v0, Lcom/google/android/gms/internal/z;->CREATOR:Lcom/google/android/gms/internal/b;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/b;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/z;

    move-result-object v2

    :goto_10c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/az;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ay;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/aw;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/internal/z;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ay;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    goto/16 :goto_9

    :cond_126
    move-object v2, v0

    goto :goto_10c

    :sswitch_data_128
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_4f
        0x3 -> :sswitch_66
        0x4 -> :sswitch_94
        0x5 -> :sswitch_a2
        0x6 -> :sswitch_b0
        0x7 -> :sswitch_f3
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
