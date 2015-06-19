.class Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;
.end annotation


# instance fields
.field final synthetic a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$5;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$5;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;Z)Z

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$5;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    iget-object v1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$5;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->f(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)I

    move-result v1

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$5;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-virtual {v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$5;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-static {v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->g(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->a(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;ILandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method
