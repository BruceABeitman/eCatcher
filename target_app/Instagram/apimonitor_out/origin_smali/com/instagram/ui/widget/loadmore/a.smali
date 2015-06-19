.class final Lcom/instagram/ui/widget/loadmore/a;
.super Ljava/lang/Object;
.source "LoadMoreButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;


# direct methods
.method constructor <init>(Lcom/instagram/ui/widget/loadmore/LoadMoreButton;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/ui/widget/loadmore/a;->a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/ui/widget/loadmore/a;->a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;

    iget-object v0, v0, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->a:Lcom/instagram/ui/widget/loadmore/c;

    invoke-interface {v0}, Lcom/instagram/ui/widget/loadmore/c;->m_()V

    iget-object v0, p0, Lcom/instagram/ui/widget/loadmore/a;->a:Lcom/instagram/ui/widget/loadmore/LoadMoreButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->setDisplayedChild(I)V

    return-void
.end method
