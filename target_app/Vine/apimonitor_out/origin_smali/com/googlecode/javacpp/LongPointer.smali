.class public Lcom/googlecode/javacpp/LongPointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "LongPointer.java"


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    :try_start_3
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/LongPointer;->allocateArray(I)V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_6} :catch_7

    return-void

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "No native JavaCPP library in memory. (Has Loader.load() been called?)"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/LongBuffer;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;-><init>(Ljava/nio/Buffer;)V

    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->hasArray()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->array()[J

    move-result-object v0

    array-length v1, v0

    invoke-direct {p0, v1}, Lcom/googlecode/javacpp/LongPointer;->allocateArray(I)V

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/LongPointer;->put([J)Lcom/googlecode/javacpp/LongPointer;

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->position()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/LongPointer;->position(I)Lcom/googlecode/javacpp/LongPointer;

    invoke-virtual {p1}, Ljava/nio/LongBuffer;->limit()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/LongPointer;->limit(I)Lcom/googlecode/javacpp/LongPointer;

    :cond_24
    return-void
.end method

.method public varargs constructor <init>([J)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/LongPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/LongPointer;->put([J)Lcom/googlecode/javacpp/LongPointer;

    return-void
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic asBuffer()Ljava/nio/Buffer;
    .registers 2

    invoke-virtual {p0}, Lcom/googlecode/javacpp/LongPointer;->asBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final asBuffer()Ljava/nio/LongBuffer;
    .registers 2

    invoke-virtual {p0}, Lcom/googlecode/javacpp/LongPointer;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    return-object v0
.end method

.method public capacity(I)Lcom/googlecode/javacpp/LongPointer;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/LongPointer;

    return-object v0
.end method

.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/LongPointer;->capacity(I)Lcom/googlecode/javacpp/LongPointer;

    move-result-object v0

    return-object v0
.end method

.method public get()J
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/LongPointer;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public native get(I)J
.end method

.method public get([J)Lcom/googlecode/javacpp/LongPointer;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/LongPointer;->get([JII)Lcom/googlecode/javacpp/LongPointer;

    move-result-object v0

    return-object v0
.end method

.method public native get([JII)Lcom/googlecode/javacpp/LongPointer;
.end method

.method public limit(I)Lcom/googlecode/javacpp/LongPointer;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/LongPointer;

    return-object v0
.end method

.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/LongPointer;->limit(I)Lcom/googlecode/javacpp/LongPointer;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacpp/LongPointer;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/LongPointer;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/LongPointer;->position(I)Lcom/googlecode/javacpp/LongPointer;

    move-result-object v0

    return-object v0
.end method

.method public native put(IJ)Lcom/googlecode/javacpp/LongPointer;
.end method

.method public put(J)Lcom/googlecode/javacpp/LongPointer;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/googlecode/javacpp/LongPointer;->put(IJ)Lcom/googlecode/javacpp/LongPointer;

    move-result-object v0

    return-object v0
.end method

.method public put([J)Lcom/googlecode/javacpp/LongPointer;
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/googlecode/javacpp/LongPointer;->put([JII)Lcom/googlecode/javacpp/LongPointer;

    move-result-object v0

    return-object v0
.end method

.method public native put([JII)Lcom/googlecode/javacpp/LongPointer;
.end method
