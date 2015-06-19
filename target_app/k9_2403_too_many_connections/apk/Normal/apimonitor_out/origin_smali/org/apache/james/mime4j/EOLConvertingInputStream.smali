.class public Lorg/apache/james/mime4j/EOLConvertingInputStream;
.super Ljava/io/InputStream;
.source "EOLConvertingInputStream.java"


# static fields
.field public static final CONVERT_BOTH:I = 0x3

.field public static final CONVERT_CR:I = 0x1

.field public static final CONVERT_LF:I = 0x2


# instance fields
.field private flags:I

.field private in:Ljava/io/PushbackInputStream;

.field private previous:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/EOLConvertingInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    new-instance v0, Ljava/io/PushbackInputStream;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    iput p2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v0}, Ljava/io/PushbackInputStream;->close()V

    return-void
.end method

.method public read()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0xd

    const/4 v4, -0x1

    const/16 v3, 0xa

    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    if-ne v0, v4, :cond_f

    move v2, v4

    :goto_e
    return v2

    :cond_f
    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2f

    if-ne v0, v5, :cond_2f

    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v1

    if-eq v1, v4, :cond_24

    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v1}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_24
    if-eq v1, v3, :cond_2b

    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    :cond_2b
    :goto_2b
    iput v0, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    move v2, v0

    goto :goto_e

    :cond_2f
    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2b

    if-ne v0, v3, :cond_2b

    iget v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->previous:I

    if-eq v2, v5, :cond_2b

    const/16 v0, 0xd

    iget-object v2, p0, Lorg/apache/james/mime4j/EOLConvertingInputStream;->in:Ljava/io/PushbackInputStream;

    invoke-virtual {v2, v3}, Ljava/io/PushbackInputStream;->unread(I)V

    goto :goto_2b
.end method
