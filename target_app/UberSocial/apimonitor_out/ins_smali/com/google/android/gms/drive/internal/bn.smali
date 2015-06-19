.class public abstract Lcom/google/android/gms/drive/internal/bn;
.super Landroid/os/Binder;
.implements Lcom/google/android/gms/drive/internal/bm;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string v0, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"
invoke-virtual {p0, p0, v0}, Lcom/google/android/gms/drive/internal/bn;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static a(Landroid/os/IBinder;)Lcom/google/android/gms/drive/internal/bm;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string v0, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"
invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_13
instance-of v1, v0, Lcom/google/android/gms/drive/internal/bm;
if-eqz v1, :cond_13
check-cast v0, Lcom/google/android/gms/drive/internal/bm;
goto :goto_3
:cond_13
new-instance v0, Lcom/google/android/gms/drive/internal/bo;
invoke-direct {v0, p0}, Lcom/google/android/gms/drive/internal/bo;-><init>(Landroid/os/IBinder;)V
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
sparse-switch p1, :sswitch_data_de
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_9
return v0
:sswitch_a
const-string v0, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
move v0, v1
goto :goto_9
:sswitch_11
const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_24
sget-object v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;
:cond_24
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/bn;->a(Lcom/google/android/gms/drive/internal/OnDownloadProgressResponse;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto :goto_9
:sswitch_2c
const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_3f
sget-object v0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/OnListEntriesResponse;
:cond_3f
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/bn;->a(Lcom/google/android/gms/drive/internal/OnListEntriesResponse;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto :goto_9
:sswitch_47
const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_5a
sget-object v0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/OnDriveIdResponse;
:cond_5a
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/bn;->a(Lcom/google/android/gms/drive/internal/OnDriveIdResponse;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto :goto_9
:sswitch_62
const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_75
sget-object v0, Lcom/google/android/gms/drive/internal/OnMetadataResponse;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/OnMetadataResponse;
:cond_75
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/bn;->a(Lcom/google/android/gms/drive/internal/OnMetadataResponse;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto :goto_9
:sswitch_7d
const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_90
sget-object v0, Lcom/google/android/gms/drive/internal/OnContentsResponse;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/OnContentsResponse;
:cond_90
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/bn;->a(Lcom/google/android/gms/drive/internal/OnContentsResponse;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto/16 :goto_9
:sswitch_99
const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_aa
sget-object v0, Lcom/google/android/gms/common/api/Status;->CREATOR:Lcom/google/android/gms/common/api/p;
invoke-virtual {v0, p2}, Lcom/google/android/gms/common/api/p;->a(Landroid/os/Parcel;)Lcom/google/android/gms/common/api/Status;
move-result-object v0
:cond_aa
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/bn;->a(Lcom/google/android/gms/common/api/Status;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto/16 :goto_9
:sswitch_b3
const-string v0, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/google/android/gms/drive/internal/bn;->a()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto/16 :goto_9
:sswitch_c1
const-string v2, "com.google.android.gms.drive.internal.IDriveServiceCallbacks"
invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I
move-result v2
if-eqz v2, :cond_d4
sget-object v0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;->CREATOR:Landroid/os/Parcelable$Creator;
invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/internal/OnListParentsResponse;
:cond_d4
invoke-virtual {p0, v0}, Lcom/google/android/gms/drive/internal/bn;->a(Lcom/google/android/gms/drive/internal/OnListParentsResponse;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
move v0, v1
goto/16 :goto_9
nop
:sswitch_data_de
.sparse-switch
0x1 -> :sswitch_11
0x2 -> :sswitch_2c
0x3 -> :sswitch_47
0x4 -> :sswitch_62
0x5 -> :sswitch_7d
0x6 -> :sswitch_99
0x7 -> :sswitch_b3
0x8 -> :sswitch_c1
0x5f4e5446 -> :sswitch_a
.end sparse-switch
.end method