.class public abstract Lcom/google/android/gms/maps/a/b;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/maps/a/a;
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/a/a;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/maps/a/a;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/maps/a/a;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/maps/a/c;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/a/c;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 11
const/4 v2, 0x1
const/4 v0, 0x0
sparse-switch p1, :sswitch_data_18c
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v2
goto :goto_9
:sswitch_11
const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/a/b;->a()Lcom/google/android/gms/c/d;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v1, :cond_23
invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_23
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto :goto_9
:sswitch_28
const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/a/b;->b()Lcom/google/android/gms/c/d;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v1, :cond_3a
invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_3a
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto :goto_9
:sswitch_3f
const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v3
invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/maps/a/b;->a(FF)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v1, :cond_59
invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_59
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto :goto_9
:sswitch_5e
const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v1
invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/b;->a(F)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v1, :cond_74
invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_74
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto :goto_9
:sswitch_79
const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v1
invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/b;->b(F)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v1, :cond_8f
invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_8f
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto/16 :goto_9
:sswitch_95
const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
invoke-virtual {p0, v1, v3, v4}, Lcom/google/android/gms/maps/a/b;->a(FII)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v1, :cond_b3
invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_b3
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto/16 :goto_9
:sswitch_b9
const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_dd
sget-object v1, Lcom/google/android/gms/maps/model/CameraPosition;->CREATOR:Lcom/google/android/gms/maps/model/d;
invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/d;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/CameraPosition;
move-result-object v1
:goto_ca
invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/b;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v1, :cond_d7
invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_d7
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto/16 :goto_9
:cond_dd
move-object v1, v0
goto :goto_ca
:sswitch_df
const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_103
sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/k;
invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/k;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
move-result-object v1
:goto_f0
invoke-virtual {p0, v1}, Lcom/google/android/gms/maps/a/b;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v1, :cond_fd
invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_fd
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto/16 :goto_9
:cond_103
move-object v1, v0
goto :goto_f0
:sswitch_105
const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_12d
sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/k;
invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/k;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
move-result-object v1
:goto_116
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v3
invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/maps/a/b;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v1, :cond_127
invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_127
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto/16 :goto_9
:cond_12d
move-object v1, v0
goto :goto_116
:sswitch_12f
const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_157
sget-object v1, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/j;
invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;
move-result-object v1
:goto_140
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/maps/a/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v1, :cond_151
invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_151
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto/16 :goto_9
:cond_157
move-object v1, v0
goto :goto_140
:sswitch_159
const-string v1, "com.google.android.gms.maps.internal.ICameraUpdateFactoryDelegate"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_189
sget-object v1, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/j;
invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;
move-result-object v1
:goto_16a
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v5
invoke-virtual {p0, v1, v3, v4, v5}, Lcom/google/android/gms/maps/a/b;->a(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v1, :cond_183
invoke-interface {v1}, Lcom/google/android/gms/c/d;->asBinder()Landroid/os/IBinder;
move-result-object v0
:cond_183
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
move v0, v2
goto/16 :goto_9
:cond_189
move-object v1, v0
goto :goto_16a
nop
:sswitch_data_18c
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_28
0x3 -> :sswitch_3f
0x4 -> :sswitch_5e
0x5 -> :sswitch_79
0x6 -> :sswitch_95
0x7 -> :sswitch_b9
0x8 -> :sswitch_df
0x9 -> :sswitch_105
0xa -> :sswitch_12f
0xb -> :sswitch_159
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method