.class Lcom/twidroid/fragments/base/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/base/e;->a(ZLcom/twidroid/model/twitter/c;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

.field final synthetic b:Landroid/content/res/Resources;

.field final synthetic c:Lcom/twidroid/fragments/base/e;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/base/e;Lcom/twidroid/ui/widgets/UberPullToRefreshListView;Landroid/content/res/Resources;)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/fragments/base/e$5;->c:Lcom/twidroid/fragments/base/e;

    iput-object p2, p0, Lcom/twidroid/fragments/base/e$5;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    iput-object p3, p0, Lcom/twidroid/fragments/base/e$5;->b:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/twidroid/fragments/base/e$5;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    invoke-virtual {v0, v3, v2}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/b;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/e$5;->a:Lcom/twidroid/ui/widgets/UberPullToRefreshListView;

    invoke-virtual {v0, v3, v2}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/base/e$5;->b:Landroid/content/res/Resources;

    const v2, 0x7f0200f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/handmark/pulltorefresh/library/b;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
