.class public abstract Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
.method public static Y(Landroid/os/IBinder;)Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 10
const/4 v2, 0x0
const/4 v1, 0x0
const/4 v3, 0x1
sparse-switch p1, :sswitch_data_130
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v3
:goto_a
return v3
:sswitch_b
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_a
:sswitch_11
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->getMap()Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_27
invoke-interface {v0}, Lcom/google/android/gms/maps/internal/IGoogleMapDelegate;->asBinder()Landroid/os/IBinder;
move-result-object v0
:goto_23
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
goto :goto_a
:cond_27
move-object v0, v1
goto :goto_23
:sswitch_29
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;
move-result-object v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_58
sget-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/GoogleMapOptionsCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/GoogleMapOptionsCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/maps/GoogleMapOptions;
move-result-object v0
move-object v2, v0
:goto_43
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_5a
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_51
invoke-virtual {p0, v4, v2, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onInflate(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:cond_58
move-object v2, v1
goto :goto_43
:cond_5a
move-object v0, v1
goto :goto_51
:sswitch_5c
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_76
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_6f
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:cond_76
move-object v0, v1
goto :goto_6f
:sswitch_78
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;
move-result-object v2
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/dynamic/b$a;->G(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/b;
move-result-object v4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_ad
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_9b
invoke-virtual {p0, v2, v4, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onCreateView(Lcom/google/android/gms/dynamic/b;Lcom/google/android/gms/dynamic/b;Landroid/os/Bundle;)Lcom/google/android/gms/dynamic/b;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_a8
invoke-interface {v0}, Lcom/google/android/gms/dynamic/b;->asBinder()Landroid/os/IBinder;
move-result-object v1
:cond_a8
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
goto/16 :goto_a
:cond_ad
move-object v0, v1
goto :goto_9b
:sswitch_af
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onResume()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_bc
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onPause()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_c9
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onDestroyView()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_d6
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onDestroy()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_e3
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onLowMemory()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_f0
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_113
sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/Bundle;
:goto_103
invoke-virtual {p0, v0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->onSaveInstanceState(Landroid/os/Bundle;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_115
invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p3, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_a
:cond_113
move-object v0, v1
goto :goto_103
:cond_115
invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
:sswitch_11a
const-string v0, "com.google.android.gms.maps.internal.IMapFragmentDelegate"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/maps/internal/IMapFragmentDelegate$a;->isReady()Z
move-result v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_12e
move v0, v3
:goto_129
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
:cond_12e
move v0, v2
goto :goto_129
:sswitch_data_130
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_29
0x3 -> :sswitch_5c
0x4 -> :sswitch_78
0x5 -> :sswitch_af
0x6 -> :sswitch_bc
0x7 -> :sswitch_c9
0x8 -> :sswitch_d6
0x9 -> :sswitch_e3
0xa -> :sswitch_f0
0xb -> :sswitch_11a
0x5f4e5446 -> :sswitch_b
.end sparse-switch
.end method