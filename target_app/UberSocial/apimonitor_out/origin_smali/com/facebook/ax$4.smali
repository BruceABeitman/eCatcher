.class Lcom/facebook/ax$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ax;->j()Lcom/facebook/g;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ax;


# direct methods
.method constructor <init>(Lcom/facebook/ax;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ax$4;->a:Lcom/facebook/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ax$4;->a:Lcom/facebook/ax;

    invoke-static {v0}, Lcom/facebook/ax;->b(Lcom/facebook/ax;)Lcom/facebook/be;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/be;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ax$4;->a:Lcom/facebook/ax;

    invoke-static {v0}, Lcom/facebook/ax;->b(Lcom/facebook/ax;)Lcom/facebook/be;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/be;->a(Landroid/content/Intent;I)V

    return-void
.end method
