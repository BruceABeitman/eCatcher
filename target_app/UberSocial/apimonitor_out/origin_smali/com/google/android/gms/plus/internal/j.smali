.class public abstract Lcom/google/android/gms/plus/internal/j;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/google/android/gms/plus/internal/i;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/i;
    .registers 3

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/gms/plus/internal/i;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/google/android/gms/plus/internal/i;

    goto :goto_3

    :cond_13
    new-instance v0, Lcom/google/android/gms/plus/internal/k;

    invoke-direct {v0, p0}, Lcom/google/android/gms/plus/internal/k;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13

    const/4 v4, 0x0

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_21c

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    :sswitch_a
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_10
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/j;->a(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_28
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/plus/internal/j;->a(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_44
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/j;->b(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :sswitch_5c
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_74

    sget-object v0, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/jb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fh;

    move-result-object v0

    :goto_6d
    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/j;->a(Lcom/google/android/gms/internal/fh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_9

    :cond_74
    move-object v0, v4

    goto :goto_6d

    :sswitch_76
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    :sswitch_86
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/j;->b()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_93
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/j;->a(Lcom/google/android/gms/plus/internal/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_a8
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_da

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v1, v0

    :goto_c4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_dc

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_d2
    invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/plus/internal/j;->a(Lcom/google/android/gms/plus/internal/b;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :cond_da
    move-object v1, v4

    goto :goto_c4

    :cond_dc
    move-object v0, v4

    goto :goto_d2

    :sswitch_de
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_102

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    move-object v4, v0

    :cond_102
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/j;->a(Lcom/google/android/gms/plus/internal/b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_113
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/j;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_139
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/j;->a(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_14a
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/j;->c(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_163
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/j;->b(Lcom/google/android/gms/plus/internal/b;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_178
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/j;->a(Lcom/google/android/gms/plus/internal/b;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_191
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/j;->d(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_1aa
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/j;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_1bb
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/j;->d()Z

    move-result v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v0, :cond_1cf

    move v0, v7

    :goto_1ca
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    :cond_1cf
    const/4 v0, 0x0

    goto :goto_1ca

    :sswitch_1d1
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/j;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_9

    :sswitch_1e2
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/j;->e(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_1fb
    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/plus/internal/c;->a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_214

    sget-object v1, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/jb;

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/jb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fh;

    move-result-object v4

    :cond_214
    invoke-virtual {p0, v0, v4}, Lcom/google/android/gms/plus/internal/j;->a(Lcom/google/android/gms/plus/internal/b;Lcom/google/android/gms/internal/fh;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_9

    :sswitch_data_21c
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_28
        0x3 -> :sswitch_44
        0x4 -> :sswitch_5c
        0x5 -> :sswitch_76
        0x6 -> :sswitch_86
        0x8 -> :sswitch_93
        0x9 -> :sswitch_a8
        0xe -> :sswitch_de
        0x10 -> :sswitch_113
        0x11 -> :sswitch_139
        0x12 -> :sswitch_14a
        0x13 -> :sswitch_163
        0x22 -> :sswitch_178
        0x28 -> :sswitch_191
        0x29 -> :sswitch_1aa
        0x2a -> :sswitch_1bb
        0x2b -> :sswitch_1d1
        0x2c -> :sswitch_1e2
        0x2d -> :sswitch_1fb
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
