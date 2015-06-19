.class final Lcom/facebook/bx;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Lcom/facebook/u;


# instance fields
.field final synthetic a:Lcom/facebook/bu;


# direct methods
.method constructor <init>(Lcom/facebook/bu;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/bx;->a:Lcom/facebook/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/facebook/bx;->a:Lcom/facebook/bu;

    invoke-static {v0}, Lcom/facebook/bu;->b(Lcom/facebook/bu;)Lcom/facebook/cb;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cb;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/bx;->a:Lcom/facebook/bu;

    invoke-static {v0}, Lcom/facebook/bu;->b(Lcom/facebook/bu;)Lcom/facebook/cb;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/cb;->a(Landroid/content/Intent;I)V

    return-void
.end method
