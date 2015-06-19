.class public abstract Lcom/google/android/gms/maps/model/a/n;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/maps/model/a/m;
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/m;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/maps/model/a/m;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/maps/model/a/m;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/maps/model/a/o;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/a/o;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 8
const/4 v0, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_1f8
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v1
:goto_9
return v1
:sswitch_a
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->a()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_1c
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_2c
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_44
sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/k;
invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/k;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
move-result-object v0
:goto_3d
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/n;->a(Lcom/google/android/gms/maps/model/LatLng;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:cond_44
const/4 v0, 0x0
goto :goto_3d
:sswitch_46
const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->c()Lcom/google/android/gms/maps/model/LatLng;
move-result-object v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_5b
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/LatLng;->writeToParcel(Landroid/os/Parcel;I)V
goto :goto_9
:cond_5b
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_9
:sswitch_5f
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/n;->a(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_6f
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->d()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_7f
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/n;->b(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_90
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->e()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto/16 :goto_9
:sswitch_a1
const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_ad
move v0, v1
:cond_ad
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/n;->a(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_b5
const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->f()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_c4
move v0, v1
:cond_c4
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_c9
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->g()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_d6
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->h()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_e3
const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->i()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_f2
move v0, v1
:cond_f2
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_f7
const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_103
move v0, v1
:cond_103
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/n;->b(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_10b
const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->j()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_11a
move v0, v1
:cond_11a
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_11f
const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/maps/model/a/n;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/m;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/a/n;->a(Lcom/google/android/gms/maps/model/a/m;)Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_136
move v0, v1
:cond_136
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_13b
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->k()I
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_14c
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/e;->a(Landroid/os/IBinder;)Lcom/google/android/gms/c/d;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/n;->a(Lcom/google/android/gms/c/d;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_161
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v2
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/maps/model/a/n;->a(FF)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_176
const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_182
move v0, v1
:cond_182
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/n;->c(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_18a
const-string v2, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->l()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_199
move v0, v1
:cond_199
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_19e
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/n;->a(F)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1af
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->m()F
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V
goto/16 :goto_9
:sswitch_1c0
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v0
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v2
invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/maps/model/a/n;->b(FF)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1d5
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/n;->b(F)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_1e6
const-string v0, "com.google.android.gms.maps.model.internal.IMarkerDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/n;->n()F
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V
goto/16 :goto_9
nop
:sswitch_data_1f8
.sparse-switch
0x1 -> :sswitch_10
0x2 -> :sswitch_1c
0x3 -> :sswitch_2c
0x4 -> :sswitch_46
0x5 -> :sswitch_5f
0x6 -> :sswitch_6f
0x7 -> :sswitch_7f
0x8 -> :sswitch_90
0x9 -> :sswitch_a1
0xa -> :sswitch_b5
0xb -> :sswitch_c9
0xc -> :sswitch_d6
0xd -> :sswitch_e3
0xe -> :sswitch_f7
0xf -> :sswitch_10b
0x10 -> :sswitch_11f
0x11 -> :sswitch_13b
0x12 -> :sswitch_14c
0x13 -> :sswitch_161
0x14 -> :sswitch_176
0x15 -> :sswitch_18a
0x16 -> :sswitch_19e
0x17 -> :sswitch_1af
0x18 -> :sswitch_1c0
0x19 -> :sswitch_1d5
0x1a -> :sswitch_1e6
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method