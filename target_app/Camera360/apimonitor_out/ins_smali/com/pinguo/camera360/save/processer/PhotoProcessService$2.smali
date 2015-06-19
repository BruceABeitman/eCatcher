.class  Lcom/pinguo/camera360/save/processer/PhotoProcessService$2;
.super Ljava/lang/Object;
.source "PhotoProcessService.java"
.implements Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
.field private final synthetic val$callback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
.field private final synthetic val$data:[B
.method constructor <init>(Lcom/pinguo/camera360/save/processer/PhotoProcessService;[BLcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$2;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
iput-object p2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$2;->val$data:[B
iput-object p3, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$2;->val$callback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPreviewMaked(Lcom/pinguo/camera360/photoedit/PictureInfo;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.registers 7
const-string/jumbo v0, "PhotoProcessService"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "onPreview maked:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$2;->this$0:Lcom/pinguo/camera360/save/processer/PhotoProcessService;
iget-object v1, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$2;->val$data:[B
iget-object v2, p0, Lcom/pinguo/camera360/save/processer/PhotoProcessService$2;->val$callback:Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;
#calls: Lcom/pinguo/camera360/save/processer/PhotoProcessService;->doSave(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
invoke-static {v0, p1, v1, p2, v2}, Lcom/pinguo/camera360/save/processer/PhotoProcessService;->access$0(Lcom/pinguo/camera360/save/processer/PhotoProcessService;Lcom/pinguo/camera360/photoedit/PictureInfo;[BLandroid/graphics/Bitmap;Lcom/pinguo/camera360/photoedit/callback/IPictureSaveCallback;)V
return-void
.end method