.class  Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;
.super Landroid/os/Handler;
.source "PGEditEffectMenu.java"
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public dispatchMessage(Landroid/os/Message;)V
.registers 7
iget v2, p1, Landroid/os/Message;->what:I
packed-switch v2, :pswitch_data_58
:goto_5
return-void
:pswitch_6
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/graphics/Bitmap;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/widget/ImageView;
move-result-object v2
if-eqz v2, :cond_45
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/widget/ImageView;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v2, :cond_32
check-cast v1, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
:cond_32
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mEditChildMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;
move-result-object v3
invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditEffectMenusBean;->getEffectOpacity()I
move-result v3
int-to-float v3, v3
const/high16 v4, 0x42c8
div-float/2addr v3, v4
#calls: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->setAlphaForImageView(F)V
invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;F)V
:cond_45
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
const/4 v3, 0x1
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mCanChangeEffect:Z
invoke-static {v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;Z)V
goto :goto_5
:pswitch_4c
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#calls: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->hideAndShowChildEffectAnimation()V
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
goto :goto_5
:pswitch_52
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$2;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->hideButtomFirstMenuAnimation()V
goto :goto_5
:pswitch_data_58
.packed-switch 0x1
:pswitch_6
:pswitch_4c
:pswitch_52
.end packed-switch
.end method