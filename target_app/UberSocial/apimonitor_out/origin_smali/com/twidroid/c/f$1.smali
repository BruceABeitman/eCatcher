.class Lcom/twidroid/c/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/f;->o()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/f;


# direct methods
.method constructor <init>(Lcom/twidroid/c/f;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/f$1;->a:Lcom/twidroid/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/c/f$1;->a:Lcom/twidroid/c/f;

    invoke-static {v0}, Lcom/twidroid/c/f;->h(Lcom/twidroid/c/f;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/twidroid/c/f$1;->a:Lcom/twidroid/c/f;

    invoke-static {v0}, Lcom/twidroid/c/f;->g(Lcom/twidroid/c/f;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c007c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/twidroid/c/f$1;->a:Lcom/twidroid/c/f;

    invoke-virtual {v0}, Lcom/twidroid/c/f;->dismiss()V

    goto :goto_19
.end method
