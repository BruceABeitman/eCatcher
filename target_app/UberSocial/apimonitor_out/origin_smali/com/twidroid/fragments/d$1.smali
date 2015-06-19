.class Lcom/twidroid/fragments/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/d;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/d;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/d;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/d$1;->a:Lcom/twidroid/fragments/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/d$1;->a:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->a(Lcom/twidroid/fragments/d;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/twidroid/fragments/d$1;->a:Lcom/twidroid/fragments/d;

    invoke-static {v0}, Lcom/twidroid/fragments/d;->b(Lcom/twidroid/fragments/d;)V

    return-void
.end method
