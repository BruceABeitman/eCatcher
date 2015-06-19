.class Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;
.super Ljava/lang/Object;
.source "NearbyTransferAnyShare.java"

# interfaces
.implements Lcom/lenovo/channel/base/IUserListener;
.implements Lcom/lenovo/network/base/INetworkStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;-><init>(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)V

    return-void
.end method


# virtual methods
.method public onClientStatusChanged(Z)V
    .registers 6

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onClientStatusChanged : succeeded = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$4(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_26

    return-void

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

    invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;->onClientStatusChanged(Z)V

    goto :goto_1f
.end method

.method public onLocalUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
    .registers 8

    sget-object v2, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onLocalUserChanged : userEventType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , userInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferWrapperUtils;->convert(Lcom/lenovo/channel/base/UserInfo;Lcom/lenovo/channel/base/IUserListener$UserEventType;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$4(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_35

    return-void

    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

    invoke-interface {v1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;->onLocalUserChanged(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V

    goto :goto_2e
.end method

.method public onRemoteUserChanged(Lcom/lenovo/channel/base/IUserListener$UserEventType;Lcom/lenovo/channel/base/UserInfo;)V
    .registers 8

    sget-object v2, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onRemoteUserChanged : userEventType = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " , userInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferWrapperUtils;->convert(Lcom/lenovo/channel/base/UserInfo;Lcom/lenovo/channel/base/IUserListener$UserEventType;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$4(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_35

    return-void

    :cond_35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

    invoke-interface {v1, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;->onRemoteUserChanged(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V

    goto :goto_2e
.end method

.method public onScanFailed()V
    .registers 4

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onScanFailed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$4(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_19

    return-void

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;->onScanFailed()V

    goto :goto_12
.end method

.method public onScanResult(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/network/base/Device;",
            ">;)V"
        }
    .end annotation

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onScanResult : devices = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$4(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_26

    return-void

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

    invoke-static {p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferWrapperUtils;->convert(Ljava/util/List;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;->onScanResult(Ljava/util/List;)V

    goto :goto_1f
.end method

.method public onServerStatusChanged(Z)V
    .registers 6

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onServerStatusChanged : enabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$MyListener;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mListenerList:Ljava/util/LinkedList;
    invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$4(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_26

    return-void

    :cond_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;

    invoke-interface {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;->onServerStatusChanged(Z)V

    goto :goto_1f
.end method
