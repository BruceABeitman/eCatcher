.class  Lcom/pinguo/camera360/gallery/AlbumPage$7$1;
.super Ljava/lang/Object;
.source "AlbumPage.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$1:Lcom/pinguo/camera360/gallery/AlbumPage$7;
.field private final synthetic val$items:Ljava/util/ArrayList;
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage$7;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7$1;->this$1:Lcom/pinguo/camera360/gallery/AlbumPage$7;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7$1;->val$items:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/gallery/AlbumPage$7$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7$1;->this$1:Lcom/pinguo/camera360/gallery/AlbumPage$7;
#getter for: Lcom/pinguo/camera360/gallery/AlbumPage$7;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumPage$7;->access$0(Lcom/pinguo/camera360/gallery/AlbumPage$7;)Lcom/pinguo/camera360/gallery/AlbumPage;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v0
const/4 v1, -0x1
const v2, 0x7f0800a4
const/4 v3, 0x0
const/4 v4, 0x0
iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7$1;->val$items:Ljava/util/ArrayList;
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->startAction(IILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;ZLjava/util/ArrayList;)V
const-string v1, " - Lcom/pinguo/camera360/gallery/AlbumPage$7$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method