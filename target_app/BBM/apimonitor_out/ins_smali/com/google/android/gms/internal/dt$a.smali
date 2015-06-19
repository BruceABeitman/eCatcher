.class public abstract Lcom/google/android/gms/internal/dt$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/dt;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/dt$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 11
const/4 v1, 0x0
const/4 v2, 0x1
sparse-switch p1, :sswitch_data_e0
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v2
:goto_9
return v2
:sswitch_a
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dt$a;->z(I)V
goto :goto_9
:sswitch_1d
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_43
sget-object v0, Lcom/google/android/gms/cast/ApplicationMetadata;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/cast/ApplicationMetadata;
:goto_30
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v5
if-eqz v5, :cond_3f
move v1, v2
:cond_3f
invoke-virtual {p0, v0, v3, v4, v1}, Lcom/google/android/gms/internal/dt$a;->a(Lcom/google/android/gms/cast/ApplicationMetadata;Ljava/lang/String;Ljava/lang/String;Z)V
goto :goto_9
:cond_43
const/4 v0, 0x0
goto :goto_30
:sswitch_45
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dt$a;->A(I)V
goto :goto_9
:sswitch_52
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D
move-result-wide v3
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v5
if-eqz v5, :cond_66
move v1, v2
:cond_66
invoke-virtual {p0, v0, v3, v4, v1}, Lcom/google/android/gms/internal/dt$a;->b(Ljava/lang/String;DZ)V
goto :goto_9
:sswitch_6a
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/dt$a;->d(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9
:sswitch_7b
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/dt$a;->b(Ljava/lang/String;[B)V
goto/16 :goto_9
:sswitch_8d
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dt$a;->C(I)V
goto/16 :goto_9
:sswitch_9b
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dt$a;->B(I)V
goto/16 :goto_9
:sswitch_a9
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dt$a;->onApplicationDisconnected(I)V
goto/16 :goto_9
:sswitch_b7
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p0, v0, v3, v4, v1}, Lcom/google/android/gms/internal/dt$a;->a(Ljava/lang/String;JI)V
goto/16 :goto_9
:sswitch_cd
const-string v0, "com.google.android.gms.cast.internal.ICastDeviceControllerListener"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
invoke-virtual {p0, v0, v3, v4}, Lcom/google/android/gms/internal/dt$a;->a(Ljava/lang/String;J)V
goto/16 :goto_9
nop
:sswitch_data_e0
.sparse-switch
0x1 -> :sswitch_10
0x2 -> :sswitch_1d
0x3 -> :sswitch_45
0x4 -> :sswitch_52
0x5 -> :sswitch_6a
0x6 -> :sswitch_7b
0x7 -> :sswitch_8d
0x8 -> :sswitch_9b
0x9 -> :sswitch_a9
0xa -> :sswitch_b7
0xb -> :sswitch_cd
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method