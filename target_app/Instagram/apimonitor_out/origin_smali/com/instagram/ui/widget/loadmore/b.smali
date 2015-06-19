.class final Lcom/instagram/ui/widget/loadmore/b;
.super Ljava/lang/Object;
.source "LoadMoreButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;


# direct methods
.method constructor <init>(Lcom/instagram/ui/widget/loadmore/LoadMoreButton;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/ui/widget/loadmore/b;->a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "load_more_button_retry"

    iget-object v2, p0, Lcom/instagram/ui/widget/loadmore/b;->a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;

    invoke-virtual {v2}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/b/b/a;->a(Landroid/content/Context;)Lcom/instagram/common/analytics/e;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v1, "source"

    iget-object v2, p0, Lcom/instagram/ui/widget/loadmore/b;->a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;

    iget-object v2, v2, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->a:Lcom/instagram/ui/widget/loadmore/c;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/ui/widget/loadmore/b;->a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;

    invoke-virtual {v1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/instagram/b/b/a;->a(Lcom/instagram/common/analytics/b;Landroid/content/Context;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    iget-object v0, p0, Lcom/instagram/ui/widget/loadmore/b;->a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    return-void
.end method
