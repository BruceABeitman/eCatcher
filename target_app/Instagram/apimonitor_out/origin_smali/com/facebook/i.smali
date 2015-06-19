.class final Lcom/facebook/i;
.super Lcom/facebook/widget/l;
.source "AuthorizationClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "oauth"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/widget/h;
    .registers 7

    invoke-virtual {p0}, Lcom/facebook/i;->e()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "redirect_uri"

    const-string v1, "fbconnect://success"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_id"

    invoke-virtual {p0}, Lcom/facebook/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/widget/h;

    invoke-virtual {p0}, Lcom/facebook/i;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "oauth"

    invoke-virtual {p0}, Lcom/facebook/i;->d()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/i;->f()Lcom/facebook/widget/o;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/h;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/o;)V

    return-object v0
.end method
