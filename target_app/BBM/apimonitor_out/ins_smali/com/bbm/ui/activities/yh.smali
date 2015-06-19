.class final Lcom/bbm/ui/activities/yh;
.super Ljava/lang/Object;
.source "NewChannelCategoryActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/yh;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/yh; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
const-string v0, "mCategoryOnClickListener onClick"
const-class v1, Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/yh;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/RelativeLayout;
move-result-object v0
if-ne p1, v0, :cond_3f
iget-object v0, p0, Lcom/bbm/ui/activities/yh;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/RelativeLayout;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isActivated()Z
move-result v0
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/bbm/ui/activities/yh;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/RelativeLayout;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setActivated(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/yh;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->b(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ListView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/yh;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->d(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ImageView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/yh;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->c(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/view/animation/AnimationSet;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
:goto_3f
:cond_3f
const-string v1, " - Lcom/bbm/ui/activities/yh; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_40
iget-object v0, p0, Lcom/bbm/ui/activities/yh;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->a(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/RelativeLayout;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setActivated(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/yh;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->b(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/yh;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->d(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/widget/ImageView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/yh;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->e(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)Landroid/view/animation/AnimationSet;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_3f
.end method