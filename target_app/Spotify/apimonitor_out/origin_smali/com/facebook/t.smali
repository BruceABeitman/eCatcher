.class final Lcom/facebook/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/r;


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:Lcom/facebook/internal/v;

.field private c:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/v;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/t;->c:Z

    iput-object p1, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/facebook/t;->b:Lcom/facebook/internal/v;

    return-void
.end method

.method private a()V
    .registers 5

    const-string v0, "--%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-nez p3, :cond_6

    const-string p3, "content/unknown"

    :cond_6
    invoke-direct {p0, p1, p1, p3}, Lcom/facebook/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/m;

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/m;

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/m;->a(J)V

    move v0, v1

    :goto_1b
    const-string v2, ""

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/facebook/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/facebook/t;->a()V

    iget-object v2, p0, Lcom/facebook/t;->b:Lcom/facebook/internal/v;

    if-eqz v2, :cond_4c

    iget-object v2, p0, Lcom/facebook/t;->b:Lcom/facebook/internal/v;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<Data: %d>"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4c
    return-void

    :cond_4d
    :try_start_4d
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v4, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_52
    .catchall {:try_start_4d .. :try_end_52} :catchall_72

    :try_start_52
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_57
    .catchall {:try_start_52 .. :try_end_57} :catchall_7f

    const/16 v0, 0x2000

    :try_start_59
    new-array v3, v0, [B

    move v0, v1

    :goto_5c
    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6b

    iget-object v6, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_69
    .catchall {:try_start_59 .. :try_end_69} :catchall_83

    add-int/2addr v0, v5

    goto :goto_5c

    :cond_6b
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    goto :goto_1b

    :catchall_72
    move-exception v0

    move-object v1, v3

    :goto_74
    if-eqz v1, :cond_79

    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    :cond_79
    if-eqz v3, :cond_7e

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V

    :cond_7e
    throw v0

    :catchall_7f
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_74

    :catchall_83
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_74
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/facebook/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_16

    const-string v0, "; filename=\"%s\""

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/facebook/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_2d

    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Content-Type"

    aput-object v2, v1, v3

    aput-object p3, v1, v4

    invoke-direct {p0, v0, v1}, Lcom/facebook/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    const-string v0, ""

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    iget-boolean v0, p0, Lcom/facebook/t;->c:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    const-string v1, "--"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    const-string v1, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/t;->c:Z

    :cond_28
    iget-object v0, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/facebook/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "\r\n"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V
    .registers 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/y;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/y;

    invoke-interface {v0, p3}, Lcom/facebook/y;->a(Lcom/facebook/Request;)V

    :cond_e
    invoke-static {p2}, Lcom/facebook/Request;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {p2}, Lcom/facebook/Request;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_55

    check-cast p2, Landroid/graphics/Bitmap;

    const-string v0, "image/png"

    invoke-direct {p0, p1, p1, v0}, Lcom/facebook/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    const-string v0, ""

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/facebook/t;->a()V

    iget-object v0, p0, Lcom/facebook/t;->b:Lcom/facebook/internal/v;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/t;->b:Lcom/facebook/internal/v;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Image>"

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1b

    :cond_55
    instance-of v0, p2, [B

    if-eqz v0, :cond_98

    check-cast p2, [B

    const-string v0, "content/unknown"

    invoke-direct {p0, p1, p1, v0}, Lcom/facebook/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    const-string v0, ""

    new-array v1, v5, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/facebook/t;->a()V

    iget-object v0, p0, Lcom/facebook/t;->b:Lcom/facebook/internal/v;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/facebook/t;->b:Lcom/facebook/internal/v;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "<Data: %d>"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1b

    :cond_98
    instance-of v0, p2, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_a4

    check-cast p2, Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/t;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_a4
    instance-of v0, p2, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    if-eqz v0, :cond_b7

    check-cast p2, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    invoke-virtual {p2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->b()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/t;->a(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    goto/16 :goto_1b

    :cond_b7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is not a supported type: String, Bitmap, byte[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/facebook/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/facebook/t;->a()V

    iget-object v0, p0, Lcom/facebook/t;->b:Lcom/facebook/internal/v;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/facebook/t;->b:Lcom/facebook/internal/v;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/facebook/y;

    if-nez v0, :cond_11

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/facebook/t;->a:Ljava/io/OutputStream;

    check-cast v0, Lcom/facebook/y;

    invoke-direct {p0, p1, v1, v1}, Lcom/facebook/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "["

    new-array v2, v3, [Ljava/lang/Object;

    invoke-direct {p0, v1, v2}, Lcom/facebook/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Request;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-interface {v0, v1}, Lcom/facebook/y;->a(Lcom/facebook/Request;)V

    if-lez v2, :cond_4a

    const-string v1, ",%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-direct {p0, v1, v6}, Lcom/facebook/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_46
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_24

    :cond_4a
    const-string v1, "%s"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-direct {p0, v1, v6}, Lcom/facebook/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_46

    :cond_58
    const-string v0, "]"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lcom/facebook/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/t;->b:Lcom/facebook/internal/v;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/facebook/t;->b:Lcom/facebook/internal/v;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/internal/v;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_10
.end method
