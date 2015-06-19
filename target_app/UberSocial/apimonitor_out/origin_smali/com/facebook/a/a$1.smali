.class Lcom/facebook/a/a$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/a/a;->a(Landroid/content/Context;Lcom/facebook/a/b;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/a/b;

.field final synthetic c:Ljava/lang/Object;

.field final synthetic d:Lcom/facebook/a/a;


# direct methods
.method constructor <init>(Lcom/facebook/a/a;Landroid/content/Context;Lcom/facebook/a/b;Ljava/lang/Object;)V
    .registers 5

    iput-object p1, p0, Lcom/facebook/a/a$1;->d:Lcom/facebook/a/a;

    iput-object p2, p0, Lcom/facebook/a/a$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/a/a$1;->b:Lcom/facebook/a/b;

    iput-object p4, p0, Lcom/facebook/a/a$1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/a/a$1;->d:Lcom/facebook/a/a;

    iget-object v0, v0, Lcom/facebook/a/a;->a:Lcom/facebook/a/e;

    iget-object v1, p0, Lcom/facebook/a/a$1;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/a/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    :cond_18
    iget-object v0, p0, Lcom/facebook/a/a$1;->b:Lcom/facebook/a/b;

    new-instance v1, Lcom/facebook/a/k;

    const-string v2, "auth.expireSession failed"

    invoke-direct {v1, v2}, Lcom/facebook/a/k;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/a/a$1;->c:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/facebook/a/b;->a(Lcom/facebook/a/k;Ljava/lang/Object;)V

    :goto_26
    return-void

    :cond_27
    iget-object v1, p0, Lcom/facebook/a/a$1;->b:Lcom/facebook/a/b;

    iget-object v2, p0, Lcom/facebook/a/a$1;->c:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/facebook/a/b;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_2e} :catch_2f
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_2e} :catch_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2e} :catch_41

    goto :goto_26

    :catch_2f
    move-exception v0

    iget-object v1, p0, Lcom/facebook/a/a$1;->b:Lcom/facebook/a/b;

    iget-object v2, p0, Lcom/facebook/a/a$1;->c:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/facebook/a/b;->a(Ljava/io/FileNotFoundException;Ljava/lang/Object;)V

    goto :goto_26

    :catch_38
    move-exception v0

    iget-object v1, p0, Lcom/facebook/a/a$1;->b:Lcom/facebook/a/b;

    iget-object v2, p0, Lcom/facebook/a/a$1;->c:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/facebook/a/b;->a(Ljava/net/MalformedURLException;Ljava/lang/Object;)V

    goto :goto_26

    :catch_41
    move-exception v0

    iget-object v1, p0, Lcom/facebook/a/a$1;->b:Lcom/facebook/a/b;

    iget-object v2, p0, Lcom/facebook/a/a$1;->c:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/facebook/a/b;->a(Ljava/io/IOException;Ljava/lang/Object;)V

    goto :goto_26
.end method
