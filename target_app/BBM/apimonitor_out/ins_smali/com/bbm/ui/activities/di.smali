.class final Lcom/bbm/ui/activities/di;
.super Ljava/lang/Object;
.source "ChannelPostPhotoGalleryActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/di;->a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/di; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
const/4 v2, 0x4
iget-object v0, p0, Lcom/bbm/ui/activities/di;->a:Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;
iget-object v1, v0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v1}, Lcom/bbm/ui/FooterActionBar;->getVisibility()I
move-result v1
if-ne v1, v2, :cond_1a
iget-object v1, v0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v1, v3}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
invoke-virtual {v0}, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->b()V
:goto_19
:cond_19
const-string v1, " - Lcom/bbm/ui/activities/di; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1a
iget-object v1, v0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v1}, Lcom/bbm/ui/FooterActionBar;->getVisibility()I
move-result v1
if-nez v1, :cond_19
iget-object v1, v0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->a:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v1, v2}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
iget-object v0, v0, Lcom/bbm/ui/activities/ChannelPostPhotoGalleryActivity;->b:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_19
.end method