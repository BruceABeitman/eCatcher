.class public abstract Lcom/google/android/gms/maps/model/internal/b$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/maps/model/internal/b;
.method public static aY(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/b;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/maps/model/internal/b;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/maps/model/internal/b;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/maps/model/internal/b$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/model/internal/b$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v0, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_15c
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v1
:goto_9
return v1
:sswitch_a
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->remove()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_1c
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getId()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_2c
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_44
sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
move-result-object v0
:goto_3d
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/b$a;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:cond_44
const/4 v0, 0x0
goto :goto_3d
:sswitch_46
const-string v2, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getCenter()Lcom/google/android/gms/maps/model/LatLng;
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
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D
move-result-wide v2
invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/maps/model/internal/b$a;->setRadius(D)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_9
:sswitch_6f
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getRadius()D
move-result-wide v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V
goto :goto_9
:sswitch_7f
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/b$a;->setStrokeWidth(F)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_90
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getStrokeWidth()F
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V
goto/16 :goto_9
:sswitch_a1
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/b$a;->setStrokeColor(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_b2
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getStrokeColor()I
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_c3
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/b$a;->setFillColor(I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_d4
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getFillColor()I
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_e5
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F
move-result v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/b$a;->setZIndex(F)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_f6
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->getZIndex()F
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeFloat(F)V
goto/16 :goto_9
:sswitch_107
const-string v2, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_113
move v0, v1
:cond_113
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/model/internal/b$a;->setVisible(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_9
:sswitch_11b
const-string v2, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->isVisible()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_12a
move v0, v1
:cond_12a
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_12f
const-string v2, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/maps/model/internal/b$a;->aY(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/b;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/model/internal/b$a;->a(Lcom/google/android/gms/maps/model/internal/b;)Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_146
move v0, v1
:cond_146
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_14b
const-string v0, "com.google.android.gms.maps.model.internal.ICircleDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/model/internal/b$a;->hashCodeRemote()I
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_9
:sswitch_data_15c
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
0xa -> :sswitch_b2
0xb -> :sswitch_c3
0xc -> :sswitch_d4
0xd -> :sswitch_e5
0xe -> :sswitch_f6
0xf -> :sswitch_107
0x10 -> :sswitch_11b
0x11 -> :sswitch_12f
0x12 -> :sswitch_14b
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method