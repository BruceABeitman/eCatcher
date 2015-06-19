.class public Lcom/googlecode/mp4parser/boxes/mp4/a/d;
.super Ljava/lang/Object;
.source "BitWriterBuffer.java"


# static fields
.field static final synthetic c:Z


# instance fields
.field a:I

.field b:I

.field private d:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->c:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->b:I

    iput-object p1, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a:I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 9

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-boolean v0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->c:Z

    if-nez v0, :cond_2b

    shl-int v0, v1, p2

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    const-string v3, "Trying to write a value bigger (%s) than the number bits (%s) allows. Please mask the value before writing it and make your code is really working as intended."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    shl-int v2, v1, p2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2b
    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->b:I

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v3, v0, 0x8

    if-gt p2, v3, :cond_75

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->d:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a:I

    iget v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->b:I

    div-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    if-gez v0, :cond_44

    add-int/lit16 v0, v0, 0x100

    :cond_44
    sub-int/2addr v3, p2

    shl-int v3, p1, v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->d:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a:I

    iget v5, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->b:I

    div-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    const/16 v5, 0x7f

    if-le v0, v5, :cond_57

    add-int/lit16 v0, v0, -0x100

    :cond_57
    int-to-byte v0, v0

    invoke-virtual {v3, v4, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->b:I

    :goto_60
    iget-object v3, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->d:Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a:I

    iget v4, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->b:I

    div-int/lit8 v4, v4, 0x8

    add-int/2addr v4, v0

    iget v0, p0, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->b:I

    rem-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_85

    move v0, v1

    :goto_70
    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_75
    sub-int v0, p2, v3

    shr-int v4, p1, v0

    invoke-virtual {p0, v4, v3}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    shl-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p1

    invoke-virtual {p0, v3, v0}, Lcom/googlecode/mp4parser/boxes/mp4/a/d;->a(II)V

    goto :goto_60

    :cond_85
    move v0, v2

    goto :goto_70
.end method
