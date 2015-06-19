.class Lcom/twidroid/fragments/e/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/b;->o()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/a/e;

.field final synthetic b:Lcom/twidroid/fragments/e/b;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/b;Lcom/facebook/a/e;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/e/b$2;->b:Lcom/twidroid/fragments/e/b;

    iput-object p2, p0, Lcom/twidroid/fragments/e/b$2;->a:Lcom/facebook/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/b$2;->b:Lcom/twidroid/fragments/e/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->M()V

    const-string v0, "FacebookNewsfeedFragment"

    const-string v1, "Logining canceled."

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/b$2;->b:Lcom/twidroid/fragments/e/b;

    invoke-static {v0}, Lcom/twidroid/fragments/e/b;->b(Lcom/twidroid/fragments/e/b;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 6

    new-instance v0, Lcom/facebook/a/a;

    iget-object v1, p0, Lcom/twidroid/fragments/e/b$2;->a:Lcom/facebook/a/e;

    invoke-direct {v0, v1}, Lcom/facebook/a/a;-><init>(Lcom/facebook/a/e;)V

    const-string v1, "/me"

    new-instance v2, Lcom/twidroid/fragments/e/b$2$1;

    invoke-direct {v2, p0}, Lcom/twidroid/fragments/e/b$2$1;-><init>(Lcom/twidroid/fragments/e/b$2;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/a/a;->a(Ljava/lang/String;Lcom/facebook/a/b;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/facebook/a/d;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/e/b$2;->b:Lcom/twidroid/fragments/e/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->M()V

    const-string v0, "FacebookNewsfeedFragment"

    invoke-virtual {p1}, Lcom/facebook/a/d;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/a/d;->printStackTrace()V

    iget-object v0, p0, Lcom/twidroid/fragments/e/b$2;->b:Lcom/twidroid/fragments/e/b;

    invoke-static {v0}, Lcom/twidroid/fragments/e/b;->b(Lcom/twidroid/fragments/e/b;)V

    return-void
.end method

.method public a(Lcom/facebook/a/k;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/fragments/e/b$2;->b:Lcom/twidroid/fragments/e/b;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->M()V

    const-string v0, "FacebookNewsfeedFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeAuthorize onFacebookError error code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/a/k;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/a/k;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/b$2;->b:Lcom/twidroid/fragments/e/b;

    invoke-static {v0}, Lcom/twidroid/fragments/e/b;->b(Lcom/twidroid/fragments/e/b;)V

    return-void
.end method
