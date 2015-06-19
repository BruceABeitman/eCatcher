.class public abstract Lcom/umeng/analytics/d;
.super Ljava/lang/Object;
.source "PolicyManager.java"

# interfaces
.implements Lcom/umeng/analytics/h;
.implements Lcom/umeng/analytics/onlineconfig/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/d$a;,
        Lcom/umeng/analytics/d$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/umeng/analytics/a;

.field private final b:Ljava/lang/Object;

.field protected final c:Lcom/umeng/analytics/c;

.field protected final d:Lcom/umeng/analytics/a/f;

.field protected final e:I

.field protected final f:I

.field protected final g:I

.field protected final h:I

.field protected final i:I

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field private final l:Landroid/os/Handler;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private o:I

.field private p:J

.field private q:J

.field private r:J

.field private s:Z


# direct methods
.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/umeng/analytics/a;

    invoke-direct {v0}, Lcom/umeng/analytics/a;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->b:Ljava/lang/Object;

    new-instance v0, Lcom/umeng/analytics/c;

    invoke-direct {v0}, Lcom/umeng/analytics/c;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    new-instance v0, Lcom/umeng/analytics/a/f;

    invoke-direct {v0}, Lcom/umeng/analytics/a/f;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/analytics/d;->e:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/umeng/analytics/d;->f:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/umeng/analytics/d;->g:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/umeng/analytics/d;->h:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/umeng/analytics/d;->i:I

    const-string/jumbo v0, "body"

    iput-object v0, p0, Lcom/umeng/analytics/d;->m:Ljava/lang/String;

    const-string/jumbo v0, "header"

    iput-object v0, p0, Lcom/umeng/analytics/d;->n:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/analytics/d;->o:I

    iput-wide v1, p0, Lcom/umeng/analytics/d;->p:J

    iput-wide v1, p0, Lcom/umeng/analytics/d;->q:J

    iput-wide v1, p0, Lcom/umeng/analytics/d;->r:J

    iput-object v3, p0, Lcom/umeng/analytics/d;->j:Ljava/lang/String;

    iput-object v3, p0, Lcom/umeng/analytics/d;->k:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->s:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "MobclickAgent"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/umeng/analytics/d;->l:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/umeng/analytics/d;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    const/4 v0, 0x0

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v3, 0x2710

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v3, 0x7530

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    const-string/jumbo v2, "X-Umeng-Sdk"

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_24
    invoke-static {p1}, Lcom/umeng/analytics/g;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3b

    new-instance v4, Lorg/apache/http/HttpHost;

    const/16 v5, 0x50

    invoke-direct {v4, v2, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string/jumbo v5, "http.route.default-proxy"

    invoke-interface {v2, v5, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    :cond_3b
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "MobclickAgent"

    invoke-static {v4, v2}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v4, Lcom/umeng/analytics/f;->t:Z

    if-eqz v4, :cond_c4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "content="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "utf-8"

    invoke-static {v2, v4}, Lcom/umeng/common/util/f;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v4, "Content-Encoding"

    const-string/jumbo v5, "deflate"

    invoke-virtual {v1, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lorg/apache/http/entity/InputStreamEntity;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sget v2, Lcom/umeng/common/util/f;->a:I

    int-to-long v6, v2

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_79
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-interface {v3, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v2, v3, v5

    iput-wide v2, p0, Lcom/umeng/analytics/d;->r:J

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_c3

    const-string/jumbo v2, "MobclickAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Sent message to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_c3

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/umeng/analytics/d;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    :cond_c3
    :goto_c3
    return-object v0

    :cond_c4
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v6, "content"

    invoke-direct {v5, v6, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string/jumbo v5, "UTF-8"

    invoke-direct {v2, v4, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_e0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_24 .. :try_end_e0} :catch_e1
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_e0} :catch_ec

    goto :goto_79

    :catch_e1
    move-exception v1

    const-string/jumbo v2, "MobclickAgent"

    const-string/jumbo v3, "ClientProtocolException,Failed to send message."

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c3

    :catch_ec
    move-exception v1

    const-string/jumbo v2, "MobclickAgent"

    const-string/jumbo v3, "IOException,Failed to send message."

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_c3
.end method

.method private a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x40

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_12
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_51
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_38

    move-result-object v3

    if-nez v3, :cond_20

    :try_start_18
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1b} :catch_61

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    :try_start_20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_37
    .catchall {:try_start_20 .. :try_end_37} :catchall_51
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_37} :catch_38

    goto :goto_12

    :catch_38
    move-exception v1

    :try_start_39
    const-string/jumbo v2, "MobclickAgent"

    const-string/jumbo v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_51

    :try_start_42
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_1f

    :catch_46
    move-exception v1

    const-string/jumbo v2, "MobclickAgent"

    const-string/jumbo v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1f

    :catchall_51
    move-exception v1

    :try_start_52
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    throw v1

    :catch_56
    move-exception v1

    const-string/jumbo v2, "MobclickAgent"

    const-string/jumbo v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1f

    :catch_61
    move-exception v1

    const-string/jumbo v2, "MobclickAgent"

    const-string/jumbo v3, "Caught IOException in convertStreamToString()"

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1f
.end method

.method private a(Landroid/content/Context;)V
    .registers 6

    iget v0, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    invoke-static {p1}, Lcom/umeng/analytics/i;->i(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/analytics/d;->p:J

    iget v0, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    iget v0, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    :cond_1f
    invoke-static {p1}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_report_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/d;->q:J

    goto :goto_5
.end method

.method static synthetic a(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->d(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 6

    iget v0, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_a

    iget v0, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    :cond_a
    invoke-static {p1}, Lcom/umeng/analytics/i;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_report_time"

    iget-wide v2, p0, Lcom/umeng/analytics/d;->q:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1e
    iget-wide v0, p0, Lcom/umeng/analytics/d;->r:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-wide v1, p0, Lcom/umeng/analytics/d;->r:J

    iput-wide v1, v0, Lcom/umeng/analytics/a/f;->f:J

    invoke-static {p1}, Lcom/umeng/analytics/i;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "req_time"

    iget-wide v2, p0, Lcom/umeng/analytics/d;->r:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_40
    return-void
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/analytics/d;->k:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/umeng/analytics/d;->j:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/umeng/analytics/a/f;->b(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_1a
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v0, v0, Lcom/umeng/analytics/a/f;->q:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v0, v0, Lcom/umeng/analytics/a/f;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :try_start_39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v2, v2, Lcom/umeng/analytics/a/f;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v2, v2, Lcom/umeng/analytics/a/f;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v2, v2, Lcom/umeng/analytics/a/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    iget-object v2, v2, Lcom/umeng/analytics/a/f;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_90} :catch_95

    :goto_90
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_95
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_90
.end method

.method private d(Landroid/content/Context;)V
    .registers 6

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d;->g(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string/jumbo v0, "body"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_12
    sget-object v3, Lcom/umeng/analytics/f;->r:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_36

    :cond_17
    if-eqz v1, :cond_43

    invoke-static {p1}, Lcom/umeng/analytics/i;->j(Landroid/content/Context;)V

    const-string/jumbo v0, "MobclickAgent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "send applog succeed :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;)V

    goto :goto_f

    :cond_36
    sget-object v1, Lcom/umeng/analytics/f;->r:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, p1, v2, v1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/umeng/analytics/d;->q:J

    invoke-static {p1}, Lcom/umeng/common/b;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/umeng/analytics/i;->b(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    const-string/jumbo v0, "MobclickAgent"

    const-string/jumbo v1, "send applog failed"

    invoke-static {v0, v1}, Lcom/umeng/common/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method


# virtual methods
.method public a(IJ)V
    .registers 4

    iput p1, p0, Lcom/umeng/analytics/d;->o:I

    iput-wide p2, p0, Lcom/umeng/analytics/d;->p:J

    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;I)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/umeng/analytics/d;->s:Z

    if-nez v0, :cond_11

    const/4 v0, 0x4

    if-ne p2, v0, :cond_11

    invoke-direct {p0, p1}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/umeng/analytics/d;->f(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/analytics/d;->s:Z

    :cond_11
    const/4 v0, 0x5

    if-ne p2, v0, :cond_1b

    iget-object v0, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_3e

    :cond_19
    :goto_19
    monitor-exit p0

    return-void

    :cond_1b
    :try_start_1b
    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/d;->b(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/umeng/analytics/d;->l:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/analytics/d$b;

    invoke-direct {v1, p0, p1}, Lcom/umeng/analytics/d$b;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2b
    iget-object v0, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v0}, Lcom/umeng/analytics/c;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/umeng/analytics/d;->l:Landroid/os/Handler;

    new-instance v1, Lcom/umeng/analytics/d$a;

    invoke-direct {v1, p0, p1}, Lcom/umeng/analytics/d$a;-><init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_3e

    goto :goto_19

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Landroid/content/Context;I)Z
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/umeng/common/b;->n(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    :pswitch_8
    return v0

    :cond_9
    packed-switch p2, :pswitch_data_5c

    goto :goto_8

    :cond_d
    :pswitch_d
    iget v2, p0, Lcom/umeng/analytics/d;->o:I

    if-nez v2, :cond_19

    move v0, v1

    goto :goto_8

    :pswitch_13
    iget v2, p0, Lcom/umeng/analytics/d;->o:I

    if-ne v2, v1, :cond_d

    move v0, v1

    goto :goto_8

    :cond_19
    iget v2, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/analytics/d;->q:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/umeng/analytics/d;->p:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_33

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/umeng/analytics/d;->q:J

    move v0, v1

    goto :goto_8

    :cond_33
    iget v2, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/umeng/analytics/d;->q:J

    sub-long/2addr v2, v4

    sget-wide v4, Lcom/umeng/analytics/f;->g:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/umeng/analytics/d;->q:J

    move v0, v1

    goto :goto_8

    :cond_4d
    iget v2, p0, Lcom/umeng/analytics/d;->o:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_8

    invoke-static {p1}, Lcom/umeng/common/b;->l(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_8

    :pswitch_5a
    move v0, v1

    goto :goto_8

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_d
        :pswitch_5a
        :pswitch_8
        :pswitch_13
    .end packed-switch
.end method

.method public e(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/d;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public f(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/a;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/umeng/analytics/d;->a:Lcom/umeng/analytics/a;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/a;->a(Lcom/umeng/analytics/h;)V

    return-void
.end method

.method g(Landroid/content/Context;)Lorg/json/JSONObject;
    .registers 8

    const/4 v0, 0x0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_6
    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    invoke-virtual {v2}, Lcom/umeng/analytics/a/f;->b()Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/umeng/analytics/d;->k:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/umeng/analytics/d;->j:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Lcom/umeng/analytics/a/f;->b(Landroid/content/Context;[Ljava/lang/String;)V

    :cond_20
    iget-object v2, p0, Lcom/umeng/analytics/d;->d:Lcom/umeng/analytics/a/f;

    invoke-virtual {v2}, Lcom/umeng/analytics/a/f;->a()Z

    move-result v2

    if-nez v2, :cond_32

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "protocol Header need Appkey or Device ID ,Please check AndroidManifest.xml "

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    return-object v0

    :cond_32
    iget-object v2, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v2, p1}, Lcom/umeng/analytics/c;->b(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v2}, Lcom/umeng/analytics/c;->a()I

    move-result v2

    if-gtz v2, :cond_57

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "no message to send"

    invoke-static {v1, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_48} :catch_49

    goto :goto_31

    :catch_49
    move-exception v1

    const-string/jumbo v2, "MobclickAgent"

    const-string/jumbo v3, ""

    invoke-static {v2, v3, v1}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-static {p1}, Lcom/umeng/analytics/i;->j(Landroid/content/Context;)V

    goto :goto_31

    :cond_57
    :try_start_57
    iget-object v2, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v2}, Lcom/umeng/analytics/c;->c()Z

    move-result v2

    if-nez v2, :cond_7f

    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "protocol Body has invalid field: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v3}, Lcom/umeng/analytics/c;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7f
    const-string/jumbo v2, "header"

    new-instance v3, Lcom/umeng/analytics/e;

    invoke-direct {v3, p0}, Lcom/umeng/analytics/e;-><init>(Lcom/umeng/analytics/d;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "body"

    iget-object v3, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v3}, Lcom/umeng/analytics/c;->d()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    invoke-virtual {v2}, Lcom/umeng/analytics/c;->e()V
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_9b} :catch_49

    move-object v0, v1

    goto :goto_31
.end method
