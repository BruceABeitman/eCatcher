.class public Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferWrapperUtils;
.super Ljava/lang/Object;
.source "NearbyTransferWrapperUtils.java"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferWrapperUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferWrapperUtils;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static convert(Lcom/lenovo/channel/base/UserInfo;Lcom/lenovo/channel/base/IUserListener$UserEventType;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
.registers 3
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-direct {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;-><init>()V
invoke-static {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferWrapperUtils;->convertFromAnyShare(Lcom/lenovo/channel/base/UserInfo;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
iput-object p1, v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->mEventType:Lcom/lenovo/channel/base/IUserListener$UserEventType;
return-object v0
.end method
.method public static convert(Ljava/util/List;)Ljava/util/LinkedList;
.registers 6
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_9
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_10
return-object v2
:cond_10
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/lenovo/network/base/Device;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferWrapperUtils;->convertFromAnyShare(Lcom/lenovo/network/base/Device;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_9
.end method
.method private static convertFromAnyShare(Lcom/lenovo/network/base/Device;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
.registers 3
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
invoke-direct {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;-><init>()V
invoke-virtual {p0}, Lcom/lenovo/network/base/Device;->getNickname()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setName(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setId(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/lenovo/network/base/Device;->getIp()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setIp(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/lenovo/network/base/Device;->getIcon()I
move-result v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setIcon(I)V
invoke-virtual {p0}, Lcom/lenovo/network/base/Device;->getId()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setSsid(Ljava/lang/String;)V
return-object v0
.end method
.method private static convertFromAnyShare(Lcom/lenovo/channel/base/UserInfo;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->id:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setId(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/lenovo/channel/base/UserInfo;->online:Z
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setOnline(Z)V
iget v0, p0, Lcom/lenovo/channel/base/UserInfo;->appVer:I
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setAppVer(I)V
iget-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->appId:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setAppId(Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setName(Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->deviceModel:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setDeviceModel(Ljava/lang/String;)V
iget-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->deviceType:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setDeviceType(Ljava/lang/String;)V
iget v0, p0, Lcom/lenovo/channel/base/UserInfo;->icon:I
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setIcon(I)V
iget-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->ip:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setIp(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/lenovo/channel/base/UserInfo;->kicked:Z
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setKicked(Z)V
iget v0, p0, Lcom/lenovo/channel/base/UserInfo;->osVer:I
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setOsVer(I)V
iget-boolean v0, p0, Lcom/lenovo/channel/base/UserInfo;->pending:Z
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setPending(Z)V
iget v0, p0, Lcom/lenovo/channel/base/UserInfo;->port:I
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setPort(I)V
iget-object v0, p0, Lcom/lenovo/channel/base/UserInfo;->releaseChannel:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setReleaseChannel(Ljava/lang/String;)V
iget v0, p0, Lcom/lenovo/channel/base/UserInfo;->screenHeight:I
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setScreenHeight(I)V
iget v0, p0, Lcom/lenovo/channel/base/UserInfo;->screenWidth:I
invoke-virtual {p1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->setScreenWidth(I)V
return-void
.end method