.class public Lcom/umeng/analytics/a/d;
.super Lcom/umeng/analytics/a/n;
.source "Error.java"

# interfaces
.implements Lcom/umeng/analytics/a/g;


# instance fields
.field public a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/analytics/a/n;-><init>()V

    const-string/jumbo v0, "context"

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/umeng/analytics/a/n;-><init>()V

    const-string/jumbo v0, "context"

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/analytics/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0}, Lcom/umeng/analytics/a/n;-><init>()V

    const-string/jumbo v0, "context"

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/umeng/analytics/a/d;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :goto_15
    if-nez v1, :cond_27

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_22

    goto :goto_3

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_27
    :try_start_27
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_22

    move-result-object v1

    goto :goto_15
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-string/jumbo v0, "date"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->g:Ljava/lang/String;

    const-string/jumbo v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->h:Ljava/lang/String;

    const-string/jumbo v0, "context"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/d;->a:Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_1f

    goto :goto_2

    :catch_1f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public a()Z
    .registers 3

    iget-object v0, p0, Lcom/umeng/analytics/a/d;->a:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "mContent is not initialized"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    invoke-super {p0}, Lcom/umeng/analytics/a/n;->a()Z

    move-result v0

    goto :goto_e
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v0, "date"

    iget-object v1, p0, Lcom/umeng/analytics/a/d;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "time"

    iget-object v1, p0, Lcom/umeng/analytics/a/d;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v0, "context"

    iget-object v1, p0, Lcom/umeng/analytics/a/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
