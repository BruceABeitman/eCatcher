.class public abstract Lcom/google/android/gms/internal/gn$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/gn;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/gn$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 11
const/4 v1, 0x0
const/4 v0, 0x0
const/4 v2, 0x1
sparse-switch p1, :sswitch_data_10e
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v2
:goto_a
return v2
:sswitch_b
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_a
:sswitch_11
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gn$a;->T(I)V
goto :goto_a
:sswitch_1e
const-string v3, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_31
sget-object v0, Lcom/google/android/gms/cast/ApplicationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/cast/ApplicationMetadata;
:cond_31
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v5
if-eqz v5, :cond_40
move v1, v2
:cond_40
invoke-virtual {p0, v0, v3, v4, v1}, Lcom/google/android/gms/internal/gn$a;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
goto :goto_a
:sswitch_44
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gn$a;->U(I)V
goto :goto_a
:sswitch_51
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D
move-result-wide v3
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v5
if-eqz v5, :cond_65
move v1, v2
:cond_65
invoke-virtual {p0, v0, v3, v4, v1}, Lcom/google/android/gms/internal/gn$a;->a(Ljava/lang/String;DZ)V
goto :goto_a
:sswitch_69
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gn$a;->g(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a
:sswitch_7a
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gn$a;->b(Ljava/lang/String;[B)V
goto :goto_a
:sswitch_8b
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gn$a;->W(I)V
goto/16 :goto_a
:sswitch_99
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gn$a;->V(I)V
goto/16 :goto_a
:sswitch_a7
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gn$a;->onApplicationDisconnected(I)V
goto/16 :goto_a
:sswitch_b5
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p0, v0, v3, v4, v1}, Lcom/google/android/gms/internal/gn$a;->a(Ljava/lang/String;JI)V
goto/16 :goto_a
:sswitch_cb
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gms/internal/gn$a;->a(Ljava/lang/String;J)V
goto/16 :goto_a
:sswitch_dd
const-string v1, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_f0
sget-object v0, Lcom/google/android/gms/internal/gf;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gf;
:cond_f0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gn$a;->b(Lcom/google/android/gms/internal/gf;)V
goto/16 :goto_a
:sswitch_f5
const-string v1, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_108
sget-object v0, Lcom/google/android/gms/internal/gk;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/gk;
:cond_108
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gn$a;->b(Lcom/google/android/gms/internal/gk;)V
goto/16 :goto_a
nop
:sswitch_data_10e
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_1e
0x3 -> :sswitch_44
0x4 -> :sswitch_51
0x5 -> :sswitch_69
0x6 -> :sswitch_7a
0x7 -> :sswitch_8b
0x8 -> :sswitch_99
0x9 -> :sswitch_a7
0xa -> :sswitch_b5
0xb -> :sswitch_cb
0xc -> :sswitch_dd
0xd -> :sswitch_f5
0x5f4e5446 -> :sswitch_b
.end sparse-switch
.end method