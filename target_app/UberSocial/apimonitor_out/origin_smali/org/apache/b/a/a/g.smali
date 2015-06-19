.class public Lorg/apache/b/a/a/g;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# static fields
.field private static final a:[B


# instance fields
.field private b:I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lorg/apache/b/a/a/g;->a:[B

    return-void

    nop

    :array_a
    .array-data 0x1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/b/a/a/g;->b:I

    const/16 v0, 0x4c

    iput v0, p0, Lorg/apache/b/a/a/g;->c:I

    iput p2, p0, Lorg/apache/b/a/a/g;->c:I

    return-void
.end method


# virtual methods
.method public final write(I)V
    .registers 4

    iget v0, p0, Lorg/apache/b/a/a/g;->b:I

    iget v1, p0, Lorg/apache/b/a/a/g;->c:I

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lorg/apache/b/a/a/g;->out:Ljava/io/OutputStream;

    sget-object v1, Lorg/apache/b/a/a/g;->a:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/b/a/a/g;->b:I

    :cond_10
    iget-object v0, p0, Lorg/apache/b/a/a/g;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    iget v0, p0, Lorg/apache/b/a/a/g;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/b/a/a/g;->b:I

    return-void
.end method

.method public final write([BII)V
    .registers 9

    const/4 v2, 0x0

    move v0, p3

    move v1, p2

    :goto_3
    if-lez v0, :cond_30

    iget v3, p0, Lorg/apache/b/a/a/g;->b:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/apache/b/a/a/g;->c:I

    if-le v3, v4, :cond_24

    iget v3, p0, Lorg/apache/b/a/a/g;->c:I

    iget v4, p0, Lorg/apache/b/a/a/g;->b:I

    sub-int/2addr v3, v4

    if-lez v3, :cond_1a

    iget-object v4, p0, Lorg/apache/b/a/a/g;->out:Ljava/io/OutputStream;

    invoke-virtual {v4, p1, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v1, v3

    sub-int/2addr v0, v3

    :cond_1a
    iget-object v3, p0, Lorg/apache/b/a/a/g;->out:Ljava/io/OutputStream;

    sget-object v4, Lorg/apache/b/a/a/g;->a:[B

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    iput v2, p0, Lorg/apache/b/a/a/g;->b:I

    goto :goto_3

    :cond_24
    iget-object v3, p0, Lorg/apache/b/a/a/g;->out:Ljava/io/OutputStream;

    invoke-virtual {v3, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    iget v3, p0, Lorg/apache/b/a/a/g;->b:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/b/a/a/g;->b:I

    move v0, v2

    goto :goto_3

    :cond_30
    return-void
.end method
