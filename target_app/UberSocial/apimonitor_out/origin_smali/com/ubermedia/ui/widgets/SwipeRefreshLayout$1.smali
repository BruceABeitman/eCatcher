.class Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;
.end annotation


# instance fields
.field final synthetic a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->b(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I

    move-result v2

    if-eq v1, v2, :cond_26

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I

    move-result v0

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->b(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    :cond_26
    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->c(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->c(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int v2, v0, v1

    if-gez v2, :cond_41

    rsub-int/lit8 v0, v1, 0x0

    :cond_41
    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1, v0}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;I)V

    return-void
.end method
