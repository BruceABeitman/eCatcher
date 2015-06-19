.class Lcom/facebook/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/d;->i()Lcom/facebook/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/d;


# direct methods
.method constructor <init>(Lcom/facebook/d;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/d$2;->a:Lcom/facebook/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/facebook/d$2;->a:Lcom/facebook/d;

    iget-object v0, v0, Lcom/facebook/d;->h:Lcom/facebook/g;

    invoke-virtual {v0}, Lcom/facebook/g;->a()Lcom/facebook/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/p;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Intent;I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/d$2;->a:Lcom/facebook/d;

    iget-object v0, v0, Lcom/facebook/d;->h:Lcom/facebook/g;

    invoke-virtual {v0}, Lcom/facebook/g;->a()Lcom/facebook/p;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/p;->a(Landroid/content/Intent;I)V

    return-void
.end method
