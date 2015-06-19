.class Lcom/twidroid/c/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/k;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/e;

.field final synthetic b:Lcom/twidroid/c/k;


# direct methods
.method constructor <init>(Lcom/twidroid/c/k;Lcom/twidroid/ui/a/e;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/k$2;->b:Lcom/twidroid/c/k;

    iput-object p2, p0, Lcom/twidroid/c/k$2;->a:Lcom/twidroid/ui/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v1, p0, Lcom/twidroid/c/k$2;->b:Lcom/twidroid/c/k;

    iget-object v0, p0, Lcom/twidroid/c/k$2;->a:Lcom/twidroid/ui/a/e;

    invoke-virtual {v0, p3}, Lcom/twidroid/ui/a/e;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/twidroid/c/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/c/k$2;->b:Lcom/twidroid/c/k;

    invoke-virtual {v0}, Lcom/twidroid/c/k;->dismiss()V

    return-void
.end method
