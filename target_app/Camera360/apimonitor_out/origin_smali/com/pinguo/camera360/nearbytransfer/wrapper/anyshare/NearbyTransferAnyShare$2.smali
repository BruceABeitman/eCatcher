.class Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;
.super Ljava/lang/Object;
.source "NearbyTransferAnyShare.java"

# interfaces
.implements Lcom/lenovo/channel/base/IShareReceiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(Lcom/lenovo/channel/base/ShareRecord;JJ)V
    .registers 14

    invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$2(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    sget-object v2, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onProgress can not find user in mSendUserTransferInfoMap, SharedRecord = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void

    :cond_2a
    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$2(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;

    invoke-virtual {v6, p4, p5}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->setProgressForOne(J)V

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$3(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$3(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;

    invoke-virtual {v6}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getProgressForOne()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getCompleted()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-virtual {v6}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getTotal()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;->onProgress(Ljava/lang/String;JJ)V

    goto :goto_4b
.end method

.method public onReceived(Ljava/util/Collection;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/lenovo/channel/base/ShareRecord;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    if-nez v1, :cond_37

    :cond_6
    return-void

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/channel/base/ShareRecord;

    invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord;->getSize()J

    move-result-wide v5

    iget-object v9, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$2(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a9

    new-instance v7, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;

    iget-object v9, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    invoke-direct {v7, v9}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;-><init>(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)V

    invoke-virtual {v7, v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->setDeviceId(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->incTotal(J)V

    iget-object v9, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$2(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$2(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v9, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$3(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/List;

    move-result-object v9

    if-eqz v9, :cond_6

    :cond_55
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;

    invoke-virtual {v8}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getTotal()J

    move-result-wide v5

    sget-object v9, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "onReceived id = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;
    invoke-static {v9}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$3(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_99
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_55

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;

    invoke-interface {v2, v0, v5, v6}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;->onStart(Ljava/lang/String;J)V

    goto :goto_99

    :cond_a9
    iget-object v9, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;
    invoke-static {v9}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$2(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;

    invoke-virtual {v7, v5, v6}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->incTotal(J)V

    goto/16 :goto_37
.end method

.method public onResult(Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;Z)V
    .registers 15

    invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$2(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    sget-object v2, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onResult can not find user in mSendUserTransferInfoMap, SharedRecord = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    return-void

    :cond_2a
    if-nez p4, :cond_29

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveUserTransferInfoMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$2(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;

    invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_c8

    invoke-virtual {v8, v7}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->addSuccessFile(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/channel/base/ShareRecord;->getSize()J

    move-result-wide v2

    invoke-virtual {v8, v2, v3}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->incCompleted(J)V

    :goto_4c
    sget-object v2, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onResult complete size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getCompleted()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onResult total size = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getTotal()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$3(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->mReceiveListeners:Ljava/util/List;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;->access$3(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_90
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;

    invoke-virtual {v8}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getCompleted()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getTotal()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;->onProgress(Ljava/lang/String;JJ)V

    invoke-virtual {v8}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getCompleted()J

    move-result-wide v2

    invoke-virtual {v8}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getTotal()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_be

    invoke-virtual {v8}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getSuccessFiles()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v8}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->getFailFiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;->onResult(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    :cond_be
    const/4 v2, 0x0

    :try_start_bf
    invoke-interface {v0, v1, v7, p2, v2}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;->onOneResult(Ljava/lang/String;Ljava/lang/String;ZLcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfException;)V
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_c2} :catch_c3

    goto :goto_90

    :catch_c3
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_90

    :cond_c8
    invoke-virtual {v8, v7}, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->addFailFile(Ljava/lang/String;)V

    goto :goto_4c
.end method
