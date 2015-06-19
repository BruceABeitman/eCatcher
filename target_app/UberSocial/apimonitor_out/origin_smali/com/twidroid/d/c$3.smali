.class final Lcom/twidroid/d/c$3;
.super Lcom/twidroid/net/c/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/d/c;->b(Landroid/view/View;Lcom/twidroid/d/d;)Lcom/twidroid/net/c/k;
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twidroid/d/d;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/twidroid/d/d;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/d/c$3;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/twidroid/d/c$3;->b:Lcom/twidroid/d/d;

    invoke-direct {p0}, Lcom/twidroid/net/c/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()V
    .registers 2

    invoke-super {p0}, Lcom/twidroid/net/c/k;->a()V

    iget-object v0, p0, Lcom/twidroid/d/c$3;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/twidroid/d/c;->a(Landroid/view/View;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twidroid/d/c$3;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/net/c/k;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/d/c$3;->a:Landroid/view/View;

    invoke-static {v0}, Lcom/twidroid/d/c;->b(Landroid/view/View;)V

    iget-object v0, p0, Lcom/twidroid/d/c$3;->b:Lcom/twidroid/d/d;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/twidroid/d/c$3;->b:Lcom/twidroid/d/d;

    invoke-interface {v0}, Lcom/twidroid/d/d;->a()V

    :cond_11
    return-void
.end method
