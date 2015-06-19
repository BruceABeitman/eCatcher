.class public abstract Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;
.super Landroid/os/Binder;
.source "ICloudShareService.java"
.implements Lcom/pinguo/camera360/cloud/service/ICloudShareService;
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pinguo.camera360.cloud.service.ICloudShareService"
.field static final TRANSACTION_CSS_addUploadData:I = 0x6
.field static final TRANSACTION_CSS_cancelLogin:I = 0x3
.field static final TRANSACTION_CSS_checkLogined:I = 0x5
.field static final TRANSACTION_CSS_closeAutoUpload:I = 0xd
.field static final TRANSACTION_CSS_closeUploadFor3G:I = 0x13
.field static final TRANSACTION_CSS_closeUploadForBatty:I = 0x16
.field static final TRANSACTION_CSS_closeUploadForWifi:I = 0x10
.field static final TRANSACTION_CSS_getAutoUpload:I = 0xe
.field static final TRANSACTION_CSS_getCurrentUploaded:I = 0xa
.field static final TRANSACTION_CSS_getServiceStatus:I = 0x1
.field static final TRANSACTION_CSS_getUploadFor3G:I = 0x14
.field static final TRANSACTION_CSS_getUploadForBatty:I = 0x17
.field static final TRANSACTION_CSS_getUploadForWifi:I = 0x11
.field static final TRANSACTION_CSS_getUploadedCount:I = 0x9
.field static final TRANSACTION_CSS_offLogin:I = 0xb
.field static final TRANSACTION_CSS_openAutoUpload:I = 0xc
.field static final TRANSACTION_CSS_openUploadFor3G:I = 0x12
.field static final TRANSACTION_CSS_openUploadForBatty:I = 0x15
.field static final TRANSACTION_CSS_openUploadForWifi:I = 0xf
.field static final TRANSACTION_CSS_registerUser:I = 0x4
.field static final TRANSACTION_CSS_startUpload:I = 0x8
.field static final TRANSACTION_CSS_stopUpload:I = 0x7
.field static final TRANSACTION_CSS_userLogin:I = 0x2
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/os/Binder;-><init>()V
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p0, p0, v0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V
return-void
.end method
.method public static asInterface(Landroid/os/IBinder;)Lcom/pinguo/camera360/cloud/service/ICloudShareService;
.registers 3
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
const-string/jumbo v1, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;
move-result-object v0
if-eqz v0, :cond_14
instance-of v1, v0, Lcom/pinguo/camera360/cloud/service/ICloudShareService;
if-eqz v1, :cond_14
check-cast v0, Lcom/pinguo/camera360/cloud/service/ICloudShareService;
goto :goto_3
:cond_14
new-instance v0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V
goto :goto_3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 1
return-object p0
.end method
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
.registers 16
sparse-switch p1, :sswitch_data_1e2
invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
move-result v0
:goto_7
return v0
:sswitch_8
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
const/4 v0, 0x1
goto :goto_7
:sswitch_10
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_getServiceStatus()Z
move-result v10
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v10, :cond_25
const/4 v0, 0x1
:goto_20
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x1
goto :goto_7
:cond_25
const/4 v0, 0x0
goto :goto_20
:sswitch_27
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v1, v2}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_userLogin(Ljava/lang/String;Ljava/lang/String;)Z
move-result v10
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v10, :cond_44
const/4 v0, 0x1
:goto_3f
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x1
goto :goto_7
:cond_44
const/4 v0, 0x0
goto :goto_3f
:sswitch_46
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_cancelLogin()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto :goto_7
:sswitch_54
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0, v1, v2}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_registerUser(Ljava/lang/String;Ljava/lang/String;)Z
move-result v10
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v10, :cond_71
const/4 v0, 0x1
:goto_6c
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x1
goto :goto_7
:cond_71
const/4 v0, 0x0
goto :goto_6c
:sswitch_73
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_checkLogined()Z
move-result v10
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v10, :cond_88
const/4 v0, 0x1
:goto_83
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x1
goto :goto_7
:cond_88
const/4 v0, 0x0
goto :goto_83
:sswitch_8a
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J
move-result-wide v5
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v7
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v8
invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v9
move-object v0, p0
invoke-virtual/range {v0 .. v9}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_addUploadData(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_b6
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_stopUpload()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_c5
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_startUpload()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_d4
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_getUploadedCount()[I
move-result-object v10
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_e7
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_getCurrentUploaded()I
move-result v10
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_fa
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_offLogin()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_109
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_openAutoUpload()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_118
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_closeAutoUpload()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_127
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_getAutoUpload()Z
move-result v10
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v10, :cond_13d
const/4 v0, 0x1
:goto_137
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x1
goto/16 :goto_7
:cond_13d
const/4 v0, 0x0
goto :goto_137
:sswitch_13f
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_openUploadForWifi()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_14e
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_closeUploadForWifi()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_15d
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_getUploadForWifi()Z
move-result v10
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v10, :cond_173
const/4 v0, 0x1
:goto_16d
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x1
goto/16 :goto_7
:cond_173
const/4 v0, 0x0
goto :goto_16d
:sswitch_175
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_openUploadFor3G()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_184
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_closeUploadFor3G()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_193
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_getUploadFor3G()Z
move-result v10
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v10, :cond_1a9
const/4 v0, 0x1
:goto_1a3
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x1
goto/16 :goto_7
:cond_1a9
const/4 v0, 0x0
goto :goto_1a3
:sswitch_1ab
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_openUploadForBatty()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_1ba
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_closeUploadForBatty()V
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
const/4 v0, 0x1
goto/16 :goto_7
:sswitch_1c9
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub;->CSS_getUploadForBatty()Z
move-result v10
invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V
if-eqz v10, :cond_1df
const/4 v0, 0x1
:goto_1d9
invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V
const/4 v0, 0x1
goto/16 :goto_7
:cond_1df
const/4 v0, 0x0
goto :goto_1d9
nop
:sswitch_data_1e2
.sparse-switch
0x1 -> :sswitch_10
0x2 -> :sswitch_27
0x3 -> :sswitch_46
0x4 -> :sswitch_54
0x5 -> :sswitch_73
0x6 -> :sswitch_8a
0x7 -> :sswitch_b6
0x8 -> :sswitch_c5
0x9 -> :sswitch_d4
0xa -> :sswitch_e7
0xb -> :sswitch_fa
0xc -> :sswitch_109
0xd -> :sswitch_118
0xe -> :sswitch_127
0xf -> :sswitch_13f
0x10 -> :sswitch_14e
0x11 -> :sswitch_15d
0x12 -> :sswitch_175
0x13 -> :sswitch_184
0x14 -> :sswitch_193
0x15 -> :sswitch_1ab
0x16 -> :sswitch_1ba
0x17 -> :sswitch_1c9
0x5f4e5446 -> :sswitch_8
.end sparse-switch
.end method