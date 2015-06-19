.class final Lcom/tonicartos/widget/stickygridheaders/f;
.super Ljava/lang/Object;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/tonicartos/widget/stickygridheaders/k;

.field final synthetic c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;Landroid/view/View;Lcom/tonicartos/widget/stickygridheaders/k;)V
    .registers 4

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/f;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object p2, p0, Lcom/tonicartos/widget/stickygridheaders/f;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/tonicartos/widget/stickygridheaders/f;->b:Lcom/tonicartos/widget/stickygridheaders/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    const/4 v1, -0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/f;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->h:I

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/f;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-static {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->b(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/f;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput v1, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->i:I

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/f;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/f;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setPressed(Z)V

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/f;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/f;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/f;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/f;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/tonicartos/widget/stickygridheaders/f;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->invalidate(IIII)V

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/f;->c:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->g:Z

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/f;->b:Lcom/tonicartos/widget/stickygridheaders/k;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/k;->run()V

    :cond_40
    return-void
.end method
