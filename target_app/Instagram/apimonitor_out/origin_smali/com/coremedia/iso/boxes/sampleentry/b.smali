.class public final Lcom/coremedia/iso/boxes/sampleentry/b;
.super Ljava/lang/Object;
.source "TextSampleEntry.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->f:[I

    return-void

    :array_c
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public final a(Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->a:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->b:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->c:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->d:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->e:I

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->f:[I

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->f:[I

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->f:[I

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->f:[I

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->f:[I

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    aput v2, v0, v1

    return-void
.end method

.method public final b(Ljava/nio/ByteBuffer;)V
    .registers 4

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->a:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->b:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->c:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->d:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->e:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->f:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->f:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->f:[I

    const/4 v1, 0x2

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/b;->f:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    return-void
.end method
