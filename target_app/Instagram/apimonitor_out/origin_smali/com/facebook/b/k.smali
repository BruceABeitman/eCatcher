.class final Lcom/facebook/b/k;
.super Ljava/lang/Object;
.source "FbDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/b/j;


# direct methods
.method constructor <init>(Lcom/facebook/b/j;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/b/k;->a:Lcom/facebook/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/b/k;->a:Lcom/facebook/b/j;

    invoke-static {v0}, Lcom/facebook/b/j;->a(Lcom/facebook/b/j;)Lcom/facebook/b/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/b/e;->a()V

    iget-object v0, p0, Lcom/facebook/b/k;->a:Lcom/facebook/b/j;

    invoke-virtual {v0}, Lcom/facebook/b/j;->dismiss()V

    return-void
.end method
