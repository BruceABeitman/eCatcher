.class Lcom/pinguo/camera360/gallery/AlbumPage$7$1;
.super Ljava/lang/Object;
.source "AlbumPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/gallery/AlbumPage$7;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/gallery/AlbumPage$7;

.field private final synthetic val$items:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage$7;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7$1;->this$1:Lcom/pinguo/camera360/gallery/AlbumPage$7;

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/AlbumPage$7$1;->val$items:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 9

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

    return-void
.end method
