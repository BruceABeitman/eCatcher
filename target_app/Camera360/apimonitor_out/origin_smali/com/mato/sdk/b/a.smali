.class public final Lcom/mato/sdk/b/a;
.super Lcom/mato/sdk/b/c;


# static fields
.field private static final a:Ljava/lang/String; = "Mato.CrashLogReportAsyncTask"


# instance fields
.field private b:[B

.field private c:Lcom/mato/sdk/b/d;


# direct methods
.method public constructor <init>(Lcom/mato/sdk/b/d;[B)V
    .registers 3

    invoke-direct {p0}, Lcom/mato/sdk/b/c;-><init>()V

    iput-object p1, p0, Lcom/mato/sdk/b/a;->c:Lcom/mato/sdk/b/d;

    iput-object p2, p0, Lcom/mato/sdk/b/a;->b:[B

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/mato/sdk/a/b$f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_c

    const-string/jumbo v0, "Mato.CrashLogReportAsyncTask"

    const-string/jumbo v1, "\u7f51\u7edc\u8fde\u63a5\u4e0d\u6210\u529f\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return-void

    :cond_c
    :try_start_c
    const-string/jumbo v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/mato/sdk/b/a;->c:Lcom/mato/sdk/b/d;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/mato/sdk/b/a;->c:Lcom/mato/sdk/b/d;

    const-string/jumbo v1, "\u4e0a\u62a5\u65e5\u5fd7\u6210\u529f"

    invoke-interface {v0, v1}, Lcom/mato/sdk/b/d;->a(Ljava/lang/String;)V

    :cond_21
    const-string/jumbo v0, "Mato.CrashLogReportAsyncTask"

    const-string/jumbo v1, "report succeed"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_2a} :catch_2b

    goto :goto_b

    :catch_2b
    move-exception v0

    const-string/jumbo v0, "Mato.CrashLogReportAsyncTask"

    const-string/jumbo v1, "json exception"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_36
    :try_start_36
    const-string/jumbo v0, "Mato.CrashLogReportAsyncTask"

    const-string/jumbo v1, "report failed"

    invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_3f} :catch_2b

    goto :goto_b
.end method

.method final b()Lorg/apache/http/HttpEntity;
    .registers 7

    :try_start_0
    invoke-static {}, Lcom/mato/sdk/utils/g;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "packageName"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "platform"

    invoke-static {}, Lcom/mato/sdk/utils/g;->l()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "model"

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "type"

    const-string/jumbo v3, "wspx-crash"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/mato/sdk/b/h;

    invoke-direct {v3}, Lcom/mato/sdk/b/h;-><init>()V

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_78

    const-string/jumbo v1, "filename"

    const-string/jumbo v2, "crashlog.gzip"

    iget-object v4, p0, Lcom/mato/sdk/b/a;->b:[B

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/mato/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/String;[BZ)V

    move-object v1, v3

    :goto_77
    return-object v1

    :cond_78
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/mato/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8f} :catch_90

    goto :goto_64

    :catch_90
    move-exception v1

    const/4 v1, 0x0

    goto :goto_77
.end method

.method final c()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
