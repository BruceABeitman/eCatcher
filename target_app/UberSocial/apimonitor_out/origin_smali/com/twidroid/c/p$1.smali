.class Lcom/twidroid/c/p$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/p;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twidroid/c/p;


# direct methods
.method constructor <init>(Lcom/twidroid/c/p;I)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/p$1;->b:Lcom/twidroid/c/p;

    iput p2, p0, Lcom/twidroid/c/p$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/c/p$1;->b:Lcom/twidroid/c/p;

    iget-object v0, v0, Lcom/twidroid/c/p;->a:Lcom/twidroid/c/n;

    invoke-static {v0}, Lcom/twidroid/c/n;->a(Lcom/twidroid/c/n;)Lcom/twidroid/c/o;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/twidroid/c/p$1;->b:Lcom/twidroid/c/p;

    iget-object v0, v0, Lcom/twidroid/c/p;->a:Lcom/twidroid/c/n;

    invoke-static {v0}, Lcom/twidroid/c/n;->a(Lcom/twidroid/c/n;)Lcom/twidroid/c/o;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/c/p$1;->b:Lcom/twidroid/c/p;

    iget v2, p0, Lcom/twidroid/c/p$1;->a:I

    invoke-virtual {v1, v2}, Lcom/twidroid/c/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twidroid/c/o;->a(Ljava/lang/String;)V

    :cond_1d
    return-void
.end method
