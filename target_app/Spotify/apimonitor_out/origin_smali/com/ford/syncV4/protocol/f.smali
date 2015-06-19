.class public final Lcom/ford/syncV4/protocol/f;
.super Lcom/ford/syncV4/protocol/a;
.source "SourceFile"


# static fields
.field private static m:I

.field private static n:I


# instance fields
.field a:B

.field b:Z

.field c:[B

.field d:I

.field e:Lcom/ford/syncV4/protocol/d;

.field f:[B

.field g:I

.field h:I

.field i:I

.field j:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ford/syncV4/protocol/g;",
            ">;"
        }
    .end annotation
.end field

.field k:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ford/syncV4/protocol/g;",
            ">;>;"
        }
    .end annotation
.end field

.field l:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Byte;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    sput v0, Lcom/ford/syncV4/protocol/f;->m:I

    sget v0, Lcom/ford/syncV4/protocol/f;->m:I

    rsub-int v0, v0, 0x5dc

    sput v0, Lcom/ford/syncV4/protocol/f;->n:I

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v2}, Lcom/ford/syncV4/protocol/a;-><init>(Lcom/ford/syncV4/protocol/c;)V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/ford/syncV4/protocol/f;->a:B

    iput-boolean v1, p0, Lcom/ford/syncV4/protocol/f;->b:Z

    sget v0, Lcom/ford/syncV4/protocol/f;->m:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    iput v1, p0, Lcom/ford/syncV4/protocol/f;->d:I

    iput-object v2, p0, Lcom/ford/syncV4/protocol/f;->e:Lcom/ford/syncV4/protocol/d;

    iput-object v2, p0, Lcom/ford/syncV4/protocol/f;->f:[B

    iput v1, p0, Lcom/ford/syncV4/protocol/f;->g:I

    iput v1, p0, Lcom/ford/syncV4/protocol/f;->h:I

    iput v1, p0, Lcom/ford/syncV4/protocol/f;->i:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->j:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->k:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->l:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Lcom/ford/syncV4/protocol/c;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/ford/syncV4/protocol/a;-><init>(Lcom/ford/syncV4/protocol/c;)V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/ford/syncV4/protocol/f;->a:B

    iput-boolean v1, p0, Lcom/ford/syncV4/protocol/f;->b:Z

    sget v0, Lcom/ford/syncV4/protocol/f;->m:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    iput v1, p0, Lcom/ford/syncV4/protocol/f;->d:I

    iput-object v2, p0, Lcom/ford/syncV4/protocol/f;->e:Lcom/ford/syncV4/protocol/d;

    iput-object v2, p0, Lcom/ford/syncV4/protocol/f;->f:[B

    iput v1, p0, Lcom/ford/syncV4/protocol/f;->g:I

    iput v1, p0, Lcom/ford/syncV4/protocol/f;->h:I

    iput v1, p0, Lcom/ford/syncV4/protocol/f;->i:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->j:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->k:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->l:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic a()I
    .registers 1

    sget v0, Lcom/ford/syncV4/protocol/f;->m:I

    return v0
.end method

.method private a(B)V
    .registers 3

    iput-byte p1, p0, Lcom/ford/syncV4/protocol/f;->a:B

    const/4 v0, 0x2

    if-ne p1, v0, :cond_16

    const/16 v0, 0xc

    sput v0, Lcom/ford/syncV4/protocol/f;->m:I

    sget v0, Lcom/ford/syncV4/protocol/f;->m:I

    rsub-int v0, v0, 0x5dc

    sput v0, Lcom/ford/syncV4/protocol/f;->n:I

    sget v0, Lcom/ford/syncV4/protocol/f;->m:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    :cond_15
    :goto_15
    return-void

    :cond_16
    const/4 v0, 0x1

    if-ne p1, v0, :cond_15

    const/16 v0, 0x8

    sput v0, Lcom/ford/syncV4/protocol/f;->m:I

    sget v0, Lcom/ford/syncV4/protocol/f;->m:I

    rsub-int v0, v0, 0x5dc

    sput v0, Lcom/ford/syncV4/protocol/f;->n:I

    sget v0, Lcom/ford/syncV4/protocol/f;->m:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    goto :goto_15
.end method

.method private a(Lcom/ford/syncV4/protocol/d;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/ford/syncV4/protocol/f;->a(Lcom/ford/syncV4/protocol/d;[BII)V

    return-void
.end method

.method static synthetic a(Lcom/ford/syncV4/protocol/f;Lcom/ford/syncV4/protocol/enums/d;B)V
    .registers 5

    iget-byte v0, p0, Lcom/ford/syncV4/protocol/f;->a:B

    new-instance v1, Lcom/ford/syncV4/protocol/d;

    invoke-direct {v1}, Lcom/ford/syncV4/protocol/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/ford/syncV4/protocol/d;->a(B)V

    sget-object v0, Lcom/ford/syncV4/protocol/enums/b;->b:Lcom/ford/syncV4/protocol/enums/b;

    invoke-virtual {v1, v0}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/b;)V

    invoke-virtual {v1, p1}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/d;)V

    invoke-virtual {v1, p2}, Lcom/ford/syncV4/protocol/d;->c(B)V

    sget-object v0, Lcom/ford/syncV4/protocol/enums/a;->b:Lcom/ford/syncV4/protocol/enums/a;

    invoke-virtual {v0}, Lcom/ford/syncV4/protocol/enums/a;->c()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ford/syncV4/protocol/d;->b(B)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/ford/syncV4/protocol/d;->b(I)V

    invoke-direct {p0, v1}, Lcom/ford/syncV4/protocol/f;->a(Lcom/ford/syncV4/protocol/d;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/ford/syncV4/protocol/e;)V
    .registers 15

    const/16 v9, 0xc

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/ford/syncV4/protocol/e;->c(B)V

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->e()Lcom/ford/syncV4/protocol/enums/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->b()B

    move-result v8

    iget-byte v0, p0, Lcom/ford/syncV4/protocol/f;->a:B

    const/4 v2, 0x1

    if-le v0, v2, :cond_9d

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->d()[B

    move-result-object v0

    if-eqz v0, :cond_94

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->d()[B

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    sget-object v1, Lcom/ford/syncV4/protocol/enums/d;->c:Lcom/ford/syncV4/protocol/enums/d;

    :goto_29
    new-instance v2, Lcom/ford/syncV4/protocol/b;

    invoke-direct {v2}, Lcom/ford/syncV4/protocol/b;-><init>()V

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->f()B

    move-result v2

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->g()I

    move-result v3

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->h()I

    move-result v5

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->i()I

    move-result v6

    new-instance v7, Lcom/ford/syncV4/protocol/b;

    invoke-direct {v7}, Lcom/ford/syncV4/protocol/b;-><init>()V

    invoke-virtual {v7, v2}, Lcom/ford/syncV4/protocol/b;->a(B)V

    invoke-virtual {v7, v3}, Lcom/ford/syncV4/protocol/b;->a(I)V

    invoke-virtual {v7, v5}, Lcom/ford/syncV4/protocol/b;->b(I)V

    invoke-virtual {v7, v6}, Lcom/ford/syncV4/protocol/b;->c(I)V

    invoke-virtual {v7}, Lcom/ford/syncV4/protocol/b;->a()[B

    move-result-object v2

    invoke-static {v2, v4, v0, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->c()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->i()I

    move-result v3

    invoke-static {v2, v4, v0, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->d()[B

    move-result-object v2

    if-eqz v2, :cond_79

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->d()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->i()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->d()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_79
    :goto_79
    iget-object v2, p0, Lcom/ford/syncV4/protocol/f;->l:Ljava/util/Hashtable;

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_a2

    const-string v0, "Error sending protocol message to SYNC."

    new-instance v1, Lcom/ford/syncV4/exception/SyncException;

    const-string v2, "Attempt to send protocol message prior to startSession ACK."

    sget-object v3, Lcom/ford/syncV4/exception/SyncExceptionCause;->m:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v1, v2, v3}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_93
    return-void

    :cond_94
    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0xc

    new-array v0, v0, [B

    goto :goto_29

    :cond_9d
    invoke-virtual {p1}, Lcom/ford/syncV4/protocol/e;->c()[B

    move-result-object v0

    goto :goto_79

    :cond_a2
    monitor-enter v9

    :try_start_a3
    array-length v2, v0

    sget v3, Lcom/ford/syncV4/protocol/f;->n:I

    if-le v2, v3, :cond_13d

    iget v2, p0, Lcom/ford/syncV4/protocol/f;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ford/syncV4/protocol/f;->i:I

    iget v2, p0, Lcom/ford/syncV4/protocol/f;->i:I

    iget-byte v3, p0, Lcom/ford/syncV4/protocol/f;->a:B

    new-instance v5, Lcom/ford/syncV4/protocol/d;

    invoke-direct {v5}, Lcom/ford/syncV4/protocol/d;-><init>()V

    invoke-virtual {v5, v3}, Lcom/ford/syncV4/protocol/d;->a(B)V

    sget-object v3, Lcom/ford/syncV4/protocol/enums/b;->d:Lcom/ford/syncV4/protocol/enums/b;

    invoke-virtual {v5, v3}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/b;)V

    invoke-virtual {v5, v1}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/d;)V

    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/ford/syncV4/protocol/d;->b(B)V

    invoke-virtual {v5, v8}, Lcom/ford/syncV4/protocol/d;->c(B)V

    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Lcom/ford/syncV4/protocol/d;->a(I)V

    invoke-virtual {v5, v2}, Lcom/ford/syncV4/protocol/d;->b(I)V

    array-length v2, v0

    sget v3, Lcom/ford/syncV4/protocol/f;->n:I

    div-int/2addr v2, v3

    array-length v3, v0

    sget v6, Lcom/ford/syncV4/protocol/f;->n:I

    rem-int/2addr v3, v6

    if-lez v3, :cond_170

    add-int/lit8 v2, v2, 0x1

    move v7, v2

    :goto_de
    const/16 v2, 0x8

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v3}, Lcom/ford/syncV4/util/a;->a(I)[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v3, v6, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lcom/ford/syncV4/util/a;->a(I)[B

    move-result-object v3

    const/4 v6, 0x0

    const/4 v10, 0x4

    const/4 v11, 0x4

    invoke-static {v3, v6, v2, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    const/16 v6, 0x8

    invoke-virtual {p0, v5, v2, v3, v6}, Lcom/ford/syncV4/protocol/f;->a(Lcom/ford/syncV4/protocol/d;[BII)V

    move v5, v4

    move v6, v4

    :goto_ff
    if-ge v5, v7, :cond_16a

    add-int/lit8 v2, v7, -0x1

    if-ge v5, v2, :cond_13b

    add-int/lit8 v2, v5, 0x1

    int-to-byte v2, v2

    move v3, v2

    :goto_109
    array-length v2, v0

    sub-int/2addr v2, v6

    sget v10, Lcom/ford/syncV4/protocol/f;->n:I

    if-le v2, v10, :cond_111

    sget v2, Lcom/ford/syncV4/protocol/f;->n:I

    :cond_111
    iget v10, p0, Lcom/ford/syncV4/protocol/f;->i:I

    iget-byte v11, p0, Lcom/ford/syncV4/protocol/f;->a:B

    new-instance v12, Lcom/ford/syncV4/protocol/d;

    invoke-direct {v12}, Lcom/ford/syncV4/protocol/d;-><init>()V

    invoke-virtual {v12, v11}, Lcom/ford/syncV4/protocol/d;->a(B)V

    sget-object v11, Lcom/ford/syncV4/protocol/enums/b;->e:Lcom/ford/syncV4/protocol/enums/b;

    invoke-virtual {v12, v11}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/b;)V

    invoke-virtual {v12, v1}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/d;)V

    invoke-virtual {v12, v3}, Lcom/ford/syncV4/protocol/d;->b(B)V

    invoke-virtual {v12, v8}, Lcom/ford/syncV4/protocol/d;->c(B)V

    invoke-virtual {v12, v2}, Lcom/ford/syncV4/protocol/d;->a(I)V

    invoke-virtual {v12, v10}, Lcom/ford/syncV4/protocol/d;->b(I)V

    invoke-virtual {p0, v12, v0, v6, v2}, Lcom/ford/syncV4/protocol/f;->a(Lcom/ford/syncV4/protocol/d;[BII)V

    add-int v3, v6, v2

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move v6, v3

    goto :goto_ff

    :cond_13b
    move v3, v4

    goto :goto_109

    :cond_13d
    iget v2, p0, Lcom/ford/syncV4/protocol/f;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ford/syncV4/protocol/f;->i:I

    array-length v2, v0

    iget v3, p0, Lcom/ford/syncV4/protocol/f;->i:I

    iget-byte v4, p0, Lcom/ford/syncV4/protocol/f;->a:B

    new-instance v5, Lcom/ford/syncV4/protocol/d;

    invoke-direct {v5}, Lcom/ford/syncV4/protocol/d;-><init>()V

    invoke-virtual {v5, v4}, Lcom/ford/syncV4/protocol/d;->a(B)V

    sget-object v4, Lcom/ford/syncV4/protocol/enums/b;->c:Lcom/ford/syncV4/protocol/enums/b;

    invoke-virtual {v5, v4}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/b;)V

    invoke-virtual {v5, v1}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/d;)V

    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Lcom/ford/syncV4/protocol/d;->b(B)V

    invoke-virtual {v5, v8}, Lcom/ford/syncV4/protocol/d;->c(B)V

    invoke-virtual {v5, v2}, Lcom/ford/syncV4/protocol/d;->a(I)V

    invoke-virtual {v5, v3}, Lcom/ford/syncV4/protocol/d;->b(I)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v5, v0, v1, v2}, Lcom/ford/syncV4/protocol/f;->a(Lcom/ford/syncV4/protocol/d;[BII)V

    :cond_16a
    monitor-exit v9
    :try_end_16b
    .catchall {:try_start_a3 .. :try_end_16b} :catchall_16d

    goto/16 :goto_93

    :catchall_16d
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_170
    move v7, v2

    goto/16 :goto_de
.end method

.method public final a(Lcom/ford/syncV4/protocol/enums/d;)V
    .registers 4

    iget-byte v0, p0, Lcom/ford/syncV4/protocol/f;->a:B

    new-instance v1, Lcom/ford/syncV4/protocol/d;

    invoke-direct {v1}, Lcom/ford/syncV4/protocol/d;-><init>()V

    invoke-virtual {v1, v0}, Lcom/ford/syncV4/protocol/d;->a(B)V

    sget-object v0, Lcom/ford/syncV4/protocol/enums/b;->b:Lcom/ford/syncV4/protocol/enums/b;

    invoke-virtual {v1, v0}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/b;)V

    invoke-virtual {v1, p1}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/d;)V

    sget-object v0, Lcom/ford/syncV4/protocol/enums/a;->a:Lcom/ford/syncV4/protocol/enums/a;

    invoke-virtual {v0}, Lcom/ford/syncV4/protocol/enums/a;->c()B

    move-result v0

    invoke-virtual {v1, v0}, Lcom/ford/syncV4/protocol/d;->b(B)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/ford/syncV4/protocol/d;->b(I)V

    invoke-direct {p0, v1}, Lcom/ford/syncV4/protocol/f;->a(Lcom/ford/syncV4/protocol/d;)V

    return-void
.end method

.method public final a(Lcom/ford/syncV4/protocol/enums/d;B)V
    .registers 6

    iget v0, p0, Lcom/ford/syncV4/protocol/f;->h:I

    iget-byte v1, p0, Lcom/ford/syncV4/protocol/f;->a:B

    new-instance v2, Lcom/ford/syncV4/protocol/d;

    invoke-direct {v2}, Lcom/ford/syncV4/protocol/d;-><init>()V

    invoke-virtual {v2, v1}, Lcom/ford/syncV4/protocol/d;->a(B)V

    sget-object v1, Lcom/ford/syncV4/protocol/enums/b;->b:Lcom/ford/syncV4/protocol/enums/b;

    invoke-virtual {v2, v1}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/b;)V

    invoke-virtual {v2, p1}, Lcom/ford/syncV4/protocol/d;->a(Lcom/ford/syncV4/protocol/enums/d;)V

    invoke-virtual {v2, p2}, Lcom/ford/syncV4/protocol/d;->c(B)V

    sget-object v1, Lcom/ford/syncV4/protocol/enums/a;->d:Lcom/ford/syncV4/protocol/enums/a;

    invoke-virtual {v1}, Lcom/ford/syncV4/protocol/enums/a;->c()B

    move-result v1

    invoke-virtual {v2, v1}, Lcom/ford/syncV4/protocol/d;->b(B)V

    invoke-virtual {v2, v0}, Lcom/ford/syncV4/protocol/d;->b(I)V

    invoke-direct {p0, v2}, Lcom/ford/syncV4/protocol/f;->a(Lcom/ford/syncV4/protocol/d;)V

    return-void
.end method

.method public final a([BI)V
    .registers 13

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    :goto_4
    iget-byte v0, p0, Lcom/ford/syncV4/protocol/f;->a:B

    if-ne v0, v7, :cond_16

    iget v0, p0, Lcom/ford/syncV4/protocol/f;->d:I

    if-nez v0, :cond_30

    aget-byte v0, p1, v1

    ushr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-le v0, v7, :cond_30

    invoke-direct {p0, v8}, Lcom/ford/syncV4/protocol/f;->a(B)V

    :cond_16
    :goto_16
    iget-boolean v0, p0, Lcom/ford/syncV4/protocol/f;->b:Z

    if-nez v0, :cond_274

    iget-object v0, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    array-length v0, v0

    iget v2, p0, Lcom/ford/syncV4/protocol/f;->d:I

    sub-int v2, v0, v2

    if-ge p2, v2, :cond_51

    iget-object v0, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    iget v2, p0, Lcom/ford/syncV4/protocol/f;->d:I

    invoke-static {p1, v1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/ford/syncV4/protocol/f;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ford/syncV4/protocol/f;->d:I

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    aget-byte v0, v0, v1

    ushr-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    if-le v0, v7, :cond_43

    iget v0, p0, Lcom/ford/syncV4/protocol/f;->d:I

    iget-object v0, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    invoke-direct {p0, v8}, Lcom/ford/syncV4/protocol/f;->a(B)V

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    goto :goto_16

    :cond_43
    iget-byte v0, p0, Lcom/ford/syncV4/protocol/f;->a:B

    if-ne v0, v7, :cond_16

    sget v0, Lcom/ford/syncV4/protocol/f;->m:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_16

    invoke-direct {p0, v7}, Lcom/ford/syncV4/protocol/f;->a(B)V

    goto :goto_16

    :cond_51
    iget-object v0, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    iget v3, p0, Lcom/ford/syncV4/protocol/f;->d:I

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/ford/syncV4/protocol/f;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ford/syncV4/protocol/f;->d:I

    add-int/lit8 v0, v2, 0x0

    iput-boolean v7, p0, Lcom/ford/syncV4/protocol/f;->b:Z

    iget-object v3, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    invoke-static {v3}, Lcom/ford/syncV4/protocol/d;->a([B)Lcom/ford/syncV4/protocol/d;

    move-result-object v3

    iput-object v3, p0, Lcom/ford/syncV4/protocol/f;->e:Lcom/ford/syncV4/protocol/d;

    iget-object v3, p0, Lcom/ford/syncV4/protocol/f;->e:Lcom/ford/syncV4/protocol/d;

    invoke-virtual {v3}, Lcom/ford/syncV4/protocol/d;->f()I

    move-result v3

    const/16 v4, 0xfa0

    if-gt v3, v4, :cond_11e

    new-array v2, v3, [B

    iput-object v2, p0, Lcom/ford/syncV4/protocol/f;->f:[B

    iput v1, p0, Lcom/ford/syncV4/protocol/f;->g:I

    :goto_79
    iget-object v2, p0, Lcom/ford/syncV4/protocol/f;->f:[B

    if-nez v2, :cond_1e3

    const-string v1, "HandleReceivedBytes"

    const-string v2, "Error: Databuffer is null, logging debug info."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_84
    const-string v1, "HandleReceivedBytes"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_headerBuf: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HandleReceivedBytes"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_currentHeader: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ford/syncV4/protocol/f;->e:Lcom/ford/syncV4/protocol/d;

    invoke-virtual {v3}, Lcom/ford/syncV4/protocol/d;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HandleReceivedBytes"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receivedBytes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HandleReceivedBytes"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receivedBytesReadPos: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HandleReceivedBytes"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "receivedBytesLength: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HandleReceivedBytes"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_headerBufWritePos: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/ford/syncV4/protocol/f;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10e
    .catch Ljava/lang/NullPointerException; {:try_start_84 .. :try_end_10e} :catch_1cc

    :goto_10e
    const-string v0, "Error handling protocol message from sync, header invalid."

    new-instance v1, Lcom/ford/syncV4/exception/SyncException;

    const-string v2, "Error handling protocol message from sync, data buffer is null."

    sget-object v3, Lcom/ford/syncV4/exception/SyncExceptionCause;->o:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v1, v2, v3}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2f

    :cond_11e
    const-string v1, "HandleReceivedBytes"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Corrupt header found, request to allocate a byte array of size: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HandleReceivedBytes"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_headerBuf: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HandleReceivedBytes"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_currentHeader: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ford/syncV4/protocol/f;->e:Lcom/ford/syncV4/protocol/d;

    invoke-virtual {v4}, Lcom/ford/syncV4/protocol/d;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HandleReceivedBytes"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "receivedBytes: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HandleReceivedBytes"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "receivedBytesReadPos: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HandleReceivedBytes"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_headerBufWritePos: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/ford/syncV4/protocol/f;->d:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HandleReceivedBytes"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "headerBytesNeeded: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Error handling protocol message from sync, header invalid."

    new-instance v1, Lcom/ford/syncV4/exception/SyncException;

    const-string v2, "Error handling protocol message from sync, header invalid."

    sget-object v3, Lcom/ford/syncV4/exception/SyncExceptionCause;->n:Lcom/ford/syncV4/exception/SyncExceptionCause;

    invoke-direct {v1, v2, v3}, Lcom/ford/syncV4/exception/SyncException;-><init>(Ljava/lang/String;Lcom/ford/syncV4/exception/SyncExceptionCause;)V

    invoke-virtual {p0, v0, v1}, Lcom/ford/syncV4/protocol/f;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2f

    :catch_1cc
    move-exception v0

    const-string v1, "HandleReceivedBytes"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Null Pointer Encountered: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10e

    :cond_1e3
    sub-int v2, p2, v0

    iget-object v3, p0, Lcom/ford/syncV4/protocol/f;->f:[B

    array-length v3, v3

    iget v4, p0, Lcom/ford/syncV4/protocol/f;->g:I

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1fb

    iget-object v1, p0, Lcom/ford/syncV4/protocol/f;->f:[B

    iget v3, p0, Lcom/ford/syncV4/protocol/f;->g:I

    invoke-static {p1, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/ford/syncV4/protocol/f;->g:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/ford/syncV4/protocol/f;->g:I

    goto/16 :goto_2f

    :cond_1fb
    iget-object v2, p0, Lcom/ford/syncV4/protocol/f;->f:[B

    iget v4, p0, Lcom/ford/syncV4/protocol/f;->g:I

    invoke-static {p1, v0, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v2, v0, v3

    iget-object v3, p0, Lcom/ford/syncV4/protocol/f;->e:Lcom/ford/syncV4/protocol/d;

    iget-object v0, p0, Lcom/ford/syncV4/protocol/f;->k:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Byte;

    invoke-virtual {v3}, Lcom/ford/syncV4/protocol/d;->e()B

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    if-nez v0, :cond_22c

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iget-object v4, p0, Lcom/ford/syncV4/protocol/f;->k:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Byte;

    invoke-virtual {v3}, Lcom/ford/syncV4/protocol/d;->e()B

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22c
    iget-object v0, p0, Lcom/ford/syncV4/protocol/f;->j:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/ford/syncV4/protocol/d;->g()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ford/syncV4/protocol/g;

    if-nez v0, :cond_252

    new-instance v0, Lcom/ford/syncV4/protocol/g;

    invoke-direct {v0, p0}, Lcom/ford/syncV4/protocol/g;-><init>(Lcom/ford/syncV4/protocol/f;)V

    iget-object v4, p0, Lcom/ford/syncV4/protocol/f;->j:Ljava/util/Hashtable;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/ford/syncV4/protocol/d;->g()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_252
    iget-object v3, p0, Lcom/ford/syncV4/protocol/f;->e:Lcom/ford/syncV4/protocol/d;

    iget-object v4, p0, Lcom/ford/syncV4/protocol/f;->f:[B

    invoke-static {v3, v4, v0}, Lcom/ford/syncV4/protocol/f;->a(Lcom/ford/syncV4/protocol/d;[BLcom/ford/syncV4/protocol/g;)V

    iput-object v9, p0, Lcom/ford/syncV4/protocol/f;->f:[B

    iput v1, p0, Lcom/ford/syncV4/protocol/f;->g:I

    iput-boolean v1, p0, Lcom/ford/syncV4/protocol/f;->b:Z

    sget v0, Lcom/ford/syncV4/protocol/f;->m:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ford/syncV4/protocol/f;->c:[B

    iput-object v9, p0, Lcom/ford/syncV4/protocol/f;->e:Lcom/ford/syncV4/protocol/d;

    iput v1, p0, Lcom/ford/syncV4/protocol/f;->d:I

    sub-int/2addr p2, v2

    if-lez p2, :cond_2f

    new-array v0, p2, [B

    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    goto/16 :goto_4

    :cond_274
    move v0, v1

    goto/16 :goto_79
.end method
