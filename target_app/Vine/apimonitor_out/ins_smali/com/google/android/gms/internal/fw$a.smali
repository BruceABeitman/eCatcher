.class public abstract Lcom/google/android/gms/internal/fw$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/internal/fw;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/internal/fw$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static B(Landroid/os/IBinder;)Lcom/google/android/gms/internal/fw;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/internal/fw;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/internal/fw;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/internal/fw$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fw$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 9
const/4 v0, 0x0
const/4 v2, 0x1
sparse-switch p1, :sswitch_data_68
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v2
:goto_9
return v2
:sswitch_a
const-string v0, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
goto :goto_9
:sswitch_10
const-string v1, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_21
sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;
move-result-object v0
:cond_21
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fw$a;->a(Lcom/google/android/gms/common/api/Status;)V
goto :goto_9
:sswitch_25
const-string v1, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_48
sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;
invoke-virtual {v1, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;
move-result-object v1
:goto_36
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v3
if-eqz v3, :cond_44
sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/ParcelFileDescriptor;
:cond_44
invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/fw$a;->a(Lcom/google/android/gms/common/api/Status;Landroid/os/ParcelFileDescriptor;)V
goto :goto_9
:cond_48
move-object v1, v0
goto :goto_36
:sswitch_4a
const-string v1, "com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks"
invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_5b
sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/StatusCreator;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/StatusCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;
move-result-object v0
:cond_5b
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v1
if-eqz v1, :cond_66
move v1, v2
:goto_62
invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/fw$a;->a(Lcom/google/android/gms/common/api/Status;Z)V
goto :goto_9
:cond_66
const/4 v1, 0x0
goto :goto_62
:sswitch_data_68
.sparse-switch
0x1 -> :sswitch_10
0x2 -> :sswitch_25
0x3 -> :sswitch_4a
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method