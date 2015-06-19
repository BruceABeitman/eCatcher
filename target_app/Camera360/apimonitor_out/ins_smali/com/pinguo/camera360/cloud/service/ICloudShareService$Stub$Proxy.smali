.class  Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICloudShareService.java"
.implements Lcom/pinguo/camera360/cloud/service/ICloudShareService;
.field private mRemote:Landroid/os/IBinder;
.method constructor <init>(Landroid/os/IBinder;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-void
.end method
.method public CSS_addUploadData(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 15
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V
invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v3, 0x6
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_2d
.catchall {:try_start_8 .. :try_end_2d} :catchall_34
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_34
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_cancelLogin()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v3, 0x3
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_checkLogined()Z
.registers 7
const/4 v2, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_9
const-string/jumbo v3, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v4, 0x5
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_1c
.catchall {:try_start_9 .. :try_end_1c} :catchall_27
move-result v3
if-eqz v3, :cond_20
const/4 v2, 0x1
:cond_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_27
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public CSS_closeAutoUpload()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0xd
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_19
.catchall {:try_start_8 .. :try_end_19} :catchall_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_20
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_closeUploadFor3G()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x13
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_19
.catchall {:try_start_8 .. :try_end_19} :catchall_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_20
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_closeUploadForBatty()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x16
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_19
.catchall {:try_start_8 .. :try_end_19} :catchall_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_20
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_closeUploadForWifi()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x10
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_19
.catchall {:try_start_8 .. :try_end_19} :catchall_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_20
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_getAutoUpload()Z
.registers 7
const/4 v2, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_9
const-string/jumbo v3, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0xe
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_1d
.catchall {:try_start_9 .. :try_end_1d} :catchall_28
move-result v3
if-eqz v3, :cond_21
const/4 v2, 0x1
:cond_21
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_28
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public CSS_getCurrentUploaded()I
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v3, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0xa
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_1c
.catchall {:try_start_8 .. :try_end_1c} :catchall_24
move-result v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_24
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public CSS_getServiceStatus()Z
.registers 8
const/4 v2, 0x1
const/4 v3, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_a
const-string/jumbo v4, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v4, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v5, 0x1
const/4 v6, 0x0
invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_1d
.catchall {:try_start_a .. :try_end_1d} :catchall_29
move-result v4
if-eqz v4, :cond_27
:goto_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:cond_27
move v2, v3
goto :goto_20
:catchall_29
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public CSS_getUploadFor3G()Z
.registers 7
const/4 v2, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_9
const-string/jumbo v3, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x14
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_1d
.catchall {:try_start_9 .. :try_end_1d} :catchall_28
move-result v3
if-eqz v3, :cond_21
const/4 v2, 0x1
:cond_21
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_28
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public CSS_getUploadForBatty()Z
.registers 7
const/4 v2, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_9
const-string/jumbo v3, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x17
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_1d
.catchall {:try_start_9 .. :try_end_1d} :catchall_28
move-result v3
if-eqz v3, :cond_21
const/4 v2, 0x1
:cond_21
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_28
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public CSS_getUploadForWifi()Z
.registers 7
const/4 v2, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_9
const-string/jumbo v3, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x11
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_1d
.catchall {:try_start_9 .. :try_end_1d} :catchall_28
move-result v3
if-eqz v3, :cond_21
const/4 v2, 0x1
:cond_21
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_28
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public CSS_getUploadedCount()[I
.registers 7
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v3, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v4, 0x9
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
:try_end_1c
.catchall {:try_start_8 .. :try_end_1c} :catchall_24
move-result-object v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-object v2
:catchall_24
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public CSS_offLogin()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0xb
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_19
.catchall {:try_start_8 .. :try_end_19} :catchall_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_20
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_openAutoUpload()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0xc
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_19
.catchall {:try_start_8 .. :try_end_19} :catchall_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_20
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_openUploadFor3G()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x12
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_19
.catchall {:try_start_8 .. :try_end_19} :catchall_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_20
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_openUploadForBatty()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x15
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_19
.catchall {:try_start_8 .. :try_end_19} :catchall_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_20
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_openUploadForWifi()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0xf
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_19
.catchall {:try_start_8 .. :try_end_19} :catchall_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_20
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_registerUser(Ljava/lang/String;Ljava/lang/String;)Z
.registers 9
const/4 v2, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_9
const-string/jumbo v3, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v4, 0x4
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_22
.catchall {:try_start_9 .. :try_end_22} :catchall_2d
move-result v3
if-eqz v3, :cond_26
const/4 v2, 0x1
:cond_26
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_2d
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public CSS_startUpload()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/16 v3, 0x8
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_19
.catchall {:try_start_8 .. :try_end_19} :catchall_20
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_20
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_stopUpload()V
.registers 6
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_8
const-string/jumbo v2, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v3, 0x7
const/4 v4, 0x0
invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
:try_end_18
.catchall {:try_start_8 .. :try_end_18} :catchall_1f
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return-void
:catchall_1f
move-exception v2
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v2
.end method
.method public CSS_userLogin(Ljava/lang/String;Ljava/lang/String;)Z
.registers 9
const/4 v2, 0x0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v0
invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
move-result-object v1
:try_start_9
const-string/jumbo v3, "com.pinguo.camera360.cloud.service.ICloudShareService"
invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
const/4 v4, 0x2
const/4 v5, 0x0
invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
:try_end_22
.catchall {:try_start_9 .. :try_end_22} :catchall_2d
move-result v3
if-eqz v3, :cond_26
const/4 v2, 0x1
:cond_26
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
return v2
:catchall_2d
move-exception v3
invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
throw v3
.end method
.method public asBinder()Landroid/os/IBinder;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/ICloudShareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;
return-object v0
.end method
.method public getInterfaceDescriptor()Ljava/lang/String;
.registers 2
const-string/jumbo v0, "com.pinguo.camera360.cloud.service.ICloudShareService"
return-object v0
.end method