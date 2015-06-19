.class  Lcom/lenovo/anyshare/sdk/internal/f$5;
.super Ljava/lang/Object;
.source "ShareChannel.java"
.implements Lcom/lenovo/anyshare/sdk/internal/cp;
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/f;
.method constructor <init>(Lcom/lenovo/anyshare/sdk/internal/f;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Lcom/lenovo/anyshare/sdk/internal/ad;ZLcom/lenovo/channel/exception/TransmitException;)V
.registers 12
const/4 v7, 0x1
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v2
check-cast v2, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v1
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z
move-result v3
if-eqz v3, :cond_3e
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;
move-result-object v0
if-eqz p2, :cond_24
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_24
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/lenovo/content/base/ContentItem;->setThumbnailPath(Ljava/lang/String;)V
:cond_24
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v3, :cond_3d
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v5
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentItem;->getVersionedId()Ljava/lang/String;
move-result-object v6
invoke-interface {v3, v4, v5, v6, v7}, Lcom/lenovo/channel/base/IShareHistory;->setThumbnailKnownStatus(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;Z)V
:goto_3d
:cond_3d
return-void
:cond_3e
if-eqz p2, :cond_81
invoke-virtual {v1, v7}, Lcom/lenovo/content/base/ContentItem;->setIsExist(Z)V
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Lcom/lenovo/content/base/ContentItem;->setFilePath(Ljava/lang/String;)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v3, :cond_81
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentItem;->getVersionedId()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v6
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentItem;->getFilePath()Ljava/lang/String;
move-result-object v7
invoke-interface {v3, v4, v5, v6, v7}, Lcom/lenovo/channel/base/IShareHistory;->updateItemStatus(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
sget-object v4, Lcom/lenovo/channel/base/ShareRecord$ShareType;->RECEIVE:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentItem;->getSize()J
move-result-wide v5
invoke-interface {v3, v4, v5, v6}, Lcom/lenovo/channel/base/IShareHistory;->addSharedTotalSize(Lcom/lenovo/channel/base/ShareRecord$ShareType;J)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
sget-object v4, Lcom/lenovo/channel/base/ShareRecord$ShareType;->RECEIVE:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-interface {v3, v4}, Lcom/lenovo/channel/base/IShareHistory;->increaseSharedItemCount(Lcom/lenovo/channel/base/ShareRecord$ShareType;)V
:cond_81
if-eqz p2, :cond_b7
sget-object v3, Lcom/lenovo/channel/base/ShareRecord$Status;->COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;
:goto_85
invoke-virtual {v2, v3}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v3, :cond_a5
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v4
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getShareId()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v6
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;
move-result-object v7
invoke-interface {v3, v4, v5, v6, v7}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V
:cond_a5
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$a;
move-result-object v3
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getShareId()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/h$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord;
goto :goto_3d
:cond_b7
sget-object v3, Lcom/lenovo/channel/base/ShareRecord$Status;->ERROR:Lcom/lenovo/channel/base/ShareRecord$Status;
goto :goto_85
.end method
.method private a(Lcom/lenovo/anyshare/sdk/internal/cq;ZLcom/lenovo/channel/exception/TransmitException;)V
.registers 8
move-object v1, p1
check-cast v1, Lcom/lenovo/anyshare/sdk/internal/ad;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v0
instance-of v2, v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
if-eqz v2, :cond_18
invoke-direct {p0, v1, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/f$5;->a(Lcom/lenovo/anyshare/sdk/internal/ad;ZLcom/lenovo/channel/exception/TransmitException;)V
:goto_e
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z
move-result v3
invoke-static {v2, v0, p2, p3, v3}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;ZLcom/lenovo/channel/exception/TransmitException;Z)V
return-void
:cond_18
invoke-direct {p0, v1, p2, p3}, Lcom/lenovo/anyshare/sdk/internal/f$5;->b(Lcom/lenovo/anyshare/sdk/internal/ad;ZLcom/lenovo/channel/exception/TransmitException;)V
goto :goto_e
.end method
.method private a(Lcom/lenovo/anyshare/sdk/internal/ad;)Z
.registers 11
const/4 v3, 0x1
const/4 v4, 0x0
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v2
instance-of v5, v2, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
if-eqz v5, :cond_13
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z
move-result v5
if-nez v5, :cond_11
:cond_10
:goto_10
return v3
:cond_11
move v3, v4
goto :goto_10
:cond_13
move-object v1, v2
check-cast v1, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v0
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z
move-result v5
if-nez v5, :cond_28
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentItem;->isExist()Z
move-result v5
if-eqz v5, :cond_10
move v3, v4
goto :goto_10
:cond_28
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentItem;->hasThumbnail()Z
move-result v5
if-nez v5, :cond_30
move v3, v4
goto :goto_10
:cond_30
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v5, v5, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v5, :cond_10
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v5, v5, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v6
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v7
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentItem;->getVersionedId()Ljava/lang/String;
move-result-object v8
invoke-interface {v5, v6, v7, v8}, Lcom/lenovo/channel/base/IShareHistory;->getThumbnailKnownStatus(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_10
move v3, v4
goto :goto_10
.end method
.method private b(Lcom/lenovo/anyshare/sdk/internal/ad;ZLcom/lenovo/channel/exception/TransmitException;)V
.registers 12
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v1
check-cast v1, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getCollection()Lcom/lenovo/channel/base/ShareCollection;
move-result-object v0
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z
move-result v3
if-nez v3, :cond_81
if-eqz p2, :cond_82
invoke-virtual {p1}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
:goto_1a
invoke-virtual {v0, v2}, Lcom/lenovo/channel/base/ShareCollection;->setPath(Ljava/lang/String;)V
if-eqz p2, :cond_86
sget-object v3, Lcom/lenovo/channel/base/ShareRecord$Status;->COMPLETED:Lcom/lenovo/channel/base/ShareRecord$Status;
:goto_21
invoke-virtual {v1, v3}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v3, :cond_70
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection;->getVersionedId()Ljava/lang/String;
move-result-object v5
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection;->getType()Lcom/lenovo/content/base/ContentType;
move-result-object v6
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection;->getPath()Ljava/lang/String;
move-result-object v7
invoke-interface {v3, v4, v5, v6, v7}, Lcom/lenovo/channel/base/IShareHistory;->updateCollectionStatus(Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v4
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getShareId()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v6
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;
move-result-object v7
invoke-interface {v3, v4, v5, v6, v7}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V
if-eqz p2, :cond_70
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
sget-object v4, Lcom/lenovo/channel/base/ShareRecord$ShareType;->RECEIVE:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection;->getSize()J
move-result-wide v5
invoke-interface {v3, v4, v5, v6}, Lcom/lenovo/channel/base/IShareHistory;->addSharedTotalSize(Lcom/lenovo/channel/base/ShareRecord$ShareType;J)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v3, v3, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
sget-object v4, Lcom/lenovo/channel/base/ShareRecord$ShareType;->RECEIVE:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-interface {v3, v4}, Lcom/lenovo/channel/base/IShareHistory;->increaseSharedItemCount(Lcom/lenovo/channel/base/ShareRecord$ShareType;)V
:cond_70
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-static {v3}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$a;
move-result-object v3
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->getShareId()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v4, v5}, Lcom/lenovo/anyshare/sdk/internal/h$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord;
:cond_81
return-void
:cond_82
const-string/jumbo v2, ""
goto :goto_1a
:cond_86
sget-object v3, Lcom/lenovo/channel/base/ShareRecord$Status;->ERROR:Lcom/lenovo/channel/base/ShareRecord$Status;
goto :goto_21
.end method
.method public a(Lcom/lenovo/anyshare/sdk/internal/cq;I)V
.registers 11
move-object v4, p1
check-cast v4, Lcom/lenovo/anyshare/sdk/internal/ad;
const-string/jumbo v5, "ShareChannel"
const-string/jumbo v6, "download task complete"
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z
move-result v5
if-nez v5, :cond_58
invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v2
const/4 v1, 0x0
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;
move-result-object v5
sget-object v6, Lcom/lenovo/channel/base/ShareRecord$RecordType;->ITEM:Lcom/lenovo/channel/base/ShareRecord$RecordType;
if-ne v5, v6, :cond_5e
invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/ad;->b()Ljava/io/File;
move-result-object v0
if-eqz v0, :cond_4f
const-string/jumbo v5, "ShareChannel"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "send media scan:"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Landroid/content/Intent;
const-string/jumbo v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v6
invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
:goto_4f
:cond_4f
if-eqz v1, :cond_58
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v5, v5, Lcom/lenovo/anyshare/sdk/internal/f;->a:Landroid/content/Context;
invoke-virtual {v5, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
:cond_58
const/4 v5, 0x1
const/4 v6, 0x0
invoke-direct {p0, v4, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/f$5;->a(Lcom/lenovo/anyshare/sdk/internal/cq;ZLcom/lenovo/channel/exception/TransmitException;)V
return-void
:cond_5e
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord;->getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;
move-result-object v5
sget-object v6, Lcom/lenovo/channel/base/ShareRecord$RecordType;->COLLECTION:Lcom/lenovo/channel/base/ShareRecord$RecordType;
if-ne v5, v6, :cond_4f
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/k;->a()Ljava/io/File;
move-result-object v3
if-eqz v3, :cond_4f
const-string/jumbo v5, "ShareChannel"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "send media scan:"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Landroid/content/Intent;
const-string/jumbo v5, "android.intent.action.MEDIA_MOUNTED"
invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
move-result-object v6
invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
goto :goto_4f
.end method
.method public a(Lcom/lenovo/anyshare/sdk/internal/cq;JJ)V
.registers 15
move-object v8, p1
check-cast v8, Lcom/lenovo/anyshare/sdk/internal/ad;
invoke-virtual {v8}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z
move-result v0
if-eqz v0, :cond_a
:goto_9
return-void
:cond_a
long-to-double v0, p4
long-to-double v2, p2
div-double/2addr v0, v2
const-wide/high16 v2, 0x4059
mul-double v6, v0, v2
const-wide/high16 v0, 0x4024
rem-double v0, v6, v0
const-wide/16 v2, 0x0
cmpl-double v0, v0, v2
if-nez v0, :cond_44
const-string/jumbo v0, "ShareChannel"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "download task "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v8}, Lcom/lenovo/anyshare/sdk/internal/ad;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " percent:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
:cond_44
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v8}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v1
move-wide v2, p2
move-wide v4, p4
invoke-static/range {v0 .. v5}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;JJ)V
goto :goto_9
.end method
.method public a(Lcom/lenovo/anyshare/sdk/internal/cq;)Z
.registers 15
const/4 v8, 0x1
const/4 v7, 0x0
move-object v6, p1
check-cast v6, Lcom/lenovo/anyshare/sdk/internal/ad;
invoke-virtual {v6}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v5
:try_start_9
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/i;->i(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_31
invoke-virtual {v6}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z
move-result v9
if-nez v9, :cond_49
iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-static {v9}, Lcom/lenovo/anyshare/sdk/internal/f;->b(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/h$a;
move-result-object v9
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v10
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v11
invoke-virtual {v9, v10, v11}, Lcom/lenovo/anyshare/sdk/internal/h$a;->b(Ljava/lang/String;Ljava/lang/String;)Z
move-result v9
if-nez v9, :cond_49
:cond_31
new-instance v8, Lcom/lenovo/channel/exception/TransmitException;
const/4 v9, 0x1
const-string/jumbo v10, "record had removed from cache!"
invoke-direct {v8, v9, v10}, Lcom/lenovo/channel/exception/TransmitException;-><init>(ILjava/lang/String;)V
throw v8
:try_end_3b
.catch Lcom/lenovo/channel/exception/TransmitException; {:try_start_9 .. :try_end_3b} :catch_3b
:catch_3b
move-exception v1
invoke-direct {p0, v6, v7, v1}, Lcom/lenovo/anyshare/sdk/internal/f$5;->a(Lcom/lenovo/anyshare/sdk/internal/cq;ZLcom/lenovo/channel/exception/TransmitException;)V
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v1}, Lcom/lenovo/channel/exception/TransmitException;->getCode()I
move-result v9
invoke-static {v8, v5, v9}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;I)V
:cond_48
:goto_48
return v7
:cond_49
:try_start_49
invoke-virtual {v6, v0}, Lcom/lenovo/anyshare/sdk/internal/ad;->a(Ljava/lang/String;)V
:try_end_4c
.catch Lcom/lenovo/channel/exception/TransmitException; {:try_start_49 .. :try_end_4c} :catch_3b
invoke-direct {p0, v6}, Lcom/lenovo/anyshare/sdk/internal/f$5;->a(Lcom/lenovo/anyshare/sdk/internal/ad;)Z
move-result v9
if-nez v9, :cond_84
const/4 v9, 0x0
invoke-direct {p0, v6, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/f$5;->a(Lcom/lenovo/anyshare/sdk/internal/cq;ZLcom/lenovo/channel/exception/TransmitException;)V
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-static {v8}, Lcom/lenovo/anyshare/sdk/internal/f;->c(Lcom/lenovo/anyshare/sdk/internal/f;)Lcom/lenovo/anyshare/sdk/internal/d;
move-result-object v8
invoke-virtual {v8}, Lcom/lenovo/anyshare/sdk/internal/d;->c()Lcom/lenovo/anyshare/sdk/internal/m;
move-result-object v3
invoke-virtual {v6}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z
move-result v8
if-nez v8, :cond_48
if-eqz v3, :cond_48
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getItem()Lcom/lenovo/content/base/ContentItem;
move-result-object v2
new-instance v4, Lcom/lenovo/anyshare/sdk/internal/g$c;
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v8
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v9
invoke-direct {v4, v8, v9}, Lcom/lenovo/anyshare/sdk/internal/g$c;-><init>(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)V
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v8
invoke-virtual {v4, v8}, Lcom/lenovo/anyshare/sdk/internal/g$c;->b(Ljava/lang/String;)V
invoke-interface {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/m;->a(Lcom/lenovo/anyshare/sdk/internal/n;)V
goto :goto_48
:cond_84
invoke-virtual {v6}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z
move-result v7
if-nez v7, :cond_ac
sget-object v7, Lcom/lenovo/channel/base/ShareRecord$Status;->PROCESSING:Lcom/lenovo/channel/base/ShareRecord$Status;
invoke-virtual {v5, v7}, Lcom/lenovo/channel/base/ShareRecord;->setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v7, v7, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
if-eqz v7, :cond_ac
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
iget-object v7, v7, Lcom/lenovo/anyshare/sdk/internal/f;->b:Lcom/lenovo/channel/base/IShareHistory;
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
move-result-object v9
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getShareId()Ljava/lang/String;
move-result-object v10
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getDeviceId()Ljava/lang/String;
move-result-object v11
invoke-virtual {v5}, Lcom/lenovo/channel/base/ShareRecord;->getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;
move-result-object v12
invoke-interface {v7, v9, v10, v11, v12}, Lcom/lenovo/channel/base/IShareHistory;->updateShareRecordStatus(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/channel/base/ShareRecord$Status;)V
:cond_ac
move v7, v8
goto :goto_48
.end method
.method public a(Lcom/lenovo/anyshare/sdk/internal/cq;Ljava/lang/Exception;)Z
.registers 12
const/4 v4, 0x1
const/4 v5, 0x0
instance-of v6, p2, Lcom/lenovo/channel/exception/TransmitException;
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V
move-object v3, p1
check-cast v3, Lcom/lenovo/anyshare/sdk/internal/ad;
move-object v0, p2
check-cast v0, Lcom/lenovo/channel/exception/TransmitException;
invoke-virtual {v0}, Lcom/lenovo/channel/exception/TransmitException;->getCode()I
move-result v1
invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/ad;->i()I
move-result v6
const/4 v7, 0x3
if-gt v6, v7, :cond_31
const/16 v6, 0x8
if-eq v1, v6, :cond_31
const/4 v6, 0x7
if-eq v1, v6, :cond_31
const/4 v6, 0x5
if-eq v1, v6, :cond_31
move v2, v4
:goto_23
if-eqz v2, :cond_33
const-wide/16 v5, 0x7d0
invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/ad;->i()I
move-result v7
int-to-long v7, v7
mul-long/2addr v5, v7
invoke-virtual {v3, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/ad;->a(J)V
:goto_30
return v4
:cond_31
move v2, v5
goto :goto_23
:cond_33
invoke-direct {p0, v3, v5, v0}, Lcom/lenovo/anyshare/sdk/internal/f$5;->a(Lcom/lenovo/anyshare/sdk/internal/cq;ZLcom/lenovo/channel/exception/TransmitException;)V
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/f$5;->a:Lcom/lenovo/anyshare/sdk/internal/f;
invoke-virtual {v3}, Lcom/lenovo/anyshare/sdk/internal/ad;->d()Lcom/lenovo/channel/base/ShareRecord;
move-result-object v6
invoke-virtual {v0}, Lcom/lenovo/channel/exception/TransmitException;->getCode()I
move-result v7
invoke-static {v4, v6, v7}, Lcom/lenovo/anyshare/sdk/internal/f;->a(Lcom/lenovo/anyshare/sdk/internal/f;Lcom/lenovo/channel/base/ShareRecord;I)V
move v4, v5
goto :goto_30
.end method