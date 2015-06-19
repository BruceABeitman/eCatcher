.class  Lcom/pinguo/camera360/adv/AppBindModel$2;
.super Ljava/lang/Thread;
.source "AppBindModel.java"
.field final synthetic this$0:Lcom/pinguo/camera360/adv/AppBindModel;
.method constructor <init>(Lcom/pinguo/camera360/adv/AppBindModel;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/adv/AppBindModel$2;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 9
iget-object v5, p0, Lcom/pinguo/camera360/adv/AppBindModel$2;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;
#getter for: Lcom/pinguo/camera360/adv/AppBindModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;
invoke-static {v5}, Lcom/pinguo/camera360/adv/AppBindModel;->access$0(Lcom/pinguo/camera360/adv/AppBindModel;)Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->schedule()Ljava/lang/String;
const-string/jumbo v5, "AppBind"
const-string/jumbo v6, "updateAndDownload start"
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/adv/AppBindModel$2;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;
invoke-virtual {v5}, Lcom/pinguo/camera360/adv/AppBindModel;->getAppBindItems()Ljava/util/List;
move-result-object v2
const-string/jumbo v5, "AppBind"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "list-------------->"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_36
:cond_36
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_3d
:goto_3c
return-void
:cond_3d
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;
iget-object v6, p0, Lcom/pinguo/camera360/adv/AppBindModel$2;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;
invoke-virtual {v6, v1}, Lcom/pinguo/camera360/adv/AppBindModel;->isPackageInstalled(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Z
move-result v6
if-nez v6, :cond_36
iget-object v6, p0, Lcom/pinguo/camera360/adv/AppBindModel$2;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;
invoke-virtual {v6, v1}, Lcom/pinguo/camera360/adv/AppBindModel;->isPosterReady(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Z
move-result v6
if-eqz v6, :cond_64
iget-object v6, p0, Lcom/pinguo/camera360/adv/AppBindModel$2;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;
#calls: Lcom/pinguo/camera360/adv/AppBindModel;->decodePoster(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Landroid/graphics/Bitmap;
invoke-static {v6, v1}, Lcom/pinguo/camera360/adv/AppBindModel;->access$1(Lcom/pinguo/camera360/adv/AppBindModel;Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Landroid/graphics/Bitmap;
move-result-object v4
if-eqz v4, :cond_64
iget-object v6, p0, Lcom/pinguo/camera360/adv/AppBindModel$2;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;
iget-object v6, v6, Lcom/pinguo/camera360/adv/AppBindModel;->mPosters:Ljava/util/Map;
iget-object v7, v1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->showPic:Ljava/lang/String;
invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_64
new-instance v6, Ljava/lang/StringBuilder;
iget-object v7, p0, Lcom/pinguo/camera360/adv/AppBindModel$2;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;
#getter for: Lcom/pinguo/camera360/adv/AppBindModel;->mContext:Landroid/content/Context;
invoke-static {v7}, Lcom/pinguo/camera360/adv/AppBindModel;->access$2(Lcom/pinguo/camera360/adv/AppBindModel;)Landroid/content/Context;
move-result-object v7
invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v7
invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "/banner"
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
:try_start_86
iget-object v6, v1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->showPic:Ljava/lang/String;
invoke-static {v6, v3}, Lcom/pinguo/lib/network/HttpUtils;->download(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
const-string/jumbo v6, "AppBind"
const-string/jumbo v7, "updateAndDownload success"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v6, p0, Lcom/pinguo/camera360/adv/AppBindModel$2;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;
#calls: Lcom/pinguo/camera360/adv/AppBindModel;->decodePoster(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Landroid/graphics/Bitmap;
invoke-static {v6, v1}, Lcom/pinguo/camera360/adv/AppBindModel;->access$1(Lcom/pinguo/camera360/adv/AppBindModel;Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Landroid/graphics/Bitmap;
move-result-object v4
if-eqz v4, :cond_a5
iget-object v6, p0, Lcom/pinguo/camera360/adv/AppBindModel$2;->this$0:Lcom/pinguo/camera360/adv/AppBindModel;
iget-object v6, v6, Lcom/pinguo/camera360/adv/AppBindModel;->mPosters:Ljava/util/Map;
iget-object v7, v1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->showPic:Ljava/lang/String;
invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_a5
const-string/jumbo v6, "AppBind"
const-string/jumbo v7, "decodePoster success"
invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_end_ae
.catch Ljava/io/IOException; {:try_start_86 .. :try_end_ae} :catch_af
goto :goto_3c
:catch_af
move-exception v0
const-string/jumbo v6, "AppBind"
invoke-static {v6, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_36
.end method