.class public final Lcom/userzoom/l;
.super Ljava/io/OutputStream;


# static fields
.field private static final a:[B


# instance fields
.field private final b:Ljava/util/LinkedList;

.field private c:I

.field private d:[B

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/userzoom/l;->a:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/userzoom/l;-><init>(B)V

    return-void
.end method

.method public constructor <init>(B)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/userzoom/l;-><init>(C)V

    return-void
.end method

.method private constructor <init>(C)V
    .registers 3

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/userzoom/l;->b:Ljava/util/LinkedList;

    const/16 v0, 0x1f4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/userzoom/l;->d:[B

    return-void
.end method

.method private c()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/userzoom/l;->c:I

    iput v0, p0, Lcom/userzoom/l;->e:I

    iget-object v0, p0, Lcom/userzoom/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/userzoom/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    :cond_12
    return-void
.end method

.method private d()V
    .registers 4

    const/high16 v0, 0x4

    iget v1, p0, Lcom/userzoom/l;->c:I

    iget-object v2, p0, Lcom/userzoom/l;->d:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/userzoom/l;->c:I

    iget v1, p0, Lcom/userzoom/l;->c:I

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le v1, v0, :cond_25

    :goto_16
    iget-object v1, p0, Lcom/userzoom/l;->b:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/userzoom/l;->d:[B

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/userzoom/l;->d:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/userzoom/l;->e:I

    return-void

    :cond_25
    move v0, v1

    goto :goto_16
.end method


# virtual methods
.method public final a()[B
    .registers 2

    invoke-direct {p0}, Lcom/userzoom/l;->c()V

    iget-object v0, p0, Lcom/userzoom/l;->d:[B

    return-object v0
.end method

.method public final a(I)[B
    .registers 9

    const/4 v2, 0x0

    iput p1, p0, Lcom/userzoom/l;->e:I

    iget v0, p0, Lcom/userzoom/l;->c:I

    iget v1, p0, Lcom/userzoom/l;->e:I

    add-int v4, v0, v1

    if-nez v4, :cond_e

    sget-object v0, Lcom/userzoom/l;->a:[B

    :goto_d
    return-object v0

    :cond_e
    new-array v3, v4, [B

    iget-object v0, p0, Lcom/userzoom/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v6, v0

    invoke-static {v0, v2, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v1, v6

    move v1, v0

    goto :goto_17

    :cond_2b
    iget-object v0, p0, Lcom/userzoom/l;->d:[B

    iget v5, p0, Lcom/userzoom/l;->e:I

    invoke-static {v0, v2, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/userzoom/l;->e:I

    add-int/2addr v0, v1

    if-eq v0, v4, :cond_5c

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Internal error: total len assumed to be "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", copied "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5c
    iget-object v0, p0, Lcom/userzoom/l;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_67

    invoke-direct {p0}, Lcom/userzoom/l;->c()V

    :cond_67
    move-object v0, v3

    goto :goto_d
.end method

.method public final b()[B
    .registers 2

    invoke-direct {p0}, Lcom/userzoom/l;->d()V

    iget-object v0, p0, Lcom/userzoom/l;->d:[B

    return-object v0
.end method

.method public final close()V
    .registers 1

    return-void
.end method

.method public final flush()V
    .registers 1

    return-void
.end method

.method public final write(I)V
    .registers 5

    iget v0, p0, Lcom/userzoom/l;->e:I

    iget-object v1, p0, Lcom/userzoom/l;->d:[B

    array-length v1, v1

    if-lt v0, v1, :cond_a

    invoke-direct {p0}, Lcom/userzoom/l;->d()V

    :cond_a
    iget-object v0, p0, Lcom/userzoom/l;->d:[B

    iget v1, p0, Lcom/userzoom/l;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/userzoom/l;->e:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public final write([B)V
    .registers 4

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/userzoom/l;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .registers 7

    :goto_0
    iget-object v0, p0, Lcom/userzoom/l;->d:[B

    array-length v0, v0

    iget v1, p0, Lcom/userzoom/l;->e:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v1, p0, Lcom/userzoom/l;->d:[B

    iget v2, p0, Lcom/userzoom/l;->e:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    iget v1, p0, Lcom/userzoom/l;->e:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/userzoom/l;->e:I

    sub-int/2addr p3, v0

    :cond_1a
    if-lez p3, :cond_20

    invoke-direct {p0}, Lcom/userzoom/l;->d()V

    goto :goto_0

    :cond_20
    return-void
.end method
