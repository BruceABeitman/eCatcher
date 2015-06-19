.class public Lcom/loopj/android/http/l;
.super Lcom/loopj/android/http/w;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/loopj/android/http/w;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a([B)Ljava/lang/Object;
    .registers 5

    const/4 v1, 0x0

    if-nez p1, :cond_5

    move-object v0, v1

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/loopj/android/http/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/loopj/android/http/l;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\ufeff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_20
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    :cond_30
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    :cond_39
    if-eqz v1, :cond_4

    move-object v0, v1

    goto :goto_4
.end method

.method public a(ILjava/lang/String;)V
    .registers 5

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onSuccess(int, Header[], String) was not overriden, but callback was received"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onFailure(int, Header[], String, Throwable) was not overriden, but callback was received"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public a(ILjava/lang/Throwable;Lorg/json/JSONArray;)V
    .registers 6

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onFailure(int, Header[], Throwable, JSONArray) was not overriden, but callback was received"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public a(ILjava/lang/Throwable;Lorg/json/JSONObject;)V
    .registers 6

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onFailure(int, Header[], Throwable, JSONObject) was not overriden, but callback was received"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public a(ILorg/json/JSONObject;)V
    .registers 5

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onSuccess(int, Header[], JSONObject) was not overriden, but callback was received"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(I[Lorg/apache/http/Header;[B)V
    .registers 6

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1c

    new-instance v0, Lcom/loopj/android/http/l$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/loopj/android/http/l$1;-><init>(Lcom/loopj/android/http/l;[BI[Lorg/apache/http/Header;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/l;->a()Z

    move-result v1

    if-nez v1, :cond_18

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_17
    return-void

    :cond_18
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_17

    :cond_1c
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/loopj/android/http/l;->a(ILorg/json/JSONObject;)V

    goto :goto_17
.end method

.method public final a(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .registers 11

    if-eqz p3, :cond_1f

    new-instance v0, Lcom/loopj/android/http/l$2;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/loopj/android/http/l$2;-><init>(Lcom/loopj/android/http/l;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/loopj/android/http/l;->a()Z

    move-result v1

    if-nez v1, :cond_1b

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_1a
    return-void

    :cond_1b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1a

    :cond_1f
    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "response body is null, calling onFailure(Throwable, JSONObject)"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p4, v0}, Lcom/loopj/android/http/l;->a(ILjava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_1a
.end method

.method public a(Lorg/json/JSONArray;)V
    .registers 4

    const-string v0, "JsonHttpResponseHandler"

    const-string v1, "onSuccess(int, Header[], JSONArray) was not overriden, but callback was received"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
