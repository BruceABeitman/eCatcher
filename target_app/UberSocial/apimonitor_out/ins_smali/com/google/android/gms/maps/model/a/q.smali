.class public abstract Lcom/google/android/gms/maps/model/a/q;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/maps/model/a/p;
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/p;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/maps/model/a/p;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/maps/model/a/p;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/maps/model/a/r;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/a/r;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 8
const/4 v0, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_17a
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v1
:goto_9
return v1
:sswitch_a
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/q;->a()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_1c
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/q;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_2c
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/k;
invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/q;->a(Ljava/util/List;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_3e
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/q;->c()Ljava/util/List;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
goto :goto_9
:sswitch_4e
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/q;->b(Ljava/util/List;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_66
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/q;->d()Ljava/util/List;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V
goto :goto_9
:sswitch_76
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/q;->a(F)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_86
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/q;->e()F
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V
goto/16 :goto_9
:sswitch_97
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/q;->a(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_a8
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/q;->f()I
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_b9
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/q;->b(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_ca
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/q;->g()I
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_db
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/q;->b(F)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_ec
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/q;->h()F
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V
goto/16 :goto_9
:sswitch_fd
const-string v2, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_109
move v0, v1
:cond_109
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/q;->a(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_111
const-string v2, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/q;->i()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_120
move v0, v1
:cond_120
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_125
const-string v2, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_131
move v0, v1
:cond_131
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/a/q;->b(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_139
const-string v2, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/q;->j()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_148
move v0, v1
:cond_148
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_14d
const-string v2, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/maps/model/a/q;->a(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/a/p;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/a/q;->a(Lcom/google/android/gms/maps/model/a/p;)Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_164
move v0, v1
:cond_164
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_169
const-string v0, "com.google.android.gms.maps.model.internal.IPolygonDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/a/q;->k()I
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_data_17a
.sparse-switch
0x1 -> :sswitch_10
0x2 -> :sswitch_1c
0x3 -> :sswitch_2c
0x4 -> :sswitch_3e
0x5 -> :sswitch_4e
0x6 -> :sswitch_66
0x7 -> :sswitch_76
0x8 -> :sswitch_86
0x9 -> :sswitch_97
0xa -> :sswitch_a8
0xb -> :sswitch_b9
0xc -> :sswitch_ca
0xd -> :sswitch_db
0xe -> :sswitch_ec
0xf -> :sswitch_fd
0x10 -> :sswitch_111
0x11 -> :sswitch_125
0x12 -> :sswitch_139
0x13 -> :sswitch_14d
0x14 -> :sswitch_169
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method