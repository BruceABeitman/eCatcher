.class public final Lcom/instagram/common/d/a;
.super Ljava/lang/Object;
.source "FlyTrapUtil.java"


# direct methods
.method public static a(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->isChild()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object p0

    :cond_a
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    :try_start_19
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_33
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_33} :catch_34

    :goto_33
    return-object v0

    :catch_34
    move-exception v0

    const/4 v0, 0x0

    goto :goto_33
.end method

.method public static a(Landroid/graphics/Bitmap;Ljava/io/File;)Landroid/net/Uri;
    .registers 5

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_1e

    :try_start_5
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_18

    move-result-object v0

    const/4 v2, 0x0

    :try_start_14
    invoke-static {v1, v2}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;Z)V

    :goto_17
    return-object v0

    :catchall_18
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;Z)V

    throw v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1e} :catch_1e

    :catch_1e
    move-exception v0

    const-string v1, "FlyTrapUtil"

    const-string v2, "Couldn\'t save screenshot"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static a(Ljava/io/File;)Landroid/net/Uri;
    .registers 4

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_17

    :try_start_5
    invoke-static {v1}, Lcom/instagram/common/d/a;->a(Ljava/io/OutputStream;)V

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    move-result-object v0

    const/4 v2, 0x0

    :try_start_d
    invoke-static {v1, v2}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;Z)V

    :goto_10
    return-object v0

    :catchall_11
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;Z)V

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    const-string v1, "FlyTrapUtil"

    const-string v2, "Unable to dump logcat"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static a(Ljava/io/OutputStream;)V
    .registers 5

    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "logcat -d -v time CurlLogger ApiHttpClient *:S"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_30

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_26} :catch_27

    goto :goto_1d

    :catch_27
    move-exception v0

    const-string v1, "FlyTrapUtil"

    const-string v2, "collectLogcat could not retrieve data."

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2f
    return-void

    :cond_30
    :try_start_30
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_27

    goto :goto_2f
.end method

.method public static b(Ljava/io/File;)Landroid/net/Uri;
    .registers 4

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_17

    :try_start_5
    invoke-static {v1}, Lcom/instagram/common/d/a;->b(Ljava/io/OutputStream;)V

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    move-result-object v0

    const/4 v2, 0x0

    :try_start_d
    invoke-static {v1, v2}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;Z)V

    :goto_10
    return-object v0

    :catchall_11
    move-exception v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/instagram/common/i/c/a;->a(Ljava/io/Closeable;Z)V

    throw v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_17} :catch_17

    :catch_17
    move-exception v0

    const-string v1, "FlyTrapUtil"

    const-string v2, "Unable to dump stack trace"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_10
.end method

.method private static b(Ljava/io/OutputStream;)V
    .registers 7

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/StackTraceElement;

    array-length v4, v0

    const/4 v1, 0x0

    :goto_43
    if-ge v1, v4, :cond_4d

    aget-object v5, v0, v1

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    :cond_4d
    invoke-virtual {v2}, Ljava/io/PrintWriter;->println()V

    goto :goto_11

    :cond_51
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method
