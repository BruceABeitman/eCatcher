.class Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$3;
.super Lcom/ubermedia/ui/widgets/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;
.end annotation


# instance fields
.field final synthetic a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;


# direct methods
.method constructor <init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$3;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ubermedia/ui/widgets/c;-><init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    iget-object v0, p0, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$3;->a:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;->b(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;I)I

    return-void
.end method
