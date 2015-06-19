.class final Lcom/tonicartos/widget/stickygridheaders/b;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersBaseAdapterWrapper.java"


# instance fields
.field final synthetic a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;


# direct methods
.method constructor <init>(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)V
    .registers 2

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/b;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/b;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a:I

    iget-object v2, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v2}, Lcom/tonicartos/widget/stickygridheaders/a;->b()I

    move-result v2

    if-nez v2, :cond_19

    iget-object v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v0}, Lcom/tonicartos/widget/stickygridheaders/a;->getCount()I

    move-result v0

    iput v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a:I

    :cond_15
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->b:Z

    return-void

    :cond_19
    :goto_19
    if-ge v0, v2, :cond_15

    iget v3, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a:I

    iget-object v4, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->d:Lcom/tonicartos/widget/stickygridheaders/a;

    invoke-interface {v4, v0}, Lcom/tonicartos/widget/stickygridheaders/a;->a(I)I

    move-result v4

    iget v5, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->h:I

    add-int/2addr v4, v5

    add-int/2addr v3, v4

    iput v3, v1, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method public final onInvalidated()V
    .registers 2

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/b;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;

    invoke-static {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;->a(Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersBaseAdapterWrapper;)Z

    return-void
.end method
