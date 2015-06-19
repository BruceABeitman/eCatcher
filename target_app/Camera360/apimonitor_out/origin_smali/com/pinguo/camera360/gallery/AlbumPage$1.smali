.class Lcom/pinguo/camera360/gallery/AlbumPage$1;
.super Lcom/pinguo/camera360/gallery/ui/GLView;
.source "AlbumPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/AlbumPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mMatrix:[F

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/AlbumPage;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/gallery/AlbumPage;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->mMatrix:[F

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 11

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mOpenCenter:Lcom/pinguo/camera360/gallery/ui/RelativePosition;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$0(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/RelativePosition;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Lcom/pinguo/camera360/gallery/ui/RelativePosition;->setReferencePosition(II)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotView:Lcom/pinguo/camera360/gallery/ui/SlotView;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$1(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    move-result-object v1

    iget v1, v1, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingLeft:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    move-result-object v2

    iget v2, v2, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingTop:I

    add-int/2addr v2, p3

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    move-result-object v3

    iget v3, v3, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->header_bar_height:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    move-result-object v3

    iget v3, v3, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingRight:I

    sub-int v3, p4, v3

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mSlotViewSpec:Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$2(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;

    move-result-object v4

    iget v4, v4, Lcom/pinguo/camera360/gallery/ui/SlotView$Spec;->paddingBottom:I

    sub-int v4, p5, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/ui/SlotView;->layout(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->mMatrix:[F

    sub-int v1, p4, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int v2, p5, p3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mUserDistance:F
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$3(Lcom/pinguo/camera360/gallery/AlbumPage;)F

    move-result v3

    neg-float v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->setViewPointMatrix([FFFF)V

    return-void
.end method

.method protected render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
    .registers 5

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->mMatrix:[F

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->multiplyMatrix([FI)V

    invoke-super {p0, p1}, Lcom/pinguo/camera360/gallery/ui/GLView;->render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mResumeEffect:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$4(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;

    move-result-object v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    #getter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mResumeEffect:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$4(Lcom/pinguo/camera360/gallery/AlbumPage;)Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/AlbumPage$1;->this$0:Lcom/pinguo/camera360/gallery/AlbumPage;

    const/4 v2, 0x0

    #setter for: Lcom/pinguo/camera360/gallery/AlbumPage;->mResumeEffect:Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;
    invoke-static {v1, v2}, Lcom/pinguo/camera360/gallery/AlbumPage;->access$5(Lcom/pinguo/camera360/gallery/AlbumPage;Lcom/pinguo/camera360/gallery/ui/PhotoFallbackEffect;)V

    :cond_27
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/AlbumPage$1;->invalidate()V

    :cond_2a
    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V

    return-void
.end method

.method protected renderBackground(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
    .registers 2

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->clearBuffer()V

    return-void
.end method
