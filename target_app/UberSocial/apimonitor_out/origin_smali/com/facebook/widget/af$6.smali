.class Lcom/facebook/widget/af$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/af;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/af;


# direct methods
.method constructor <init>(Lcom/facebook/widget/af;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/af$6;->a:Lcom/facebook/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/widget/af$6;->a:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->c(Lcom/facebook/widget/af;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method
