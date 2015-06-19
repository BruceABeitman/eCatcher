.class final Lcom/bbm/ui/activities/g;
.super Ljava/lang/Object;
.source "AddChannelPostActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/AddChannelPostActivity;
.method constructor <init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/g;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/g; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
const/16 v1, 0x8
iget-object v0, p0, Lcom/bbm/ui/activities/g;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->d(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/ObservingImageView;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/bbm/ui/ObservingImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/bbm/ui/activities/g;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->d(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/ObservingImageView;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/g;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->e(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ImageButton;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/g;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->f(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ImageButton;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/g;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->g(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ProgressBar;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/g;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->h(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ImageButton;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/g;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->h(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ImageButton;
move-result-object v0
const v1, 0x7f020017
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/g;->a:Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-static {v0, v2}, Lcom/bbm/ui/activities/AddChannelPostActivity;->a(Lcom/bbm/ui/activities/AddChannelPostActivity;Ljava/lang/String;)Ljava/lang/String;
const-string v1, " - Lcom/bbm/ui/activities/g; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method