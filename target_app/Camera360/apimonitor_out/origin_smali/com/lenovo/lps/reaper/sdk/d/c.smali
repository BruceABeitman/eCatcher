.class public final Lcom/lenovo/lps/reaper/sdk/d/c;
.super Ljava/lang/Object;


# static fields
.field private static final k:[C


# instance fields
.field private a:J

.field private b:[I

.field private c:[I

.field private d:[I

.field private e:Ljava/nio/ByteBuffer;

.field private f:J

.field private g:J

.field private h:J

.field private i:I

.field private j:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "ReaperSDK"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/d/c;->k:[C

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->a:J

    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/d/c;->j()V

    return-void
.end method

.method private j()V
    .registers 8

    const/4 v1, 0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->a:J

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->h()[I

    move-result-object v2

    array-length v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    array-length v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    aput v6, v0, v6

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    aput v6, v0, v6

    move v0, v1

    :goto_21
    array-length v3, v2

    if-ge v0, v3, :cond_3e

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    add-int/lit8 v5, v0, -0x1

    aget v5, v2, v5

    add-int/2addr v4, v5

    aput v4, v3, v0

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    aget v4, v4, v0

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_3e
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->c:[I

    if-nez v0, :cond_60

    array-length v0, v2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->c:[I

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->c:[I

    aput v6, v0, v6

    :goto_4b
    array-length v0, v2

    if-ge v1, v0, :cond_60

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->c:[I

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->c:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    add-int/lit8 v4, v1, -0x1

    aget v4, v2, v4

    add-int/2addr v3, v4

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_60
    return-void
.end method


# virtual methods
.method public final a(Lcom/lenovo/lps/reaper/sdk/b/f;)I
    .registers 4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final a(Lcom/lenovo/lps/reaper/sdk/b/f;I)I
    .registers 7

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I

    move-result v1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/g/b;->h()[I

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->c:[I

    aget v3, v3, v1

    aget v2, v2, v1

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_1b

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->c:[I

    aget v0, v0, v1

    :cond_1b
    return v0
.end method

.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->l:Z

    return-void
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->i:I

    return-void
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->f:J

    return-void
.end method

.method public final a(Ljava/nio/ByteBuffer;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/lenovo/lps/reaper/sdk/d/c;->k:[C

    array-length v0, v0

    new-array v3, v0, [C

    move v0, v1

    :goto_8
    sget-object v4, Lcom/lenovo/lps/reaper/sdk/d/c;->k:[C

    array-length v4, v4

    if-ge v0, v4, :cond_1c

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v4

    aput-char v4, v3, v0

    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_1c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    const-string/jumbo v3, "ReaperSDK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/d/c;->j()V

    :goto_2d
    return v1

    :cond_2e
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    if-ne v0, v2, :cond_76

    :goto_34
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/g/b;->h()[I

    move-result-object v0

    array-length v0, v0

    if-ge v1, v0, :cond_52

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v0, v1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_52
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->a:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->i:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->f:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->g:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->h:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->j:I

    :cond_76
    move v1, v2

    goto :goto_2d
.end method

.method public final b(Lcom/lenovo/lps/reaper/sdk/b/f;)I
    .registers 4

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public final b(I)V
    .registers 2

    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->j:I

    return-void
.end method

.method public final b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->g:J

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->l:Z

    return v0
.end method

.method public final c(Lcom/lenovo/lps/reaper/sdk/b/f;)I
    .registers 6

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    aget v2, v2, v0

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/lps/reaper/sdk/d/c;->a(Lcom/lenovo/lps/reaper/sdk/b/f;I)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_42

    const-string/jumbo v1, "FileStorageMeta"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Drop record at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    aget v2, v2, v0

    invoke-virtual {p0, p1, v2}, Lcom/lenovo/lps/reaper/sdk/d/c;->a(Lcom/lenovo/lps/reaper/sdk/b/f;I)I

    move-result v2

    aput v2, v1, v0

    :cond_42
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    aget v0, v1, v0

    return v0
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/d/c;->k:[C

    array-length v3, v2

    move v1, v0

    :goto_a
    if-ge v1, v3, :cond_1e

    aget-char v4, v2, v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_1e
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_24
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/g/b;->h()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_44

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_44
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->i:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    iget v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->j:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->e:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final c(J)V
    .registers 3

    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->h:J

    return-void
.end method

.method public final d(Lcom/lenovo/lps/reaper/sdk/b/f;)I
    .registers 6

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    aget v1, v3, v1

    if-ne v2, v1, :cond_27

    const/4 v1, 0x1

    :goto_10
    if-nez v1, :cond_26

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I

    move-result v1

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    aget v0, v0, v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    aget v3, v3, v1

    invoke-virtual {p0, p1, v3}, Lcom/lenovo/lps/reaper/sdk/d/c;->a(Lcom/lenovo/lps/reaper/sdk/b/f;I)I

    move-result v3

    aput v3, v2, v1

    :cond_26
    return v0

    :cond_27
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public final d()J
    .registers 5

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->a:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->a:J

    return-wide v0
.end method

.method public final e()J
    .registers 3

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->f:J

    return-wide v0
.end method

.method public final e(Lcom/lenovo/lps/reaper/sdk/b/f;)Z
    .registers 5

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    aget v1, v1, v0

    invoke-virtual {p0, p1, v1}, Lcom/lenovo/lps/reaper/sdk/d/c;->a(Lcom/lenovo/lps/reaper/sdk/b/f;I)I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    aget v0, v2, v0

    if-ne v1, v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final f(Lcom/lenovo/lps/reaper/sdk/b/f;)I
    .registers 6

    invoke-virtual {p1}, Lcom/lenovo/lps/reaper/sdk/b/f;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/g/b;->a()Lcom/lenovo/lps/reaper/sdk/g/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/g/b;->h()[I

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    aget v3, v3, v0

    if-lt v2, v3, :cond_21

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    aget v0, v2, v0

    sub-int v0, v1, v0

    :goto_20
    return v0

    :cond_21
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->b:[I

    aget v2, v2, v0

    aget v1, v1, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->d:[I

    aget v0, v2, v0

    sub-int v0, v1, v0

    goto :goto_20
.end method

.method public final f()J
    .registers 3

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->g:J

    return-wide v0
.end method

.method public final g()J
    .registers 3

    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->h:J

    return-wide v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->i:I

    return v0
.end method

.method public final i()I
    .registers 2

    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/d/c;->j:I

    return v0
.end method
