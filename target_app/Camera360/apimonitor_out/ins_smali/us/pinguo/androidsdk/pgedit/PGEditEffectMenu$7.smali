.class  Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$7;
.super Ljava/lang/Object;
.source "PGEditEffectMenu.java"
.implements Landroid/view/View$OnTouchListener;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$7;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 11
const-wide/16 v6, 0x0
const/4 v5, 0x1
const/4 v4, 0x0
const/4 v3, 0x0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v1
packed-switch v1, :pswitch_data_82
:goto_c
return v5
:pswitch_d
const-string/jumbo v1, "X10i"
sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_39
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, v4, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$7;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
:goto_2f
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$7;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mOrgText:Landroid/view/View;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$18(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_c
:cond_39
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$7;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/widget/ImageView;
move-result-object v1
const/4 v2, 0x4
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_2f
:pswitch_44
const-string/jumbo v1, "X10i"
sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_78
new-instance v0, Landroid/view/animation/AlphaAnimation;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$7;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mLastRate:F
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$19(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)F
move-result v1
invoke-direct {v0, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$7;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
:goto_6c
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$7;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mOrgText:Landroid/view/View;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$18(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/view/View;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_c
:cond_78
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu$7;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->mShowImageView:Landroid/widget/ImageView;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditEffectMenu;)Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_6c
:pswitch_data_82
.packed-switch 0x0
:pswitch_d
:pswitch_44
.end packed-switch
.end method