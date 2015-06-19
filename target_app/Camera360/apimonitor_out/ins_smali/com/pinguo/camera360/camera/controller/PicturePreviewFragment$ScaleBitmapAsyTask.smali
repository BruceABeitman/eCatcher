.class  Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;
.super Landroid/os/AsyncTask;
.source "PicturePreviewFragment.java"
.field  isCanChangeEffect:Z
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected varargs doInBackground([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
.registers 11
const/4 v3, 0x0
const/4 v5, 0x0
aget-object v0, p1, v5
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->isCanChangeEffect:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureData:[B
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$8(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)[B
move-result-object v0
invoke-static {}, Lcom/pinguo/lib/UIContants;->getPreviewLength()I
move-result v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$9(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getRotation()I
move-result v2
invoke-static {v0, v1, v2}, Lcom/pinguo/lib/image/BitmapUtils;->scalePreviewJpegData([BII)Landroid/graphics/Bitmap;
move-result-object v6
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$9(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPicFrame()I
move-result v8
if-eqz v8, :cond_32
invoke-static {v6, v8}, Lcom/pinguo/lib/image/BitmapUtils;->getCropImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v6
:cond_32
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#setter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
invoke-static {v0, v3}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$10(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;[B)V
if-eqz v6, :cond_5e
new-instance v7, Ljava/io/ByteArrayOutputStream;
invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v1, 0x5f
invoke-virtual {v6, v0, v1, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
#setter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$10(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;[B)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$11(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)[B
move-result-object v0
array-length v0, v0
const/16 v1, 0x200
if-ge v0, v1, :cond_5e
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#setter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
invoke-static {v0, v3}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$10(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;[B)V
:cond_5e
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewModel:Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$12(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPreviewData:[B
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$11(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)[B
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mCurPictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$9(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mMakePreviewCallback:Lcom/pinguo/camera360/photoedit/callback/PreCallback;
invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$13(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/photoedit/callback/PreCallback;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
invoke-static {v4}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$14(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Z
move-result v4
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/IPicturePreviewModel;->makePreviewNew([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/photoedit/callback/PreCallback;ZZ)V
return-object v6
.end method
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->doInBackground([Ljava/lang/Boolean;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method protected onPostExecute(Landroid/graphics/Bitmap;)V
.registers 5
const/4 v2, 0x1
invoke-static {}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$1()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "onPostExecute start"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$4(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/camera/view/PicturePreviewView;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setIsNeedDoAnimation(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$4(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/camera/view/PicturePreviewView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setPreviewImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#getter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mPicturePreviewView:Lcom/pinguo/camera360/camera/view/PicturePreviewView;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$4(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;)Lcom/pinguo/camera360/camera/view/PicturePreviewView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/PicturePreviewView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->this$0:Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;
#setter for: Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->mNeedReuseData:Z
invoke-static {v0, v2}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;->access$15(Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment;Z)V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Landroid/graphics/Bitmap;
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/controller/PicturePreviewFragment$ScaleBitmapAsyTask;->onPostExecute(Landroid/graphics/Bitmap;)V
return-void
.end method