.class  Lcom/pinguo/camera360/save/processer/PhotoProcessService$3;
.super Ljava/lang/Object;
.source "PhotoProcessService.java"
.implements Lcom/pinguo/camera360/photoedit/callback/EffectCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
.method constructor <init>(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$3;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public effectMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Z)V
.registers 9
move v1, p2
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v3
const/4 v4, 0x2
if-ne v3, v4, :cond_18
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getSoundInfo()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;->json2SoundInfo(Ljava/lang/String;)Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;
move-result-object v2
if-eqz v2, :cond_18
iget-object v3, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$3;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
#calls: Lcom/pinguo/camera360/save/processer/PhotoProcessService;->dealSoundPhoto(Lcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;)Z
invoke-static {v3, p1, v2}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->access$1(Lcom/pinguo/camera360/save/processer/PhotoProcessService;Lcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/save/sandbox/SoundSandBoxInfo;)Z
move-result v1
:cond_18
iget-object v3, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$3;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
#getter for: Lcom/pinguo/camera360/save/processer/PhotoProcessService;->effectFinishCount:I
invoke-static {v3}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->access$2(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)I
move-result v4
add-int/lit8 v4, v4, 0x1
#setter for: Lcom/pinguo/camera360/save/processer/PhotoProcessService;->effectFinishCount:I
invoke-static {v3, v4}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->access$3(Lcom/pinguo/camera360/save/processer/PhotoProcessService;I)V
const-string/jumbo v3, "PhotoProcessService"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Make effect picture success:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$3;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
#getter for: Lcom/pinguo/camera360/save/processer/PhotoProcessService;->effectFinishCount:I
invoke-static {v5}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->access$2(Lcom/pinguo/camera360/save/processer/PhotoProcessService;)I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p1}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->createItemFromPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;
move-result-object v0
iget-object v3, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$3;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
#calls: Lcom/pinguo/camera360/save/processer/PhotoProcessService;->dealAfter(Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Z)V
invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->access$4(Lcom/pinguo/camera360/save/processer/PhotoProcessService;Lcom/pinguo/camera360/save/processer/PhotoProcesserItem;Z)V
return-void
.end method
.method public effectStart(Lcom/pinguo/camera360/photoedit/PictureInfo;)V
.registers 4
const-string/jumbo v0, "PhotoProcessService"
const-string/jumbo v1, "on start"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method