.class public Lcom/igexin/push/core/d/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/igexin/push/core/bean/e;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/igexin/push/core/bean/e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/push/core/d/e;->c:I

    iput-object p1, p0, Lcom/igexin/push/core/d/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/igexin/push/core/d/e;->b:Lcom/igexin/push/core/bean/e;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const/4 v8, 0x3

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    if-nez p1, :cond_1a

    iput v8, p0, Lcom/igexin/push/core/d/e;->c:I

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v1

    const-string/jumbo v2, "url is null"

    invoke-virtual {v1, v2}, Lcom/igexin/push/core/a/f;->f(Ljava/lang/String;)V

    goto :goto_a

    :cond_1a
    const-string/jumbo v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string/jumbo v1, "https://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_51

    iput v8, p0, Lcom/igexin/push/core/d/e;->c:I

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "httpUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a valid url..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/igexin/push/core/a/f;->f(Ljava/lang/String;)V

    goto :goto_a

    :cond_51
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :try_start_5b
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_e8

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/igexin/push/core/g;->ac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_a0
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_bc

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_ab
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5b .. :try_end_ab} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_ab} :catch_df

    goto :goto_a0

    :catch_ac
    move-exception v1

    iput v8, p0, Lcom/igexin/push/core/d/e;->c:I

    invoke-static {}, Lcom/igexin/push/core/a/f;->a()Lcom/igexin/push/core/a/f;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/igexin/push/core/a/f;->f(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_bc
    :try_start_bc
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    iget-object v1, p0, Lcom/igexin/push/core/d/e;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/igexin/a/b/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d1

    const/4 v0, 0x1

    goto/16 :goto_a

    :cond_d1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_da

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_da
    const/4 v1, 0x4

    iput v1, p0, Lcom/igexin/push/core/d/e;->c:I
    :try_end_dd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bc .. :try_end_dd} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_dd} :catch_df

    goto/16 :goto_a

    :catch_df
    move-exception v1

    iget v1, p0, Lcom/igexin/push/core/d/e;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/push/core/d/e;->c:I

    goto/16 :goto_a

    :cond_e8
    :try_start_e8
    iget v1, p0, Lcom/igexin/push/core/d/e;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/igexin/push/core/d/e;->c:I
    :try_end_ee
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e8 .. :try_end_ee} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_ee} :catch_df

    goto/16 :goto_a
.end method

.method public run()V
    .registers 5

    const/4 v3, 0x1

    :cond_1
    iget-object v0, p0, Lcom/igexin/push/core/d/e;->b:Lcom/igexin/push/core/bean/e;

    invoke-virtual {v0}, Lcom/igexin/push/core/bean/e;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/igexin/push/core/d/e;->b:Lcom/igexin/push/core/bean/e;

    invoke-virtual {v2}, Lcom/igexin/push/core/bean/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/push/core/d/e;->b:Lcom/igexin/push/core/bean/e;

    invoke-virtual {v2}, Lcom/igexin/push/core/bean/e;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/push/core/d/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_57

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/core/d/e;->a:Landroid/content/Context;

    const-class v2, Lcom/igexin/sdk/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "com.igexin.sdk.action.extdownloadsuccess"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/igexin/push/core/d/e;->b:Lcom/igexin/push/core/bean/e;

    invoke-virtual {v2}, Lcom/igexin/push/core/bean/e;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/core/d/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_56
    return-void

    :cond_57
    iget v0, p0, Lcom/igexin/push/core/d/e;->c:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/core/d/e;->a:Landroid/content/Context;

    const-class v2, Lcom/igexin/sdk/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "action"

    const-string/jumbo v2, "com.igexin.sdk.action.extdownloadsuccess"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/igexin/push/core/d/e;->b:Lcom/igexin/push/core/bean/e;

    invoke-virtual {v2}, Lcom/igexin/push/core/bean/e;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/push/core/d/e;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_56
.end method
