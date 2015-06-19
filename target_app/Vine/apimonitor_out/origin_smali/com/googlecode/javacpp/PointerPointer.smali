.class public Lcom/googlecode/javacpp/PointerPointer;
.super Lcom/googlecode/javacpp/Pointer;
.source "PointerPointer.java"


# instance fields
.field private pointerArray:[Lcom/googlecode/javacpp/Pointer;


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;-><init>()V

    :try_start_3
    invoke-direct {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->allocateArray(I)V
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

.method public varargs constructor <init>([Lcom/googlecode/javacpp/Pointer;)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[B)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[B)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[C)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[C)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[D)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[D)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[F)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[F)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[I)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[I)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[J)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[J)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method public varargs constructor <init>([[S)V
    .registers 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put([[S)Lcom/googlecode/javacpp/PointerPointer;

    return-void
.end method

.method private native allocateArray(I)V
.end method


# virtual methods
.method public bridge synthetic capacity(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->capacity(I)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v0

    return-object v0
.end method

.method public capacity(I)Lcom/googlecode/javacpp/PointerPointer;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->capacity(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/PointerPointer;

    return-object v0
.end method

.method public get()Lcom/googlecode/javacpp/Pointer;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/PointerPointer;->get(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    return-object v0
.end method

.method public native get(I)Lcom/googlecode/javacpp/Pointer;
.end method

.method public bridge synthetic limit(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->limit(I)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v0

    return-object v0
.end method

.method public limit(I)Lcom/googlecode/javacpp/PointerPointer;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->limit(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/PointerPointer;

    return-object v0
.end method

.method public bridge synthetic position(I)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->position(I)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v0

    return-object v0
.end method

.method public position(I)Lcom/googlecode/javacpp/PointerPointer;
    .registers 3

    invoke-super {p0, p1}, Lcom/googlecode/javacpp/Pointer;->position(I)Lcom/googlecode/javacpp/Pointer;

    move-result-object v0

    check-cast v0, Lcom/googlecode/javacpp/PointerPointer;

    return-object v0
.end method

.method public bridge synthetic put(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v0

    return-object v0
.end method

.method public native put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;
.end method

.method public put(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/googlecode/javacpp/PointerPointer;->put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v0

    return-object v0
.end method

.method public varargs put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_c

    aget-object v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put(ILcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    return-object p0
.end method

.method public varargs put([[B)Lcom/googlecode/javacpp/PointerPointer;
    .registers 6

    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/BytePointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/BytePointer;-><init>([B)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[C)Lcom/googlecode/javacpp/PointerPointer;
    .registers 6

    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/CharPointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/CharPointer;-><init>([C)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[D)Lcom/googlecode/javacpp/PointerPointer;
    .registers 6

    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/DoublePointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/DoublePointer;-><init>([D)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[F)Lcom/googlecode/javacpp/PointerPointer;
    .registers 6

    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/FloatPointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/FloatPointer;-><init>([F)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[I)Lcom/googlecode/javacpp/PointerPointer;
    .registers 6

    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/IntPointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/IntPointer;-><init>([I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[J)Lcom/googlecode/javacpp/PointerPointer;
    .registers 6

    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/LongPointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/LongPointer;-><init>([J)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method

.method public varargs put([[S)Lcom/googlecode/javacpp/PointerPointer;
    .registers 6

    array-length v1, p1

    new-array v1, v1, [Lcom/googlecode/javacpp/Pointer;

    iput-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    const/4 v0, 0x0

    :goto_6
    array-length v1, p1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    new-instance v2, Lcom/googlecode/javacpp/ShortPointer;

    aget-object v3, p1, v0

    invoke-direct {v2, v3}, Lcom/googlecode/javacpp/ShortPointer;-><init>([S)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/googlecode/javacpp/PointerPointer;->pointerArray:[Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/PointerPointer;->put([Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/PointerPointer;

    move-result-object v1

    return-object v1
.end method
