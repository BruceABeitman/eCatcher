.class Lcom/millennialmedia/android/aw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "HttpGetRequest"


# instance fields
.field private a:Lorg/apache/http/client/HttpClient;

.field private b:Lorg/apache/http/client/methods/HttpGet;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/millennialmedia/android/aw;->a:Lorg/apache/http/client/HttpClient;

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/aw;->b:Lorg/apache/http/client/methods/HttpGet;

    return-void
.end method

.method constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/millennialmedia/android/aw;->a:Lorg/apache/http/client/HttpClient;

    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/aw;->b:Lorg/apache/http/client/methods/HttpGet;

    return-void
.end method

.method static a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_b

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is null."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :try_start_b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x1000

    invoke-direct {v1, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_6c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_17} :catch_6f

    :try_start_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_50

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_38
    .catchall {:try_start_17 .. :try_end_38} :catchall_49
    .catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_38} :catch_39

    goto :goto_1c

    :catch_39
    move-exception v0

    :goto_3a
    :try_start_3a
    const-string v2, "HttpGetRequest"

    const-string v3, "Out of Memeory: "

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/io/IOException;

    const-string v2, "Out of memory."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_49
    .catchall {:try_start_3a .. :try_end_49} :catchall_49

    :catchall_49
    move-exception v0

    :goto_4a
    if-eqz v1, :cond_4f

    :try_start_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_63

    :cond_4f
    :goto_4f
    throw v0

    :cond_50
    if-eqz v1, :cond_55

    :try_start_52
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_5a

    :cond_55
    :goto_55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_5a
    move-exception v1

    const-string v2, "HttpGetRequest"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_55

    :catch_63
    move-exception v1

    const-string v2, "HttpGetRequest"

    const-string v3, "Error closing file"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4f

    :catchall_6c
    move-exception v0

    move-object v1, v2

    goto :goto_4a

    :catch_6f
    move-exception v0

    move-object v1, v2

    goto :goto_3a
.end method

.method static a([Ljava/lang/String;)V
    .registers 2

    if-eqz p0, :cond_d

    array-length v0, p0

    if-lez v0, :cond_d

    new-instance v0, Lcom/millennialmedia/android/aw$1;

    invoke-direct {v0, p0}, Lcom/millennialmedia/android/aw$1;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/millennialmedia/android/dk;->a(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    :try_start_7
    iget-object v1, p0, Lcom/millennialmedia/android/aw;->b:Lorg/apache/http/client/methods/HttpGet;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    iget-object v1, p0, Lcom/millennialmedia/android/aw;->a:Lorg/apache/http/client/HttpClient;

    iget-object v2, p0, Lcom/millennialmedia/android/aw;->b:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_18} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_18} :catch_23

    move-result-object v0

    :cond_19
    :goto_19
    return-object v0

    :catch_1a
    move-exception v1

    const-string v2, "HttpGetRequest"

    const-string v3, "Out of memory!"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19

    :catch_23
    move-exception v1

    if-eqz v1, :cond_19

    const-string v2, "HttpGetRequest"

    const-string v3, "Error connecting:"

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method a(Ljava/lang/String;ZJLjava/util/TreeMap;)V
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_96

    :goto_4
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://cvt.mydas.mobi/handleConversion?firstlaunch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&goalId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_34
    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-lez v0, :cond_54

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "&installtime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    div-long v2, p3, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_54
    if-eqz p5, :cond_99

    invoke-virtual {p5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v3, "&%s=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8c} :catch_8d

    goto :goto_5e

    :catch_8d
    move-exception v0

    const-string v1, "HttpGetRequest"

    const-string v2, "Conversion tracking error: "

    invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_95
    return-void

    :cond_96
    move v0, v1

    goto/16 :goto_4

    :cond_99
    :try_start_99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpGetRequest"

    const-string v2, "Sending conversion tracker report: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/millennialmedia/android/aw;->b:Lorg/apache/http/client/methods/HttpGet;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    iget-object v0, p0, Lcom/millennialmedia/android/aw;->a:Lorg/apache/http/client/HttpClient;

    iget-object v1, p0, Lcom/millennialmedia/android/aw;->b:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_ea

    const-string v1, "HttpGetRequest"

    const-string v2, "Successful conversion tracking event: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    :cond_ea
    const-string v1, "HttpGetRequest"

    const-string v2, "Conversion tracking error: %d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_107} :catch_8d

    goto :goto_95
.end method
