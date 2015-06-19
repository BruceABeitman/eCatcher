.class  Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$7;
.super Ljava/lang/Object;
.source "CameraModeDetailActivity.java"
.implements Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$7;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onLoadingFinish(ILjava/lang/String;)V
.registers 10
invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
move-result-object v5
invoke-virtual {v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiscCache()Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;
move-result-object v5
invoke-interface {v5, p2}, Lcom/nostra13/universalimageloader/cache/disc/DiscCacheAware;->get(Ljava/lang/String;)Ljava/io/File;
move-result-object v3
new-instance v4, Lorg/pinguo/richpicture/RichPictureInterface;
invoke-direct {v4}, Lorg/pinguo/richpicture/RichPictureInterface;-><init>()V
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lorg/pinguo/richpicture/RichPictureInterface;->getAudioInfosFromFile(Ljava/lang/String;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v5
if-lez v5, :cond_73
:try_start_1f
new-instance v5, Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ".mp3"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v5, Ljava/io/File;
invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->exists()Z
move-result v5
if-nez v5, :cond_5e
const/4 v5, 0x0
invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lorg/pinguo/richpicture/AudioInfo;
invoke-virtual {v5}, Lorg/pinguo/richpicture/AudioInfo;->getData()[B
move-result-object v5
invoke-static {v5, v0}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V
:cond_5e
iget-object v5, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$7;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mSoundMap:Ljava/util/Map;
invoke-static {v5}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$13(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Ljava/util/Map;
move-result-object v5
if-eqz v5, :cond_73
iget-object v5, p0, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity$7;->this$0:Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;
#getter for: Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->mSoundMap:Ljava/util/Map;
invoke-static {v5}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->access$13(Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;)Ljava/util/Map;
move-result-object v5
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_73
.catch Ljava/io/IOException; {:try_start_1f .. :try_end_73} :catch_74
:cond_73
:goto_73
return-void
:catch_74
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_73
.end method