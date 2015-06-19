.class  Lcom/pinguo/camera360/gallery/AlbumPage$8;
.super Ljava/lang/Object;
.source "AlbumPage.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
.field private final synthetic val$items:Ljava/util/ArrayList;
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$8;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iput-object p2, p0, Lcom/pinguo/camera360/gallery/AlbumPage$8;->val$items:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$8;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;
iget-object v0, v0, Lcom/pinguo/camera360/gallery/AlbumPage;->mActivity:Lcom/pinguo/camera360/gallery/RootActivity;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/RootActivity;->getTopActionBar()Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;
move-result-object v0
const/4 v1, -0x1
const v2, 0x7f0800a4
const/4 v3, 0x0
const/4 v4, 0x0
iget-object v5, p0, Lcom/pinguo/camera360/gallery/AlbumPage$8;->val$items:Ljava/util/ArrayList;
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/ui/AlbumActionBar;->startAction(IILcom/pinguo/camera360/gallery/ui/AlbumActionBar$ProgressListener;ZLjava/util/ArrayList;)V
return-void
.end method