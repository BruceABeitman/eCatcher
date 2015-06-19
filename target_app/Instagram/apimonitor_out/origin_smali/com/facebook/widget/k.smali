.class final Lcom/facebook/widget/k;
.super Ljava/lang/Object;
.source "WebDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/widget/h;


# direct methods
.method constructor <init>(Lcom/facebook/widget/h;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/h;

    invoke-static {v0}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;)V

    iget-object v0, p0, Lcom/facebook/widget/k;->a:Lcom/facebook/widget/h;

    invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V

    return-void
.end method
