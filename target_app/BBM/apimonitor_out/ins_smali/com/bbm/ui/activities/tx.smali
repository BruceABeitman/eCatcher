.class final Lcom/bbm/ui/activities/tx;
.super Ljava/lang/Object;
.source "ImageViewerActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ImageViewerActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ImageViewerActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/tx; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x4
const/4 v2, 0x0
const-string v0, "mOnClickListener Clicked"
const-class v1, Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/bbm/ui/activities/ImageViewerActivity;)Lcom/bbm/ui/FooterActionBar;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->getVisibility()I
move-result v0
if-nez v0, :cond_28
iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/bbm/ui/activities/ImageViewerActivity;)Lcom/bbm/ui/FooterActionBar;
move-result-object v0
invoke-virtual {v0, v3}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->b(Lcom/bbm/ui/activities/ImageViewerActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_27
const-string v1, " - Lcom/bbm/ui/activities/tx; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_28
iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->a(Lcom/bbm/ui/activities/ImageViewerActivity;)Lcom/bbm/ui/FooterActionBar;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->b(Lcom/bbm/ui/activities/ImageViewerActivity;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/tx;->a:Lcom/bbm/ui/activities/ImageViewerActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ImageViewerActivity;->c(Lcom/bbm/ui/activities/ImageViewerActivity;)V
goto :goto_27
.end method