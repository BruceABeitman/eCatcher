.class Lcom/pinguo/album/fragment/PGFullImageFragment$1;
.super Lcom/pinguo/album/views/GLBaseView;
.source "PGFullImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/fragment/PGFullImageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/album/fragment/PGFullImageFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$1;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    invoke-direct {p0}, Lcom/pinguo/album/views/GLBaseView;-><init>()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 10

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/album/fragment/PGFullImageFragment$1;->this$0:Lcom/pinguo/album/fragment/PGFullImageFragment;

    #getter for: Lcom/pinguo/album/fragment/PGFullImageFragment;->mPhotoView:Lcom/pinguo/album/views/FullImageView;
    invoke-static {v0}, Lcom/pinguo/album/fragment/PGFullImageFragment;->access$0(Lcom/pinguo/album/fragment/PGFullImageFragment;)Lcom/pinguo/album/views/FullImageView;

    move-result-object v0

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/pinguo/album/views/FullImageView;->layout(IIII)V

    return-void
.end method

.method protected render(Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 3

    const/high16 v0, -0x100

    invoke-static {v0}, Lcom/pinguo/album/utils/PGAlbumUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pinguo/album/opengles/GLESCanvas;->clearBuffer([F)V

    invoke-super {p0, p1}, Lcom/pinguo/album/views/GLBaseView;->render(Lcom/pinguo/album/opengles/GLESCanvas;)V

    return-void
.end method
