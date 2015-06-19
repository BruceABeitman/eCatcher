.class final Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/widget/ImageView;
.field final synthetic b:Landroid/app/Activity;
.field final synthetic c:Landroid/net/Uri;
.method constructor <init>(Landroid/widget/ImageView;Landroid/app/Activity;Landroid/net/Uri;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;->a:Landroid/widget/ImageView;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;->b:Landroid/app/Activity;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;->c:Landroid/net/Uri;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x2
new-array v2, v0, [I
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;->a:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;->b:Landroid/app/Activity;
const/4 v1, 0x0
aget v1, v2, v1
const/4 v3, 0x1
aget v2, v2, v3
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;->a:Landroid/widget/ImageView;
invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I
move-result v3
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;->a:Landroid/widget/ImageView;
invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I
move-result v4
iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;->c:Landroid/net/Uri;
iget-object v6, p0, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1;->b:Landroid/app/Activity;
invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v6
iget v6, v6, Landroid/content/res/Configuration;->orientation:I
invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a(Landroid/app/Activity;IIIILandroid/net/Uri;I)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/CoverImageActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method