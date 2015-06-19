.class public Lcom/fasterxml/jackson/a/b/c;
.super Ljava/lang/Object;
.source "InputAccessor.java"

# interfaces
.implements Lcom/fasterxml/jackson/a/b/b;


# instance fields
.field protected final _buffer:[B

.field protected _bufferedEnd:I

.field protected final _bufferedStart:I

.field protected final _in:Ljava/io/InputStream;

.field protected _ptr:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[B)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    array-length v0, p1

    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    iput p2, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    iput p2, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    return-void
.end method


# virtual methods
.method public createMatcher$6e3aa73a(Lcom/fasterxml/jackson/a/e;I)Lcom/fasterxml/jackson/a/b/a;
    .registers 10

    new-instance v0, Lcom/fasterxml/jackson/a/b/a;

    iget-object v1, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    iget v3, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    iget v4, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    iget v5, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    sub-int/2addr v4, v5

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/a/b/a;-><init>(Ljava/io/InputStream;[BIILcom/fasterxml/jackson/a/e;I)V

    return-object v0
.end method

.method public hasMoreBytes()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    iget v3, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    if-ge v2, v3, :cond_9

    :goto_8
    return v0

    :cond_9
    iget-object v2, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    if-nez v2, :cond_f

    move v0, v1

    goto :goto_8

    :cond_f
    iget-object v2, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    sub-int/2addr v2, v3

    if-gtz v2, :cond_19

    move v0, v1

    goto :goto_8

    :cond_19
    iget-object v3, p0, Lcom/fasterxml/jackson/a/b/c;->_in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    iget v5, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    invoke-virtual {v3, v4, v5, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-gtz v2, :cond_27

    move v0, v1

    goto :goto_8

    :cond_27
    iget v1, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    goto :goto_8
.end method

.method public nextByte()B
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    iget v1, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedEnd:I

    if-lt v0, v1, :cond_36

    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/b/c;->hasMoreBytes()Z

    move-result v0

    if-nez v0, :cond_36

    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed auto-detect: could not read more than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes (max buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    iget-object v0, p0, Lcom/fasterxml/jackson/a/b/c;->_buffer:[B

    iget v1, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    aget-byte v0, v0, v1

    return v0
.end method

.method public reset()V
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/a/b/c;->_bufferedStart:I

    iput v0, p0, Lcom/fasterxml/jackson/a/b/c;->_ptr:I

    return-void
.end method
