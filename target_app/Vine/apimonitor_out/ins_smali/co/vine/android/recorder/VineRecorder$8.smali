.class  Lco/vine/android/recorder/VineRecorder$8;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.field final synthetic val$ghostBitmap:Landroid/graphics/Bitmap;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$8;->this$0:Lco/vine/android/recorder/VineRecorder;
iput-object p2, p0, Lco/vine/android/recorder/VineRecorder$8;->val$ghostBitmap:Landroid/graphics/Bitmap;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
const/16 v1, 0x8
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$8;->val$ghostBitmap:Landroid/graphics/Bitmap;
if-nez v0, :cond_18
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$8;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1400(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/ImageView;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$8;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1400(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_17
:goto_17
return-void
:cond_18
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$8;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mResources:Landroid/content/res/Resources;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$300(Lco/vine/android/recorder/VineRecorder;)Landroid/content/res/Resources;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$8;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1400(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/ImageView;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$8;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/VineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_3c
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$8;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1400(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_17
:cond_3c
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$8;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1400(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-eqz v0, :cond_52
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$8;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1400(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_52
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$8;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mGhostView:Landroid/widget/ImageView;
invoke-static {v0}, Lco/vine/android/recorder/VineRecorder;->access$1400(Lco/vine/android/recorder/VineRecorder;)Landroid/widget/ImageView;
move-result-object v0
new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
iget-object v2, p0, Lco/vine/android/recorder/VineRecorder$8;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mResources:Landroid/content/res/Resources;
invoke-static {v2}, Lco/vine/android/recorder/VineRecorder;->access$300(Lco/vine/android/recorder/VineRecorder;)Landroid/content/res/Resources;
move-result-object v2
iget-object v3, p0, Lco/vine/android/recorder/VineRecorder$8;->val$ghostBitmap:Landroid/graphics/Bitmap;
invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_17
.end method