.class public Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
.super Ljava/lang/Object;
.source "NearbyTransferManager.java"
.implements Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
.field private static sTransferService:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
.field private mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
invoke-direct {v0}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;-><init>()V
sput-object v0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->sTransferService:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getInstance()Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
.registers 1
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->sTransferService:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
return-object v0
.end method
.method public acceptUser(Ljava/lang/String;Z)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1, p2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->acceptUser(Ljava/lang/String;Z)V
return-void
.end method
.method public add(Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->add(Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;)V
return-void
.end method
.method public addNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->addNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
return-void
.end method
.method public addReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->addReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
return-void
.end method
.method public addSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->addSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
return-void
.end method
.method public asClient(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->asClient(I)V
return-void
.end method
.method public asHost(I)Z
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->asHost(I)Z
move-result v0
return v0
.end method
.method public build(I)V
.registers 3
const/4 v0, 0x1
if-ne p1, v0, :cond_a
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;
invoke-direct {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
:cond_a
return-void
.end method
.method public connect(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->connect(Ljava/lang/String;)V
return-void
.end method
.method public destroy()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->destroy()V
return-void
.end method
.method public getReceivedFiles(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)Ljava/util/List;
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->getReceivedFiles(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public init(Landroid/content/Context;Ljava/lang/String;ZI)V
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1, p2, p3, p4}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->init(Landroid/content/Context;Ljava/lang/String;ZI)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->onPause()V
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->onResume()V
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public pause()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->pause()V
return-void
.end method
.method public removeNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->removeNearbyTransferListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;)V
return-void
.end method
.method public removeReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->removeReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
return-void
.end method
.method public removeSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->removeSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
return-void
.end method
.method public resume()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->resume()V
return-void
.end method
.method public startClient()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->asClient(I)V
return-void
.end method
.method public startTask()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->startTask()V
return-void
.end method
.method public stopClient()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->stopClient()V
return-void
.end method
.method public stopHost()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->stopHost()V
return-void
.end method
.method public stopTask()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->mWrapper:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;
invoke-interface {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper;->stopTask()V
return-void
.end method