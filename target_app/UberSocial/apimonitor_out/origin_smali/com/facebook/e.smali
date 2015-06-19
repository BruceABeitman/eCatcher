.class Lcom/facebook/e;
.super Lcom/facebook/widget/ay;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "fbconnect://success"

.field private static final c:Ljava/lang/String; = "oauth"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "oauth"

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/facebook/widget/ay;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/widget/ax;
    .registers 7

    invoke-virtual {p0}, Lcom/facebook/e;->e()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "redirect_uri"

    const-string v1, "fbconnect://success"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_id"

    invoke-virtual {p0}, Lcom/facebook/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/widget/ax;

    invoke-virtual {p0}, Lcom/facebook/e;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "oauth"

    invoke-virtual {p0}, Lcom/facebook/e;->d()I

    move-result v4

    invoke-virtual {p0}, Lcom/facebook/e;->f()Lcom/facebook/widget/bc;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/ax;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILcom/facebook/widget/bc;)V

    return-object v0
.end method
