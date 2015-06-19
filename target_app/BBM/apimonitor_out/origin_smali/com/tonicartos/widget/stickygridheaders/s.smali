.class final Lcom/tonicartos/widget/stickygridheaders/s;
.super Landroid/database/DataSetObserver;
.source "StickyGridHeadersSimpleAdapterWrapper.java"


# instance fields
.field final synthetic a:Lcom/tonicartos/widget/stickygridheaders/r;


# direct methods
.method private constructor <init>(Lcom/tonicartos/widget/stickygridheaders/r;)V
    .registers 2

    iput-object p1, p0, Lcom/tonicartos/widget/stickygridheaders/s;->a:Lcom/tonicartos/widget/stickygridheaders/r;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tonicartos/widget/stickygridheaders/r;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/tonicartos/widget/stickygridheaders/s;-><init>(Lcom/tonicartos/widget/stickygridheaders/r;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 4

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/s;->a:Lcom/tonicartos/widget/stickygridheaders/r;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/s;->a:Lcom/tonicartos/widget/stickygridheaders/r;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/s;->a:Lcom/tonicartos/widget/stickygridheaders/r;

    invoke-static {v2}, Lcom/tonicartos/widget/stickygridheaders/r;->a(Lcom/tonicartos/widget/stickygridheaders/r;)Lcom/tonicartos/widget/stickygridheaders/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/r;->a(Lcom/tonicartos/widget/stickygridheaders/q;)[Lcom/tonicartos/widget/stickygridheaders/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/r;->a(Lcom/tonicartos/widget/stickygridheaders/r;[Lcom/tonicartos/widget/stickygridheaders/t;)[Lcom/tonicartos/widget/stickygridheaders/t;

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/s;->a:Lcom/tonicartos/widget/stickygridheaders/r;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/r;->notifyDataSetChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .registers 4

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/s;->a:Lcom/tonicartos/widget/stickygridheaders/r;

    iget-object v1, p0, Lcom/tonicartos/widget/stickygridheaders/s;->a:Lcom/tonicartos/widget/stickygridheaders/r;

    iget-object v2, p0, Lcom/tonicartos/widget/stickygridheaders/s;->a:Lcom/tonicartos/widget/stickygridheaders/r;

    invoke-static {v2}, Lcom/tonicartos/widget/stickygridheaders/r;->a(Lcom/tonicartos/widget/stickygridheaders/r;)Lcom/tonicartos/widget/stickygridheaders/q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tonicartos/widget/stickygridheaders/r;->a(Lcom/tonicartos/widget/stickygridheaders/q;)[Lcom/tonicartos/widget/stickygridheaders/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/r;->a(Lcom/tonicartos/widget/stickygridheaders/r;[Lcom/tonicartos/widget/stickygridheaders/t;)[Lcom/tonicartos/widget/stickygridheaders/t;

    iget-object v0, p0, Lcom/tonicartos/widget/stickygridheaders/s;->a:Lcom/tonicartos/widget/stickygridheaders/r;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/r;->notifyDataSetInvalidated()V

    return-void
.end method
