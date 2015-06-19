.class Lcom/ubermedia/ui/widgets/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic b:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;


# direct methods
.method private constructor <init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/ubermedia/ui/widgets/c;->b:Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;Lcom/ubermedia/ui/widgets/SwipeRefreshLayout$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/ubermedia/ui/widgets/c;-><init>(Lcom/ubermedia/ui/widgets/SwipeRefreshLayout;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    return-void
.end method
