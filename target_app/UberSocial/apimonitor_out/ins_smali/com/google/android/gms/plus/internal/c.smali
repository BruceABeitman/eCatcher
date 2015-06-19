.class public abstract Lcom/google/android/gms/plus/internal/c;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/plus/internal/b;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/plus/internal/c;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/b;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/plus/internal/b;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/plus/internal/b;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/plus/internal/d;
invoke-direct {v0, p0}, Lcom/google/android/gms/plus/internal/d;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 10
const/4 v2, 0x0
const/4 v3, 0x1
sparse-switch p1, :sswitch_data_160
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v3
goto :goto_9
:sswitch_11
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_3f
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
move-object v1, v0
:goto_29
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_41
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_37
invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/plus/internal/c;->a(ILandroid/os/Bundle;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto :goto_9
:cond_3f
move-object v1, v2
goto :goto_29
:cond_41
move-object v0, v2
goto :goto_37
:sswitch_43
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_71
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
move-object v1, v0
:goto_5b
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_73
sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/ParcelFileDescriptor;
:goto_69
invoke-virtual {p0, v4, v1, v0}, Lcom/google/android/gms/plus/internal/c;->a(ILandroid/os/Bundle;Landroid/os/ParcelFileDescriptor;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto :goto_9
:cond_71
move-object v1, v2
goto :goto_5b
:cond_73
move-object v0, v2
goto :goto_69
:sswitch_75
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/c;->a(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto :goto_9
:sswitch_86
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_97
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v2
:cond_97
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/plus/internal/c;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto/16 :goto_9
:sswitch_a4
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_d0
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_bb
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_c7
sget-object v2, Lcom/google/android/gms/internal/fh;->CREATOR:Lcom/google/android/gms/internal/jb;
invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/jb;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/fh;
move-result-object v2
:cond_c7
invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/plus/internal/c;->a(ILandroid/os/Bundle;Lcom/google/android/gms/internal/fh;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto/16 :goto_9
:cond_d0
move-object v0, v2
goto :goto_bb
:sswitch_d2
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_e3
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/e;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/e;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v2
:cond_e3
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/plus/internal/c;->a(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto/16 :goto_9
:sswitch_f4
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_114
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_10b
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/plus/internal/c;->a(ILandroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto/16 :goto_9
:cond_114
move-object v0, v2
goto :goto_10b
:sswitch_116
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/plus/internal/c;->b(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto/16 :goto_9
:sswitch_128
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_13d
sget-object v1, Lcom/google/android/gms/internal/ir;->CREATOR:Lcom/google/android/gms/internal/rd;
invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/rd;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/ir;
move-result-object v2
:cond_13d
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/plus/internal/c;->a(ILcom/google/android/gms/internal/ir;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto/16 :goto_9
:sswitch_146
const-string v0, "com.google.android.gms.plus.internal.IPlusCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_157
sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/p;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/p;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;
move-result-object v2
:cond_157
invoke-virtual {p0, v2}, Lcom/google/android/gms/plus/internal/c;->a(Lcom/google/android/gms/common/api/Status;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v3
goto/16 :goto_9
:sswitch_data_160
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_43
0x3 -> :sswitch_75
0x4 -> :sswitch_86
0x5 -> :sswitch_a4
0x6 -> :sswitch_d2
0x7 -> :sswitch_f4
0x8 -> :sswitch_116
0x9 -> :sswitch_128
0xa -> :sswitch_146
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method