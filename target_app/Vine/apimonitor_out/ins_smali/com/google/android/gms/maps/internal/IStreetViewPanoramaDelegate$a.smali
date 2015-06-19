.class public abstract Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
.method public static aT(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v2, 0x0
const/4 v0, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_1ce
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v1
:goto_a
return v1
:sswitch_b
const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_a
:sswitch_11
const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_1d
move v0, v1
:cond_1d
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->enableZoom(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_24
const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_30
move v0, v1
:cond_30
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->enablePanning(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_37
const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_43
move v0, v1
:cond_43
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->enableUserNavigation(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_4a
const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_56
move v0, v1
:cond_56
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->enableStreetNames(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_5d
const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->isZoomGesturesEnabled()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_6c
move v0, v1
:cond_6c
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_a
:sswitch_70
const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->isPanningGesturesEnabled()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_7f
move v0, v1
:cond_7f
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto :goto_a
:sswitch_83
const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->isUserNavigationEnabled()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_92
move v0, v1
:cond_92
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
:sswitch_97
const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->isStreetNamesEnabled()Z
move-result v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_a6
move v0, v1
:cond_a6
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
:sswitch_ab
const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_c8
sget-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCameraCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
move-result-object v0
:goto_bc
invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J
move-result-wide v2
invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->animateTo(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;J)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:cond_c8
move-object v0, v2
goto :goto_bc
:sswitch_ca
const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->getPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
move-result-object v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_e0
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_a
:cond_e0
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
:sswitch_e5
const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setPositionWithID(Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_f6
const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_107
sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
move-result-object v2
:cond_107
invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setPosition(Lcom/google/android/gms/maps/model/LatLng;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_10f
const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_120
sget-object v0, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/LatLngCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/LatLngCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
move-result-object v2
:cond_120
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setPositionWithRadius(Lcom/google/android/gms/maps/model/LatLng;I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_12c
const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->getStreetViewPanoramaLocation()Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;
move-result-object v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_142
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaLocation;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_a
:cond_142
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
:sswitch_147
const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/internal/q$a;->aP(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/q;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setOnStreetViewPanoramaChangeListener(Lcom/google/android/gms/maps/internal/q;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_15c
const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/internal/p$a;->aO(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/p;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setOnStreetViewPanoramaCameraChangeListener(Lcom/google/android/gms/maps/internal/p;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_171
const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/maps/internal/r$a;->aQ(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/r;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->setOnStreetViewPanoramaClickListener(Lcom/google/android/gms/maps/internal/r;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_186
const-string v2, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/dynamic/d$a;->ag(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->pointToOrientation(Lcom/google/android/gms/dynamic/d;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
move-result-object v2
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v2, :cond_1a4
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v2, p3, v1}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_a
:cond_1a4
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
:sswitch_1a9
const-string v0, "com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_1cc
sget-object v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;->CREATOR:Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientationCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientationCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;
move-result-object v0
:goto_1ba
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IStreetViewPanoramaDelegate$a;->orientationToPoint(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)Lcom/google/android/gms/dynamic/d;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_1c7
invoke-interface {v0}, Lcom/google/android/gms/dynamic/d;->asBinder()Landroid/os/IBinder;
move-result-object v2
:cond_1c7
invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
goto/16 :goto_a
:cond_1cc
move-object v0, v2
goto :goto_1ba
:sswitch_data_1ce
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_24
0x3 -> :sswitch_37
0x4 -> :sswitch_4a
0x5 -> :sswitch_5d
0x6 -> :sswitch_70
0x7 -> :sswitch_83
0x8 -> :sswitch_97
0x9 -> :sswitch_ab
0xa -> :sswitch_ca
0xb -> :sswitch_e5
0xc -> :sswitch_f6
0xd -> :sswitch_10f
0xe -> :sswitch_12c
0xf -> :sswitch_147
0x10 -> :sswitch_15c
0x11 -> :sswitch_171
0x12 -> :sswitch_186
0x13 -> :sswitch_1a9
0x5f4e5446 -> :sswitch_b
.end sparse-switch
.end method