.class public abstract Lcom/google/android/gms/plus/internal/d$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/plus/internal/d;
.method public static bm(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/d;
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
instance-of v1, v0, Lcom/google/android/gms/plus/internal/d;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/plus/internal/d;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/plus/internal/d$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/plus/internal/d$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 13
const/4 v6, 0x0
const/4 v7, 0x1
sparse-switch p1, :sswitch_data_254
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
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_28
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_44
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->b(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_5c
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_74
sget-object v0, Lcom/google/android/gms/internal/if;->CREATOR:Lcom/google/android/gms/internal/ig;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ig;->L(Landroid/os/Parcel;)Lcom/google/android/gms/internal/if;
move-result-object v0
:goto_6d
invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/internal/if;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:cond_74
move-object v0, v6
goto :goto_6d
:sswitch_76
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->getAccountName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_86
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->clearDefaultAccount()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_93
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_a8
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
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
invoke-virtual {p0, v2, v1, v0}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Landroid/net/Uri;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_da
move-object v1, v6
goto :goto_c4
:cond_dc
move-object v0, v6
goto :goto_d2
:sswitch_de
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_113
sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/Uri;
move-object v4, v0
:goto_102
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v5
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v6
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_113
move-object v4, v6
goto :goto_102
:sswitch_115
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
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
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;IIILjava/lang/String;)Lcom/google/android/gms/internal/hh;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_140
invoke-interface {v0}, Lcom/google/android/gms/internal/hh;->asBinder()Landroid/os/IBinder;
move-result-object v6
:cond_140
invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
goto/16 :goto_9
:sswitch_145
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->removeMoment(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_156
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->c(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_16f
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/d$a;->b(Lcom/google/android/gms/plus/internal/b;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_184
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Ljava/util/List;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_19d
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->d(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1b6
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->jP()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto/16 :goto_9
:sswitch_1c7
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->jQ()Z
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_1db
move v0, v7
:goto_1d6
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:cond_1db
const/4 v0, 0x0
goto :goto_1d6
:sswitch_1dd
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/plus/internal/d$a;->jR()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto/16 :goto_9
:sswitch_1ee
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/plus/internal/d$a;->e(Lcom/google/android/gms/plus/internal/b;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_207
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/plus/internal/b$a;->bk(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_220
sget-object v1, Lcom/google/android/gms/internal/if;->CREATOR:Lcom/google/android/gms/internal/ig;
invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ig;->L(Landroid/os/Parcel;)Lcom/google/android/gms/internal/if;
move-result-object v6
:cond_220
invoke-virtual {p0, v0, v6}, Lcom/google/android/gms/plus/internal/d$a;->a(Lcom/google/android/gms/plus/internal/b;Lcom/google/android/gms/internal/if;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_228
const-string v0, "com.google.android.gms.plus.internal.IPlusService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_251
sget-object v0, Lcom/google/android/gms/internal/hs;->CREATOR:Lcom/google/android/gms/internal/ht;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ht;->D(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hs;
move-result-object v0
:goto_23d
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_249
sget-object v2, Lcom/google/android/gms/internal/hs;->CREATOR:Lcom/google/android/gms/internal/ht;
invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ht;->D(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hs;
move-result-object v6
:cond_249
invoke-virtual {p0, v1, v0, v6}, Lcom/google/android/gms/plus/internal/d$a;->a(Ljava/lang/String;Lcom/google/android/gms/internal/hs;Lcom/google/android/gms/internal/hs;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:cond_251
move-object v0, v6
goto :goto_23d
nop
:sswitch_data_254
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
0x10 -> :sswitch_115
0x11 -> :sswitch_145
0x12 -> :sswitch_156
0x13 -> :sswitch_16f
0x22 -> :sswitch_184
0x28 -> :sswitch_19d
0x29 -> :sswitch_1b6
0x2a -> :sswitch_1c7
0x2b -> :sswitch_1dd
0x2c -> :sswitch_1ee
0x2d -> :sswitch_207
0x2e -> :sswitch_228
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method