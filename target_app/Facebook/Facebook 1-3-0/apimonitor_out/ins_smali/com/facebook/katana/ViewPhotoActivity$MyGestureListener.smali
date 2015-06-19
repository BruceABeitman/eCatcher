.class  Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ViewPhotoActivity.java"
.field final synthetic this$0:Lcom/facebook/katana/ViewPhotoActivity;
.method private constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/katana/ViewPhotoActivity;Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;-><init>(Lcom/facebook/katana/ViewPhotoActivity;)V
return-void
.end method
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener; onDoubleTap "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;
move-result-object v0
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v1
if-eqz v1, :cond_30
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mPhotosCursor:Landroid/database/Cursor;
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$10(Lcom/facebook/katana/ViewPhotoActivity;)Landroid/database/Cursor;
move-result-object v1
const/4 v2, 0x5
invoke-interface {v1, v2}, Landroid/database/Cursor;->isNull(I)Z
move-result v1
if-nez v1, :cond_30
invoke-virtual {v0}, Lcom/facebook/katana/ImageViewTouchBase;->getScale()F
move-result v1
const/high16 v2, 0x4000
cmpl-float v1, v1, v2
if-lez v1, :cond_32
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;
move-result-object v1
const/high16 v2, 0x3f80
invoke-virtual {v1, v2}, Lcom/facebook/katana/ImageViewTouchBase;->zoomTo(F)V
:goto_30
:cond_30
const/4 v1, 0x1
move v2, v1
const-string v1, " - Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener; onDoubleTap"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:cond_32
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;
move-result-object v1
const/high16 v2, 0x4040
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v3
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v4
invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/katana/ImageViewTouchBase;->zoomToPoint(FFF)V
goto :goto_30
.end method
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#getter for: Lcom/facebook/katana/ViewPhotoActivity;->mImageView:Lcom/facebook/katana/ImageViewTouchBase;
invoke-static {v1}, Lcom/facebook/katana/ViewPhotoActivity;->access$24(Lcom/facebook/katana/ViewPhotoActivity;)Lcom/facebook/katana/ImageViewTouchBase;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/katana/ImageViewTouchBase;->getScale()F
move-result v1
const/high16 v2, 0x3f80
cmpl-float v1, v1, v2
if-lez v1, :cond_15
neg-float v1, p3
neg-float v2, p4
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/ImageViewTouchBase;->postTranslateCenter(FF)V
:cond_15
const/4 v1, 0x1
move v2, v1
const-string v1, " - Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
.end method
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/facebook/katana/ViewPhotoActivity$MyGestureListener;->this$0:Lcom/facebook/katana/ViewPhotoActivity;
#calls: Lcom/facebook/katana/ViewPhotoActivity;->exitEditMode()V
invoke-static {v0}, Lcom/facebook/katana/ViewPhotoActivity;->access$11(Lcom/facebook/katana/ViewPhotoActivity;)V
const/4 v0, 0x1
return v0
.end method