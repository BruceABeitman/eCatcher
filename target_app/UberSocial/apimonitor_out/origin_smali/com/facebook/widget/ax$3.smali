.class Lcom/facebook/widget/ax$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/ax;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/ax;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ax;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ax$3;->a:Lcom/facebook/widget/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/widget/ax$3;->a:Lcom/facebook/widget/ax;

    invoke-static {v0}, Lcom/facebook/widget/ax;->a(Lcom/facebook/widget/ax;)V

    iget-object v0, p0, Lcom/facebook/widget/ax$3;->a:Lcom/facebook/widget/ax;

    invoke-virtual {v0}, Lcom/facebook/widget/ax;->dismiss()V

    return-void
.end method
