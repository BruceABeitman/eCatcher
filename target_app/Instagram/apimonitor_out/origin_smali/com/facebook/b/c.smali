.class final Lcom/facebook/b/c;
.super Ljava/lang/Object;
.source "Facebook.java"

# interfaces
.implements Lcom/facebook/b/e;


# instance fields
.field final synthetic a:Lcom/facebook/b/b;


# direct methods
.method constructor <init>(Lcom/facebook/b/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-static {}, Lcom/facebook/b/m;->a()V

    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;)Lcom/facebook/b/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/b/e;->a()V

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 5

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    const-string v1, "access_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    const-string v1, "expires_in"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/b/b;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-virtual {v0}, Lcom/facebook/b/b;->b()Z

    move-result v0

    if-eqz v0, :cond_52

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login Success! access_token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-virtual {v1}, Lcom/facebook/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-virtual {v1}, Lcom/facebook/b/b;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/b/m;->a()V

    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;)Lcom/facebook/b/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/b/e;->a(Landroid/os/Bundle;)V

    :goto_51
    return-void

    :cond_52
    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;)Lcom/facebook/b/e;

    move-result-object v0

    new-instance v1, Lcom/facebook/b/i;

    const-string v2, "Failed to receive access token."

    invoke-direct {v1, v2}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/facebook/b/e;->a(Lcom/facebook/b/i;)V

    goto :goto_51
.end method

.method public final a(Lcom/facebook/b/a;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/b/m;->a()V

    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;)Lcom/facebook/b/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/b/e;->a(Lcom/facebook/b/a;)V

    return-void
.end method

.method public final a(Lcom/facebook/b/i;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Login failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/b/m;->a()V

    iget-object v0, p0, Lcom/facebook/b/c;->a:Lcom/facebook/b/b;

    invoke-static {v0}, Lcom/facebook/b/b;->a(Lcom/facebook/b/b;)Lcom/facebook/b/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/b/e;->a(Lcom/facebook/b/i;)V

    return-void
.end method
