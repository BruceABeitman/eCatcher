.class public abstract Lcom/google/android/gms/wearable/internal/ac$a;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/wearable/internal/ac;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/wearable/internal/ac$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static bx(Landroid/os/IBinder;)Lcom/google/android/gms/wearable/internal/ac;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/wearable/internal/ac;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/wearable/internal/ac;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/wearable/internal/ac$a$a;
invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/ac$a$a;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 8
const/4 v0, 0x0
const/4 v1, 0x1
sparse-switch p1, :sswitch_data_70
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.wearable.internal.IWearableListener"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_11
const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_22
sget-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Lcom/google/android/gms/common/data/f;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/data/f;->x(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
move-result-object v0
:cond_22
invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ac$a;->Y(Lcom/google/android/gms/common/data/DataHolder;)V
move v0, v1
goto :goto_9
:sswitch_27
const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_3a
sget-object v0, Lcom/google/android/gms/wearable/internal/af;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wearable/internal/af;
:cond_3a
invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ac$a;->a(Lcom/google/android/gms/wearable/internal/af;)V
move v0, v1
goto :goto_9
:sswitch_3f
const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_52
sget-object v0, Lcom/google/android/gms/wearable/internal/ai;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wearable/internal/ai;
:cond_52
invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ac$a;->a(Lcom/google/android/gms/wearable/internal/ai;)V
move v0, v1
goto :goto_9
:sswitch_57
const-string v2, "com.google.android.gms.wearable.internal.IWearableListener"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_6a
sget-object v0, Lcom/google/android/gms/wearable/internal/ai;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/wearable/internal/ai;
:cond_6a
invoke-virtual {p0, v0}, Lcom/google/android/gms/wearable/internal/ac$a;->b(Lcom/google/android/gms/wearable/internal/ai;)V
move v0, v1
goto :goto_9
nop
:sswitch_data_70
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_27
0x3 -> :sswitch_3f
0x4 -> :sswitch_57
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method