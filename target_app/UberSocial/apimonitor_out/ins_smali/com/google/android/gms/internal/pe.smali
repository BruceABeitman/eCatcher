.class public abstract Lcom/google/android/gms/internal/pe;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/pd;
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pd;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/pd;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/pd;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/pf;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/pf;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 12
const/4 v1, 0x0
const/4 v0, 0x0
const/4 v6, 0x1
sparse-switch p1, :sswitch_data_3ae
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v6
:goto_a
return v6
:sswitch_b
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_a
:sswitch_11
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
sget-object v1, Lcom/google/android/gms/internal/hj;->CREATOR:Lcom/google/android/gms/internal/po;
invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_2a
sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:cond_2a
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/pb;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pa;
move-result-object v2
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/pe;->a(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/internal/pa;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_3d
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_50
sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:cond_50
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/pb;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pa;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/pe;->a(Landroid/app/PendingIntent;Lcom/google/android/gms/internal/pa;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_63
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/pb;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pa;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/pe;->a([Ljava/lang/String;Lcom/google/android/gms/internal/pa;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto :goto_a
:sswitch_7f
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/pb;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pa;
move-result-object v0
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/pa;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_98
const-string v2, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J
move-result-wide v2
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_a8
move v1, v6
:cond_a8
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_b6
sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:cond_b6
invoke-virtual {p0, v2, v3, v1, v0}, Lcom/google/android/gms/internal/pe;->a(JZLandroid/app/PendingIntent;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_be
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_d1
sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:cond_d1
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Landroid/app/PendingIntent;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_d9
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/internal/pe;->a()Landroid/location/Location;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_ef
invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V
invoke-static {v0, p3, v6}, Ldroidbox/android/location/Location;->writeToParcel(Landroid/location/Location;Landroid/os/Parcel;I)V
goto/16 :goto_a
:cond_ef
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
:sswitch_f4
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_105
sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/l;
invoke-virtual {v0, p2}, Lcom/google/android/gms/location/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;
move-result-object v0
:cond_105
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/location/o;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/n;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/n;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_115
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_13c
sget-object v1, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/l;
invoke-virtual {v1, p2}, Lcom/google/android/gms/location/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;
move-result-object v1
:goto_126
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_134
sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:cond_134
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:cond_13c
move-object v1, v0
goto :goto_126
:sswitch_13e
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/location/o;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/n;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/location/n;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_153
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_166
sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:cond_166
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pe;->b(Landroid/app/PendingIntent;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_16e
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v0
if-eqz v0, :cond_17a
move v1, v6
:cond_17a
invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/pe;->a(Z)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_182
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_195
sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/Location;
:cond_195
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Landroid/location/Location;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_19d
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_1db
sget-object v1, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/j;
invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/j;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLngBounds;
move-result-object v1
:goto_1ae
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_1dd
sget-object v3, Lcom/google/android/gms/internal/hn;->CREATOR:Lcom/google/android/gms/internal/pr;
invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/pr;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hn;
move-result-object v3
:goto_1be
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v4
if-eqz v4, :cond_1df
sget-object v0, Lcom/google/android/gms/internal/id;->CREATOR:Lcom/google/android/gms/internal/qf;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/qf;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/id;
move-result-object v4
:goto_1ca
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/pw;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pv;
move-result-object v5
move-object v0, p0
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/maps/model/LatLngBounds;ILcom/google/android/gms/internal/hn;Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/pv;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:cond_1db
move-object v1, v0
goto :goto_1ae
:cond_1dd
move-object v3, v0
goto :goto_1be
:cond_1df
move-object v4, v0
goto :goto_1ca
:sswitch_1e1
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_1f6
sget-object v0, Lcom/google/android/gms/internal/id;->CREATOR:Lcom/google/android/gms/internal/qf;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/qf;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/id;
move-result-object v0
:cond_1f6
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/pw;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pv;
move-result-object v2
invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/pe;->a(Ljava/lang/String;Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/pv;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_206
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_23f
sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/k;
invoke-virtual {v1, p2}, Lcom/google/android/gms/maps/model/k;->a(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
move-result-object v1
:goto_217
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_241
sget-object v2, Lcom/google/android/gms/internal/hn;->CREATOR:Lcom/google/android/gms/internal/pr;
invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/pr;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hn;
move-result-object v2
:goto_223
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_22f
sget-object v0, Lcom/google/android/gms/internal/id;->CREATOR:Lcom/google/android/gms/internal/qf;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/qf;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/id;
move-result-object v0
:cond_22f
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v3
invoke-static {v3}, Lcom/google/android/gms/internal/pw;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pv;
move-result-object v3
invoke-virtual {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/internal/hn;Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/pv;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:cond_23f
move-object v1, v0
goto :goto_217
:cond_241
move-object v2, v0
goto :goto_223
:sswitch_243
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_270
sget-object v1, Lcom/google/android/gms/internal/hn;->CREATOR:Lcom/google/android/gms/internal/pr;
invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/pr;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hn;
move-result-object v1
:goto_254
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_260
sget-object v0, Lcom/google/android/gms/internal/id;->CREATOR:Lcom/google/android/gms/internal/qf;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/qf;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/id;
move-result-object v0
:cond_260
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/pw;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pv;
move-result-object v2
invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/hn;Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/pv;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:cond_270
move-object v1, v0
goto :goto_254
:sswitch_272
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_287
sget-object v0, Lcom/google/android/gms/internal/id;->CREATOR:Lcom/google/android/gms/internal/qf;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/qf;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/id;
move-result-object v0
:cond_287
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/internal/pw;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/pv;
move-result-object v2
invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/internal/pe;->b(Ljava/lang/String;Lcom/google/android/gms/internal/id;Lcom/google/android/gms/internal/pv;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_297
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_2ca
sget-object v1, Lcom/google/android/gms/internal/hr;->CREATOR:Lcom/google/android/gms/internal/pt;
invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/pt;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hr;
move-result-object v1
:goto_2a8
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_2cc
sget-object v2, Lcom/google/android/gms/internal/id;->CREATOR:Lcom/google/android/gms/internal/qf;
invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/qf;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/id;
move-result-object v2
:goto_2b4
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_2c2
sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:cond_2c2
invoke-virtual {p0, v1, v2, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/hr;Lcom/google/android/gms/internal/id;Landroid/app/PendingIntent;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:cond_2ca
move-object v1, v0
goto :goto_2a8
:cond_2cc
move-object v2, v0
goto :goto_2b4
:sswitch_2ce
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_2f5
sget-object v1, Lcom/google/android/gms/internal/id;->CREATOR:Lcom/google/android/gms/internal/qf;
invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/qf;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/id;
move-result-object v1
:goto_2df
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_2ed
sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/PendingIntent;
:cond_2ed
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/id;Landroid/app/PendingIntent;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:cond_2f5
move-object v1, v0
goto :goto_2df
:sswitch_2f7
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_308
sget-object v0, Lcom/google/android/gms/location/LocationRequest;->CREATOR:Lcom/google/android/gms/location/l;
invoke-virtual {v0, p2}, Lcom/google/android/gms/location/l;->a(Landroid/os/Parcel;)Lcom/google/android/gms/location/LocationRequest;
move-result-object v0
:cond_308
invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/location/o;->a(Landroid/os/IBinder;)Lcom/google/android/gms/location/n;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/n;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_31c
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Ljava/lang/String;)Landroid/location/Location;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_336
invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V
invoke-static {v0, p3, v6}, Ldroidbox/android/location/Location;->writeToParcel(Landroid/location/Location;Landroid/os/Parcel;I)V
goto/16 :goto_a
:cond_336
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
:sswitch_33b
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
sget-object v0, Lcom/google/android/gms/internal/hx$a;->CREATOR:Lcom/google/android/gms/internal/py;
invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pe;->a(Ljava/util/List;)V
goto/16 :goto_a
:sswitch_34b
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_36d
sget-object v1, Lcom/google/android/gms/internal/hp;->CREATOR:Lcom/google/android/gms/internal/ps;
invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ps;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/hp;
move-result-object v1
:goto_35c
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_368
sget-object v0, Lcom/google/android/gms/internal/id;->CREATOR:Lcom/google/android/gms/internal/qf;
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/qf;->a(Landroid/os/Parcel;)Lcom/google/android/gms/internal/id;
move-result-object v0
:cond_368
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/pe;->a(Lcom/google/android/gms/internal/hp;Lcom/google/android/gms/internal/id;)V
goto/16 :goto_a
:cond_36d
move-object v1, v0
goto :goto_35c
:sswitch_36f
const-string v1, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_382
sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/Location;
:cond_382
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/pe;->a(Landroid/location/Location;I)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
goto/16 :goto_a
:sswitch_38e
const-string v0, "com.google.android.gms.location.internal.IGoogleLocationManagerService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/pe;->b(Ljava/lang/String;)Lcom/google/android/gms/location/b;
move-result-object v0
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v0, :cond_3a8
invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V
invoke-virtual {v0, p3, v6}, Lcom/google/android/gms/location/b;->writeToParcel(Landroid/os/Parcel;I)V
goto/16 :goto_a
:cond_3a8
invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V
goto/16 :goto_a
nop
:sswitch_data_3ae
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_3d
0x3 -> :sswitch_63
0x4 -> :sswitch_7f
0x5 -> :sswitch_98
0x6 -> :sswitch_be
0x7 -> :sswitch_d9
0x8 -> :sswitch_f4
0x9 -> :sswitch_115
0xa -> :sswitch_13e
0xb -> :sswitch_153
0xc -> :sswitch_16e
0xd -> :sswitch_182
0xe -> :sswitch_19d
0xf -> :sswitch_1e1
0x10 -> :sswitch_206
0x11 -> :sswitch_243
0x12 -> :sswitch_297
0x13 -> :sswitch_2ce
0x14 -> :sswitch_2f7
0x15 -> :sswitch_31c
0x18 -> :sswitch_33b
0x19 -> :sswitch_34b
0x1a -> :sswitch_36f
0x22 -> :sswitch_38e
0x2a -> :sswitch_272
0x5f4e5446 -> :sswitch_b
.end sparse-switch
.end method