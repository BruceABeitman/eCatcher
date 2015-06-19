.class  Lcom/pinguo/camera360/gallery/AlbumPage$6;
.super Ljava/lang/Object;
.source "AlbumPage.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
.field private final synthetic val$pref:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
.field private final synthetic val$tipsTypeRes:I
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage;ILcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$6;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iput p2, p0, Lcom/pinguo/camera360/gallery/AlbumPage$6;->val$tipsTypeRes:I
iput-object p3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$6;->val$pref:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/AlbumPage$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$6;->val$tipsTypeRes:I
invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryClickTips(I)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$6;->val$pref:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->setAblumTopTipshown(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$6;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iget-object v0, v0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopTip()Landroid/view/ViewGroup;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V
const-string v1, " - Lcom/pinguo/camera360/gallery/AlbumPage$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method