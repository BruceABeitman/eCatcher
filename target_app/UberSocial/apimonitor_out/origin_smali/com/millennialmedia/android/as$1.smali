.class Lcom/millennialmedia/android/as$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/android/as;->a(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/millennialmedia/android/as;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/as;Z)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    iput-boolean p2, p0, Lcom/millennialmedia/android/as$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/16 v10, 0xc8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    invoke-static {v0}, Lcom/millennialmedia/android/as;->a(Lcom/millennialmedia/android/as;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_208

    iget-object v0, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    invoke-static {v0}, Lcom/millennialmedia/android/as;->b(Lcom/millennialmedia/android/as;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v4, v0

    :goto_1e
    if-nez v4, :cond_21

    :cond_20
    :goto_20
    return-void

    :cond_21
    :try_start_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "ua"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Android:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    invoke-static {v1, v4}, Lcom/millennialmedia/android/as;->a(Lcom/millennialmedia/android/as;Landroid/content/Context;)Z
    :try_end_4a
    .catchall {:try_start_21 .. :try_end_4a} :catchall_1fd
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_4a} :catch_204
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4a} :catch_201

    move-result v1

    if-eqz v1, :cond_54

    :try_start_4d
    const-string v3, "firstlaunch"

    const-string v6, "1"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_54
    iget-boolean v3, p0, Lcom/millennialmedia/android/as$1;->a:Z

    if-eqz v3, :cond_5f

    const-string v3, "init"

    const-string v6, "1"

    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5f
    invoke-static {v4, v0}, Lcom/millennialmedia/android/co;->a(Landroid/content/Context;Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    const-string v6, "&%s=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_98
    .catchall {:try_start_4d .. :try_end_98} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_98} :catch_99
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_98} :catch_1dd

    goto :goto_6a

    :catch_99
    move-exception v0

    :goto_9a
    :try_start_9a
    const-string v2, "HandShake"

    const-string v3, "Could not get a handshake. "

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a1
    .catchall {:try_start_9a .. :try_end_a1} :catchall_a3

    goto/16 :goto_20

    :catchall_a3
    move-exception v0

    :goto_a4
    if-eqz v1, :cond_ab

    iget-object v1, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    invoke-static {v1, v4}, Lcom/millennialmedia/android/as;->c(Lcom/millennialmedia/android/as;Landroid/content/Context;)V

    :cond_ab
    throw v0

    :cond_ac
    :try_start_ac
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/millennialmedia/android/as;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/millennialmedia/android/as;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "HandShake"

    const-string v6, "Performing handshake: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_dc
    .catchall {:try_start_ac .. :try_end_dc} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_dc} :catch_99
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_dc} :catch_1dd

    const/4 v3, 0x0

    :try_start_dd
    new-instance v6, Lcom/millennialmedia/android/aw;

    const/16 v7, 0xbb8

    invoke-direct {v6, v7}, Lcom/millennialmedia/android/aw;-><init>(I)V

    invoke-virtual {v6, v0}, Lcom/millennialmedia/android/aw;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_e7
    .catchall {:try_start_dd .. :try_end_e7} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e7} :catch_1d3
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e7} :catch_1dd

    move-result-object v3

    :goto_e8
    if-eqz v3, :cond_f4

    :try_start_ea
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_f1
    .catchall {:try_start_ea .. :try_end_f1} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_ea .. :try_end_f1} :catch_99
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f1} :catch_1dd

    move-result v0

    if-eq v0, v10, :cond_13c

    :cond_f4
    :try_start_f4
    invoke-static {}, Lcom/millennialmedia/android/as;->e()Ljava/lang/String;

    move-result-object v0

    const-string v6, "https://"

    const-string v7, "http://"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/as;->f(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/millennialmedia/android/as;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/millennialmedia/android/as;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "HandShake"

    const-string v7, "Performing handshake (HTTP Fallback): %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/millennialmedia/android/aw;

    invoke-direct {v6}, Lcom/millennialmedia/android/aw;-><init>()V

    invoke-virtual {v6, v0}, Lcom/millennialmedia/android/aw;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_13b
    .catchall {:try_start_f4 .. :try_end_13b} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_13b} :catch_1e7
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_13b} :catch_1dd

    move-result-object v3

    :cond_13c
    :goto_13c
    if-eqz v3, :cond_148

    :try_start_13e
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_145
    .catchall {:try_start_13e .. :try_end_145} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_145} :catch_99
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_145} :catch_1dd

    move-result v0

    if-eq v0, v10, :cond_1f9

    :cond_148
    :try_start_148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://ads.mp.mydas.mobi/appConfigServlet?apid="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Lcom/millennialmedia/android/as;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "HandShake"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Performing handshake (HTTP Fallback Original): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/millennialmedia/android/aw;

    invoke-direct {v5}, Lcom/millennialmedia/android/aw;-><init>()V

    invoke-virtual {v5, v0}, Lcom/millennialmedia/android/aw;->a(Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_185
    .catchall {:try_start_148 .. :try_end_185} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_185} :catch_1f1
    .catch Ljava/lang/Exception; {:try_start_148 .. :try_end_185} :catch_1dd

    move-result-object v0

    :goto_186
    if-eqz v0, :cond_1fb

    :try_start_188
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    if-ne v3, v10, :cond_1fb

    iget-object v2, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    iget-object v3, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/aw;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/millennialmedia/android/as;->a(Lcom/millennialmedia/android/as;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/millennialmedia/android/as;->a(Lcom/millennialmedia/android/as;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    invoke-static {v0, v4}, Lcom/millennialmedia/android/as;->b(Lcom/millennialmedia/android/as;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    invoke-static {v0}, Lcom/millennialmedia/android/as;->e(Lcom/millennialmedia/android/as;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    invoke-static {v2}, Lcom/millennialmedia/android/as;->c(Lcom/millennialmedia/android/as;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    invoke-static {v3}, Lcom/millennialmedia/android/as;->d(Lcom/millennialmedia/android/as;)J

    move-result-wide v5

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "HandShake"

    const-string v2, "Obtained a new handshake"

    invoke-static {v0, v2}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1ca
    .catchall {:try_start_188 .. :try_end_1ca} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_1ca} :catch_99
    .catch Ljava/lang/Exception; {:try_start_188 .. :try_end_1ca} :catch_1dd

    :goto_1ca
    if-eqz v1, :cond_20

    iget-object v0, p0, Lcom/millennialmedia/android/as$1;->b:Lcom/millennialmedia/android/as;

    invoke-static {v0, v4}, Lcom/millennialmedia/android/as;->c(Lcom/millennialmedia/android/as;Landroid/content/Context;)V

    goto/16 :goto_20

    :catch_1d3
    move-exception v0

    :try_start_1d4
    const-string v6, "HandShake"

    const-string v7, "Could not get a handshake. "

    invoke-static {v6, v7, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1db
    .catchall {:try_start_1d4 .. :try_end_1db} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_1d4 .. :try_end_1db} :catch_99
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1db} :catch_1dd

    goto/16 :goto_e8

    :catch_1dd
    move-exception v0

    :goto_1de
    :try_start_1de
    const-string v2, "HandShake"

    const-string v3, "Could not get a handshake. "

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1e5
    .catchall {:try_start_1de .. :try_end_1e5} :catchall_a3

    goto/16 :goto_20

    :catch_1e7
    move-exception v0

    :try_start_1e8
    const-string v6, "HandShake"

    const-string v7, "Could not get a handshake. "

    invoke-static {v6, v7, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13c

    :catch_1f1
    move-exception v0

    const-string v5, "HandShake"

    const-string v6, "Could not get a handshake. "

    invoke-static {v5, v6, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1f9
    .catchall {:try_start_1e8 .. :try_end_1f9} :catchall_a3
    .catch Ljava/io/IOException; {:try_start_1e8 .. :try_end_1f9} :catch_99
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1f9} :catch_1dd

    :cond_1f9
    move-object v0, v3

    goto :goto_186

    :cond_1fb
    move v1, v2

    goto :goto_1ca

    :catchall_1fd
    move-exception v0

    move v1, v2

    goto/16 :goto_a4

    :catch_201
    move-exception v0

    move v1, v2

    goto :goto_1de

    :catch_204
    move-exception v0

    move v1, v2

    goto/16 :goto_9a

    :cond_208
    move-object v4, v0

    goto/16 :goto_1e
.end method
