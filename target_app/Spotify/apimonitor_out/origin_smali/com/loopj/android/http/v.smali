.class final Lcom/loopj/android/http/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/io/File;

.field public b:[B

.field final synthetic c:Lcom/loopj/android/http/u;


# direct methods
.method public constructor <init>(Lcom/loopj/android/http/u;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/loopj/android/http/v;->c:Lcom/loopj/android/http/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p5

    :cond_f
    invoke-direct {p0, p2, p5, p4}, Lcom/loopj/android/http/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/v;->b:[B

    iput-object p3, p0, Lcom/loopj/android/http/v;->a:Ljava/io/File;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 8

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_5
    iget-object v0, p0, Lcom/loopj/android/http/v;->c:Lcom/loopj/android/http/u;

    invoke-static {v0}, Lcom/loopj/android/http/u;->a(Lcom/loopj/android/http/u;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/loopj/android/http/v;->c:Lcom/loopj/android/http/u;

    invoke-static {p1, p2}, Lcom/loopj/android/http/u;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, p0, Lcom/loopj/android/http/v;->c:Lcom/loopj/android/http/u;

    invoke-static {p3}, Lcom/loopj/android/http/u;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {}, Lcom/loopj/android/http/u;->a()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-static {}, Lcom/loopj/android/http/u;->b()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2e} :catch_33

    :goto_2e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_33
    move-exception v0

    const-string v2, "SimpleMultipartEntity"

    const-string v3, "createHeader ByteArrayOutputStream exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e
.end method
