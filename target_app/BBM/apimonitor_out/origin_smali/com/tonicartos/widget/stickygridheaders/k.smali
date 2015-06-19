.class final Lcom/tonicartos/widget/stickygridheaders/k;
.super Lcom/tonicartos/widget/stickygridheaders/n;
.source "StickyGridHeadersGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field final synthetic b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;


# direct methods
.method private constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V
    .registers 3

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/k;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tonicartos/widget/stickygridheaders/n;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/k;-><init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/k;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-boolean v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->g:Z

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/k;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/k;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v0, v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/k;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget v0, p0, Lcom/tonicartos/widget/stickygridheaders/k;->a:I

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/k;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->f:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-virtual {v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/tonicartos/widget/stickygridheaders/k;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/k;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v1, p0, Lcom/tonicartos/widget/stickygridheaders/k;->a:I

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/k;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/k;->b:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget v3, p0, Lcom/tonicartos/widget/stickygridheaders/k;->a:I

    invoke-static {v2, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;I)J

    iget-object v2, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->d:Lcom/tonicartos/widget/stickygridheaders/i;

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->playSoundEffect(I)V

    if-eqz v0, :cond_4f

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_4f
    iget-object v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->d:Lcom/tonicartos/widget/stickygridheaders/i;

    goto :goto_6
.end method
