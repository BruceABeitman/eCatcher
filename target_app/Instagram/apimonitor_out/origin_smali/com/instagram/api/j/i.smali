.class final Lcom/instagram/api/j/i;
.super Lcom/instagram/common/m/a;
.source "ApiRequestLoaderCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/m/a",
        "<",
        "Lcom/instagram/api/j/j",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic n:Lcom/instagram/api/j/h;


# direct methods
.method constructor <init>(Lcom/instagram/api/j/h;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-direct {p0, p2}, Lcom/instagram/common/m/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private u()Lcom/instagram/api/j/j;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/j/j",
            "<TT;>;"
        }
    .end annotation

    const/4 v4, 0x1

    invoke-static {}, Lcom/instagram/api/d/a;->a()V

    :try_start_4
    iget-object v0, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v0}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/j/c;->f()V
    :try_end_d
    .catch Lcom/instagram/api/j/e; {:try_start_4 .. :try_end_d} :catch_3f

    :try_start_d
    invoke-static {}, Lcom/instagram/common/a/b/a;->a()Lcom/instagram/common/a/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v1}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/common/a/b/a;->a(Lcom/instagram/common/a/d/a;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    invoke-virtual {p0}, Lcom/instagram/api/j/i;->f()Landroid/content/Context;

    invoke-static {v0}, Lcom/instagram/api/j/n;->a(Lch/boye/httpclientandroidlib/HttpResponse;)Lcom/instagram/api/j/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/api/j/n;->g()Z

    move-result v1

    if-eqz v1, :cond_92

    invoke-virtual {v0}, Lcom/instagram/api/j/n;->i()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_64

    move-result-object v1

    if-nez v1, :cond_92

    :try_start_2e
    iget-object v1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v1}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/api/j/c;->b(Lcom/instagram/api/j/j;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/api/j/n;->a(Ljava/lang/Object;)V
    :try_end_3b
    .catch Lcom/fasterxml/jackson/a/p; {:try_start_2e .. :try_end_3b} :catch_52
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_3b} :catch_64

    :goto_3b
    invoke-virtual {v0, v4}, Lcom/instagram/api/j/n;->a(Z)V

    :goto_3e
    return-object v0

    :catch_3f
    move-exception v0

    invoke-virtual {p0}, Lcom/instagram/api/j/i;->f()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->unknown_error_occured:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/n;->d(Ljava/lang/String;)Lcom/instagram/api/j/n;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/instagram/api/j/n;->a(Z)V

    goto :goto_3e

    :catch_52
    move-exception v1

    :try_start_53
    const-string v2, "ApiRequestLoaderCallbacks"

    const-string v3, "Error processing json"

    invoke-static {v2, v3, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v1}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/api/j/c;->a(Lcom/instagram/api/j/j;)V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_63} :catch_64

    goto :goto_3b

    :catch_64
    move-exception v0

    const-string v1, "ApiRequestLoaderCallbacks"

    const-string v2, "Unhandled exception in API request"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v1}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/api/j/c;->c_()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network_request"

    invoke-static {v2, v1, v0}, Lcom/instagram/common/g/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/instagram/api/j/i;->f()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->network_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/api/j/n;->d(Ljava/lang/String;)Lcom/instagram/api/j/n;

    move-result-object v0

    goto :goto_3b

    :cond_92
    :try_start_92
    iget-object v1, p0, Lcom/instagram/api/j/i;->n:Lcom/instagram/api/j/h;

    invoke-static {v1}, Lcom/instagram/api/j/h;->a(Lcom/instagram/api/j/h;)Lcom/instagram/api/j/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/instagram/api/j/c;->a(Lcom/instagram/api/j/j;)V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9b} :catch_64

    goto :goto_3b
.end method


# virtual methods
.method public final synthetic d()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/api/j/i;->u()Lcom/instagram/api/j/j;

    move-result-object v0

    return-object v0
.end method
