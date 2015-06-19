.class Lcom/twidroid/fragments/e/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/k;->z()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/k;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/k;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/k$1;->a:Lcom/twidroid/fragments/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/e/k$1;->a:Lcom/twidroid/fragments/e/k;

    invoke-static {v0}, Lcom/twidroid/fragments/e/k;->a(Lcom/twidroid/fragments/e/k;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/k$1;->a:Lcom/twidroid/fragments/e/k;

    invoke-static {v0}, Lcom/twidroid/fragments/e/k;->b(Lcom/twidroid/fragments/e/k;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
