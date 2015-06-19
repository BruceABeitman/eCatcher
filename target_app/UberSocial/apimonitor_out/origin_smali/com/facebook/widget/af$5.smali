.class Lcom/facebook/widget/af$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/af;->a(Landroid/view/ViewGroup;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/af;


# direct methods
.method constructor <init>(Lcom/facebook/widget/af;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/af$5;->a:Lcom/facebook/widget/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/widget/af$5;->a:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->b(Lcom/facebook/widget/af;)Lcom/facebook/widget/ak;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/widget/af$5;->a:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->b(Lcom/facebook/widget/af;)Lcom/facebook/widget/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/af$5;->a:Lcom/facebook/widget/af;

    invoke-interface {v0, v1}, Lcom/facebook/widget/ak;->a(Lcom/facebook/widget/af;)V

    :cond_13
    return-void
.end method
