.class public Lcom/pinguo/share/website/WebShareModel;
.super Ljava/lang/Object;
.source "WebShareModel.java"
.implements Ljava/lang/Runnable;
.field private static mLastOnce:Ljava/lang/String;
.field private static mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
.field private mContext:Landroid/content/Context;
.field private mIsReStart:Z
.field private mShareProcess:Lcom/pinguo/share/website/IShareProcess;
.field private mUrl:Ljava/lang/String;
.field private mWebList:Ljava/util/List;
.field private mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
.method public constructor <init>(Landroid/app/Activity;Lcom/pinguo/share/website/IShareProcess;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/share/website/WebShareModel;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
return-void
.end method
.method public reStartShare(Ljava/util/List;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
const/4 v1, 0x1
invoke-virtual {p0, v0, p1, v1}, Lcom/pinguo/share/website/WebShareModel;->startShare(Lcom/pinguo/share/website/WebShareBean;Ljava/util/List;Z)V
return-void
.end method
.method public run()V
.registers 38
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
if-eqz v2, :cond_54
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-interface {v2, v3}, Lcom/pinguo/share/website/IShareProcess;->processBefore(Lcom/pinguo/share/website/WebShareBean;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getShareType()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_45
new-instance v9, Ljava/util/zip/CRC32;
invoke-direct {v9}, Ljava/util/zip/CRC32;-><init>()V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getMedia()[B
move-result-object v2
const/4 v3, 0x0
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v4}, Lcom/pinguo/share/website/WebShareBean;->getMedia()[B
move-result-object v4
array-length v4, v4
invoke-virtual {v9, v2, v3, v4}, Ljava/util/zip/CRC32;->update([BII)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v9}, Ljava/util/zip/CRC32;->getValue()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/share/website/WebShareBean;->setCrc32(Ljava/lang/String;)V
:cond_45
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/share/website/WebShareBean;->setOnce(Ljava/lang/String;)V
:cond_54
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
if-eqz v2, :cond_151
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getShareType()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_151
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
if-eqz v2, :cond_13e
move-object/from16 v0, p0
iget-boolean v2, v0, Lcom/pinguo/share/website/WebShareModel;->mIsReStart:Z
if-nez v2, :cond_115
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getTitle()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_115
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getTitle()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getTitle()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_115
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getStyle_id()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_115
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getStyle_id()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getStyle_id()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_115
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getCrc32()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_115
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getCrc32()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getCrc32()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_115
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getAt()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_115
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getAt()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getAt()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_115
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getLocation()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_115
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getLocation()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getLocation()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_115
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
sget-object v3, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getPid()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/share/website/WebShareBean;->setPid(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
sget-object v3, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getOnce()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/share/website/WebShareBean;->setOnce(Ljava/lang/String;)V
:cond_115
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getCrc32()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_13e
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getCrc32()Ljava/lang/String;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getCrc32()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_13e
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
sget-object v3, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getPid()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/share/website/WebShareBean;->setPid(Ljava/lang/String;)V
:cond_13e
move-object/from16 v0, p0
iget-boolean v2, v0, Lcom/pinguo/share/website/WebShareModel;->mIsReStart:Z
if-eqz v2, :cond_151
sget-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastOnce:Ljava/lang/String;
if-eqz v2, :cond_151
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
sget-object v3, Lcom/pinguo/share/website/WebShareModel;->mLastOnce:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/pinguo/share/website/WebShareBean;->setOnce(Ljava/lang/String;)V
:cond_151
new-instance v19, Ljava/util/HashMap;
invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v15
:goto_15e
:cond_15e
invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_1b5
const/16 v31, 0x0
const-string/jumbo v3, "share"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v2, "mWebList size:"
invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
if-nez v2, :cond_20a
const/4 v2, 0x0
:goto_178
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v3, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_start_183
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
if-eqz v2, :cond_193
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->isEmpty()Z
:try_end_190
.catchall {:try_start_183 .. :try_end_190} :catchall_513
.catch Ljava/lang/Exception; {:try_start_183 .. :try_end_190} :catch_496
move-result v2
if-eqz v2, :cond_214
:cond_193
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
if-eqz v2, :cond_1b4
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
if-eqz v2, :cond_1a9
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getOnce()Ljava/lang/String;
move-result-object v2
sput-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastOnce:Ljava/lang/String;
:cond_1a9
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
move-object/from16 v0, v19
move/from16 v1, v31
invoke-interface {v2, v0, v1}, Lcom/pinguo/share/website/IShareProcess;->finish(Ljava/util/Map;I)V
:goto_1b4
:cond_1b4
return-void
:cond_1b5
invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v34
check-cast v34, Lcom/pinguo/share/website/WebSiteInfoBean;
new-instance v30, Lcom/pinguo/share/website/ShareResultBean;
invoke-direct/range {v30 .. v30}, Lcom/pinguo/share/website/ShareResultBean;-><init>()V
move-object/from16 v0, v30
move-object/from16 v1, v34
invoke-virtual {v0, v1}, Lcom/pinguo/share/website/ShareResultBean;->setWsib(Lcom/pinguo/share/website/WebSiteInfoBean;)V
const/4 v2, 0x0
move-object/from16 v0, v30
invoke-virtual {v0, v2}, Lcom/pinguo/share/website/ShareResultBean;->setSuccess(Z)V
const/4 v2, 0x0
move-object/from16 v0, v30
invoke-virtual {v0, v2}, Lcom/pinguo/share/website/ShareResultBean;->setReBind(Z)V
move-object/from16 v0, v34
iget-object v2, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
move-object/from16 v0, v19
move-object/from16 v1, v30
invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual/range {v34 .. v34}, Lcom/pinguo/share/website/WebSiteInfoBean;->getTimespan()J
move-result-wide v2
invoke-virtual/range {v34 .. v34}, Lcom/pinguo/share/website/WebSiteInfoBean;->getExpire_in()J
move-result-wide v4
const-wide/16 v35, 0x3e8
mul-long v4, v4, v35
add-long v17, v2, v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
cmp-long v2, v2, v17
if-lez v2, :cond_15e
const/4 v2, 0x1
move-object/from16 v0, v30
invoke-virtual {v0, v2}, Lcom/pinguo/share/website/ShareResultBean;->setReBind(Z)V
invoke-virtual/range {v30 .. v30}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mContext:Landroid/content/Context;
invoke-static {v2, v3}, Lcom/pinguo/share/bind/BindManager;->clearWebSite(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;)Z
invoke-interface {v15}, Ljava/util/Iterator;->remove()V
goto/16 :goto_15e
:cond_20a
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
goto/16 :goto_178
:cond_214
:try_start_214
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
invoke-static {v3}, Lcom/pinguo/share/util/ShareModuleUtil;->getEncodeSiteInfo(Ljava/util/List;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/share/website/WebShareBean;->setEncode_site_info(Ljava/lang/String;)V
const/16 v26, 0x0
const-string/jumbo v7, ""
const-string/jumbo v2, "share"
const-string/jumbo v3, "share photoWall"
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getShareType()I
move-result v2
const/4 v3, 0x2
if-ne v2, v3, :cond_270
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getCloudShareInfo()Lcom/pinguo/share/CloudShareInfo;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/share/CloudShareInfo;->isNeedPhotoWall()Z
move-result v2
if-eqz v2, :cond_270
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getCloudShareInfo()Lcom/pinguo/share/CloudShareInfo;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/share/CloudShareInfo;->cloudAlbumUrl:Ljava/lang/String;
if-eqz v2, :cond_311
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getCloudShareInfo()Lcom/pinguo/share/CloudShareInfo;
move-result-object v2
iget-object v2, v2, Lcom/pinguo/share/CloudShareInfo;->cloudAlbumUrl:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_311
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getCloudShareInfo()Lcom/pinguo/share/CloudShareInfo;
move-result-object v2
iget-object v7, v2, Lcom/pinguo/share/CloudShareInfo;->cloudAlbumUrl:Ljava/lang/String;
:goto_270
:cond_270
const-string/jumbo v2, "share"
const-string/jumbo v3, "share sharePhotoes"
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v7, :cond_2af
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/share/net/ServiceConnection;->getServiceConnection(Landroid/content/Context;)Lcom/pinguo/share/net/ServiceConnection;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/share/website/WebShareModel;->mUrl:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/share/website/WebShareModel;->mContext:Landroid/content/Context;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
invoke-virtual/range {v2 .. v7}, Lcom/pinguo/share/net/ServiceConnection;->sharePhotoes(Lcom/pinguo/share/website/WebShareBean;Ljava/lang/String;Landroid/content/Context;Lcom/pinguo/share/website/IShareProcess;Ljava/lang/String;)Ljava/lang/String;
move-result-object v26
const-string/jumbo v2, "share"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "result:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v26
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_2af
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
const/16 v3, 0x64
invoke-interface {v2, v3}, Lcom/pinguo/share/website/IShareProcess;->rate(I)V
new-instance v27, Lorg/json/JSONObject;
move-object/from16 v0, v27
move-object/from16 v1, v26
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "status"
move-object/from16 v0, v27
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v24
const-string/jumbo v2, "message"
move-object/from16 v0, v27
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v25
const-string/jumbo v2, "200"
move-object/from16 v0, v24
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_4ed
const-string/jumbo v2, "site_result"
move-object/from16 v0, v27
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v8
const/4 v13, 0x0
:goto_2e8
invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
:try_end_2eb
.catchall {:try_start_214 .. :try_end_2eb} :catchall_513
.catch Ljava/lang/Exception; {:try_start_214 .. :try_end_2eb} :catch_496
move-result v2
if-lt v13, v2, :cond_3ad
:cond_2ee
:goto_2ee
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
if-eqz v2, :cond_1b4
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
if-eqz v2, :cond_304
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getOnce()Ljava/lang/String;
move-result-object v2
sput-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastOnce:Ljava/lang/String;
:cond_304
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
move-object/from16 v0, v19
move/from16 v1, v31
invoke-interface {v2, v0, v1}, Lcom/pinguo/share/website/IShareProcess;->finish(Ljava/util/Map;I)V
goto/16 :goto_1b4
:try_start_311
:cond_311
const-string/jumbo v22, ""
:try_start_314
:try_end_314
.catchall {:try_start_311 .. :try_end_314} :catchall_513
.catch Ljava/lang/Exception; {:try_start_311 .. :try_end_314} :catch_496
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mContext:Landroid/content/Context;
invoke-static {v2}, Lcom/pinguo/share/net/ServiceConnection;->getServiceConnection(Landroid/content/Context;)Lcom/pinguo/share/net/ServiceConnection;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
sget-object v4, Lcom/pinguo/share/ShareConstants;->HOST_CLOUD:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/mobile/share/getPhotoWallLinks"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v4}, Lcom/pinguo/share/website/WebShareBean;->getCloudShareInfo()Lcom/pinguo/share/CloudShareInfo;
move-result-object v4
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v5}, Lcom/pinguo/share/website/WebShareBean;->getTitle()Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
invoke-virtual {v2, v3, v4, v5, v6}, Lcom/pinguo/share/net/ServiceConnection;->getPhotoWallLinks(Ljava/lang/String;Lcom/pinguo/share/CloudShareInfo;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
move-result-object v22
new-instance v16, Lorg/json/JSONObject;
move-object/from16 v0, v16
move-object/from16 v1, v22
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "share"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "photoWallResult:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v16
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "200"
const-string/jumbo v3, "status"
move-object/from16 v0, v16
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_270
const-string/jumbo v2, "data"
move-object/from16 v0, v16
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
const-string/jumbo v3, "puburl"
invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_38c
.catchall {:try_start_314 .. :try_end_38c} :catchall_513
.catch Ljava/lang/Exception; {:try_start_314 .. :try_end_38c} :catch_38f
move-result-object v7
goto/16 :goto_270
:catch_38f
move-exception v10
:try_start_390
const-string/jumbo v2, "share"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "photoWallResult exception\n"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v7, 0x0
goto/16 :goto_270
:cond_3ad
invoke-virtual {v8, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v32
const-string/jumbo v2, "site_code"
move-object/from16 v0, v32
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
move-object/from16 v0, v19
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v30
check-cast v30, Lcom/pinguo/share/website/ShareResultBean;
const-string/jumbo v2, "status"
move-object/from16 v0, v32
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v28
const-string/jumbo v2, "message"
move-object/from16 v0, v32
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v30
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/share/website/ShareResultBean;->setMessage(Ljava/lang/String;)V
const-string/jumbo v2, "share"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "share result:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {v30 .. v30}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v4
iget-object v4, v4, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "200"
move-object/from16 v0, v28
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_479
const/4 v2, 0x1
move-object/from16 v0, v30
invoke-virtual {v0, v2}, Lcom/pinguo/share/website/ShareResultBean;->setSuccess(Z)V
add-int/lit8 v31, v31, 0x1
const-string/jumbo v2, "is_refresh"
move-object/from16 v0, v32
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v23
const/4 v2, 0x1
move/from16 v0, v23
if-ne v0, v2, :cond_455
const-string/jumbo v2, "refresh_token"
move-object/from16 v0, v32
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v33
const-string/jumbo v2, "expire_time"
move-object/from16 v0, v32
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v11
invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_455
const-wide/16 v2, 0x0
cmp-long v2, v11, v2
if-lez v2, :cond_455
move-object/from16 v0, v30
move-object/from16 v1, v33
invoke-virtual {v0, v1}, Lcom/pinguo/share/website/ShareResultBean;->setRefreshToken(Ljava/lang/String;)V
move-object/from16 v0, v30
invoke-virtual {v0, v11, v12}, Lcom/pinguo/share/website/ShareResultBean;->setExpiredTime(J)V
const/4 v2, 0x1
move-object/from16 v0, v30
invoke-virtual {v0, v2}, Lcom/pinguo/share/website/ShareResultBean;->setIsRefresh(Z)V
:cond_455
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
const-string/jumbo v3, "picture_id"
move-object/from16 v0, v27
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/share/website/WebShareBean;->setPid(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getPid()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_475
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
sput-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
:cond_475
:goto_475
add-int/lit8 v13, v13, 0x1
goto/16 :goto_2e8
:cond_479
const-string/jumbo v2, "401"
move-object/from16 v0, v28
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_475
const/4 v2, 0x1
move-object/from16 v0, v30
invoke-virtual {v0, v2}, Lcom/pinguo/share/website/ShareResultBean;->setReBind(Z)V
invoke-virtual/range {v30 .. v30}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mContext:Landroid/content/Context;
invoke-static {v2, v3}, Lcom/pinguo/share/bind/BindManager;->clearWebSite(Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;)Z
:try_end_495
.catchall {:try_start_390 .. :try_end_495} :catchall_513
.catch Ljava/lang/Exception; {:try_start_390 .. :try_end_495} :catch_496
goto :goto_475
:catch_496
move-exception v10
:try_start_497
const-string/jumbo v2, "share"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "share Exception:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mContext:Landroid/content/Context;
const v3, 0x7f08032a
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v21
invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v2
invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_4c4
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
:try_end_4c7
.catchall {:try_start_497 .. :try_end_4c7} :catchall_513
move-result v2
if-nez v2, :cond_56d
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
if-eqz v2, :cond_1b4
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
if-eqz v2, :cond_4e0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebShareBean;->getOnce()Ljava/lang/String;
move-result-object v2
sput-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastOnce:Ljava/lang/String;
:cond_4e0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
move-object/from16 v0, v19
move/from16 v1, v31
invoke-interface {v2, v0, v1}, Lcom/pinguo/share/website/IShareProcess;->finish(Ljava/util/Map;I)V
goto/16 :goto_1b4
:cond_4ed
:try_start_4ed
invoke-interface/range {v19 .. v19}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v2
invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v14
:goto_4f5
invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_536
const-string/jumbo v2, "50104"
move-object/from16 v0, v24
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2ee
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/pinguo/share/website/WebShareBean;->setPid(Ljava/lang/String;)V
const/4 v2, 0x0
sput-object v2, Lcom/pinguo/share/website/WebShareModel;->mLastWebShareBean:Lcom/pinguo/share/website/WebShareBean;
:try_end_511
.catchall {:try_start_4ed .. :try_end_511} :catchall_513
.catch Ljava/lang/Exception; {:try_start_4ed .. :try_end_511} :catch_496
goto/16 :goto_2ee
:catchall_513
move-exception v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
if-eqz v3, :cond_535
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
if-eqz v3, :cond_52a
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getOnce()Ljava/lang/String;
move-result-object v3
sput-object v3, Lcom/pinguo/share/website/WebShareModel;->mLastOnce:Ljava/lang/String;
:cond_52a
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
move-object/from16 v0, v19
move/from16 v1, v31
invoke-interface {v3, v0, v1}, Lcom/pinguo/share/website/IShareProcess;->finish(Ljava/util/Map;I)V
:cond_535
throw v2
:cond_536
:try_start_536
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v29
check-cast v29, Lcom/pinguo/share/website/ShareResultBean;
const-string/jumbo v2, "share"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "share result else:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v24
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, ", set rebind true, "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {v29 .. v29}, Lcom/pinguo/share/website/ShareResultBean;->getWsib()Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v4
iget-object v4, v4, Lcom/pinguo/share/website/WebSiteInfoBean;->site_name:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v29
move-object/from16 v1, v25
invoke-virtual {v0, v1}, Lcom/pinguo/share/website/ShareResultBean;->setMessage(Ljava/lang/String;)V
:try_end_56c
.catchall {:try_start_536 .. :try_end_56c} :catchall_513
.catch Ljava/lang/Exception; {:try_start_536 .. :try_end_56c} :catch_496
goto :goto_4f5
:cond_56d
:try_start_56d
invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v29
check-cast v29, Lcom/pinguo/share/website/ShareResultBean;
move-object/from16 v0, v29
move-object/from16 v1, v21
invoke-virtual {v0, v1}, Lcom/pinguo/share/website/ShareResultBean;->setMessage(Ljava/lang/String;)V
:try_end_57a
.catchall {:try_start_56d .. :try_end_57a} :catchall_513
goto/16 :goto_4c4
.end method
.method public startShare(Lcom/pinguo/share/website/WebShareBean;)V
.registers 4
const/4 v0, 0x0
const/4 v1, 0x0
invoke-virtual {p0, p1, v0, v1}, Lcom/pinguo/share/website/WebShareModel;->startShare(Lcom/pinguo/share/website/WebShareBean;Ljava/util/List;Z)V
return-void
.end method
.method public startShare(Lcom/pinguo/share/website/WebShareBean;Ljava/util/List;Z)V
.registers 12
const-string/jumbo v3, "share"
const-string/jumbo v4, "=====>startShare"
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iput-boolean p3, p0, Lcom/pinguo/share/website/WebShareModel;->mIsReStart:Z
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/util/ShareModuleUtil;->hasNet(Landroid/content/Context;)Z
move-result v3
if-nez v3, :cond_1d
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
if-eqz v3, :cond_1c
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
invoke-interface {v3}, Lcom/pinguo/share/website/IShareProcess;->noNet()V
:goto_1c
:cond_1c
return-void
:cond_1d
iput-object p1, p0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
if-nez p2, :cond_16a
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iput-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mContext:Landroid/content/Context;
invoke-static {v3}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;
move-result-object v0
if-eqz v0, :cond_40
invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getBindArray()Ljava/util/List;
move-result-object v3
if-eqz v3, :cond_40
invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getBindArray()Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-nez v3, :cond_4a
:cond_40
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
if-eqz v3, :cond_1c
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
invoke-interface {v3}, Lcom/pinguo/share/website/IShareProcess;->noBind()V
goto :goto_1c
:cond_4a
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v3}, Lcom/pinguo/share/website/WebShareBean;->getShareType()I
move-result v3
const/4 v4, 0x1
if-ne v3, v4, :cond_dd
invoke-virtual {p1}, Lcom/pinguo/share/website/WebShareBean;->getSoundInfo()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_c2
const-string/jumbo v3, ""
invoke-virtual {p1}, Lcom/pinguo/share/website/WebShareBean;->getSoundInfo()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_c2
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getShare()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/shareaudio.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mUrl:Ljava/lang/String;
const-string/jumbo v3, "Test"
const-string/jumbo v4, "share sound photo!"
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_89
const-string/jumbo v3, "share"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "share url:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/share/website/WebShareModel;->mUrl:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/Camera360Lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getBindArray()Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_a9
:cond_a9
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_11e
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-nez v3, :cond_131
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
if-eqz v3, :cond_1c
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
invoke-interface {v3}, Lcom/pinguo/share/website/IShareProcess;->noActive()V
goto/16 :goto_1c
:cond_c2
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getShare()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/share.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mUrl:Ljava/lang/String;
goto :goto_89
:cond_dd
invoke-virtual {p1}, Lcom/pinguo/share/website/WebShareBean;->getCloudShareInfo()Lcom/pinguo/share/CloudShareInfo;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/share/CloudShareInfo;->isAudioPhoto()Z
move-result v3
if-eqz v3, :cond_102
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getShare()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/cloudshareaudio.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mUrl:Ljava/lang/String;
goto :goto_89
:cond_102
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getShare()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/cloudshare.json"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mUrl:Ljava/lang/String;
goto/16 :goto_89
:cond_11e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/share/website/WebSiteInfoBean;
invoke-virtual {v2}, Lcom/pinguo/share/website/WebSiteInfoBean;->isActivate()Z
move-result v4
if-eqz v4, :cond_a9
iget-object v4, p0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_a9
:cond_131
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getLocationTime()J
move-result-wide v5
sub-long/2addr v3, v5
const-wide/16 v5, 0x3e8
div-long/2addr v3, v5
invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getTimespan()J
move-result-wide v5
add-long/2addr v3, v5
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v3
invoke-virtual {p1, v3}, Lcom/pinguo/share/website/WebShareBean;->setTimespan(Ljava/lang/String;)V
:goto_149
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_14f
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_16d
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
if-eqz v3, :cond_160
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
iget-object v4, p0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-interface {v3, v4}, Lcom/pinguo/share/website/IShareProcess;->showDialog(Lcom/pinguo/share/website/WebShareBean;)V
:cond_160
new-instance v1, Ljava/lang/Thread;
invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v1}, Ljava/lang/Thread;->start()V
goto/16 :goto_1c
:cond_16a
iput-object p2, p0, Lcom/pinguo/share/website/WebShareModel;->mWebList:Ljava/util/List;
goto :goto_149
:cond_16d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/share/website/WebSiteInfoBean;
iget-boolean v4, p0, Lcom/pinguo/share/website/WebShareModel;->mIsReStart:Z
if-eqz v4, :cond_18c
invoke-virtual {v2}, Lcom/pinguo/share/website/WebSiteInfoBean;->getTimespan()J
move-result-wide v4
const-wide/16 v6, 0x0
cmp-long v4, v4, v6
if-lez v4, :cond_187
invoke-virtual {v2}, Lcom/pinguo/share/website/WebSiteInfoBean;->getNickName()Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_18c
:cond_187
iget-object v4, p0, Lcom/pinguo/share/website/WebShareModel;->mContext:Landroid/content/Context;
invoke-static {v4, v2}, Lcom/pinguo/share/bind/BindSharedPreferences;->refreshWebSiteInfo(Landroid/content/Context;Lcom/pinguo/share/website/WebSiteInfoBean;)V
:cond_18c
const-string/jumbo v4, "jiepang"
iget-object v5, v2, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_14f
iget-object v4, p0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v4}, Lcom/pinguo/share/website/WebShareBean;->getLocation_id()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_1ae
const-string/jumbo v4, ""
iget-object v5, p0, Lcom/pinguo/share/website/WebShareModel;->mWebShareBean:Lcom/pinguo/share/website/WebShareBean;
invoke-virtual {v5}, Lcom/pinguo/share/website/WebShareBean;->getLocation_id()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_14f
:cond_1ae
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
if-eqz v3, :cond_1c
iget-object v3, p0, Lcom/pinguo/share/website/WebShareModel;->mShareProcess:Lcom/pinguo/share/website/IShareProcess;
invoke-interface {v3}, Lcom/pinguo/share/website/IShareProcess;->noLocationIdForJiepang()V
goto/16 :goto_1c
.end method