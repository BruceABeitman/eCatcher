.class Lcom/glympse/android/rpc/c;
.super Ljava/lang/Object;
.source "MessageImage.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static R(Ljava/lang/String;)Lcom/glympse/android/core/GDrawable;
    .registers 6

    const/4 v1, 0x0

    if-nez p0, :cond_5

    move-object v0, v1

    :cond_4
    :goto_4
    return-object v0

    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/glympse/android/hal/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glympse/android/core/CoreFactory;->createDrawable(Landroid/graphics/drawable/BitmapDrawable;)Lcom/glympse/android/core/GDrawable;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/hal/GDrawablePrivate;

    array-length v3, v2

    const/4 v4, 0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/glympse/android/hal/GDrawablePrivate;->setBuffer([BIZ)V

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/glympse/android/hal/GDrawablePrivate;->decompress(Z)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1e

    move-result v2

    if-nez v2, :cond_4

    move-object v0, v1

    goto :goto_4

    :catch_1e
    move-exception v0

    move-object v0, v1

    goto :goto_4
.end method

.method public static a(Lcom/glympse/android/core/GDrawable;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    :try_start_4
    check-cast p0, Lcom/glympse/android/hal/GDrawablePrivate;

    invoke-interface {p0}, Lcom/glympse/android/hal/GDrawablePrivate;->compress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lcom/glympse/android/hal/GDrawablePrivate;->getBuffer()[B

    move-result-object v1

    invoke-interface {p0}, Lcom/glympse/android/hal/GDrawablePrivate;->getLength()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/glympse/android/hal/utils/Base64;->encode([BII)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/glympse/android/hal/GDrawablePrivate;->clearBuffer()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1e

    move-object v0, v1

    goto :goto_3

    :catch_1e
    move-exception v1

    goto :goto_3
.end method

.method public static a(Lcom/glympse/android/core/GDrawable;Lcom/glympse/android/core/GPrimitive;)V
    .registers 2

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
    .registers 4

    const-string v0, "content-type"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/jpg"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "content-encoding"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "base64"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
