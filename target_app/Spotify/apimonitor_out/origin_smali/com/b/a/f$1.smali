.class final Lcom/b/a/f$1;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/f;->a()Ljava/lang/String;
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/f;


# direct methods
.method constructor <init>(Lcom/b/a/f;I)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/f$1;->a:Lcom/b/a/f;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lcom/b/a/f$1;->count:I

    if-lez v0, :cond_27

    iget-object v0, p0, Lcom/b/a/f$1;->buf:[B

    iget v1, p0, Lcom/b/a/f$1;->count:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_27

    iget v0, p0, Lcom/b/a/f$1;->count:I

    add-int/lit8 v0, v0, -0x1

    :goto_14
    :try_start_14
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/f$1;->buf:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/b/a/f$1;->a:Lcom/b/a/f;

    invoke-static {v4}, Lcom/b/a/f;->a(Lcom/b/a/f;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_26
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_26} :catch_2a

    return-object v1

    :cond_27
    iget v0, p0, Lcom/b/a/f$1;->count:I

    goto :goto_14

    :catch_2a
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
