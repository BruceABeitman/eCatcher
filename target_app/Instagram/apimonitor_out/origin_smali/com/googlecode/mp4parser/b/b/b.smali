.class public final Lcom/googlecode/mp4parser/b/b/b;
.super Lcom/googlecode/mp4parser/b/b/a;
.source "CAVLCReader.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/b/b/a;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/16 v6, 0x20

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/googlecode/mp4parser/b/b/b;->b:I

    iget-object v3, p0, Lcom/googlecode/mp4parser/b/b/b;->c:Lcom/googlecode/mp4parser/b/a;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/b/a;->b()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x8

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "@"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v0

    :goto_2e
    if-ge v1, v3, :cond_36

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    iget-object v3, p0, Lcom/googlecode/mp4parser/b/b/b;->c:Lcom/googlecode/mp4parser/b/a;

    invoke-virtual {v3}, Lcom/googlecode/mp4parser/b/a;->b()I

    move-result v3

    sub-int/2addr v1, v3

    :goto_46
    if-ge v0, v1, :cond_4e

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_4e
    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b;->c:Lcom/googlecode/mp4parser/b/a;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/googlecode/mp4parser/b/b/b;->c:Lcom/googlecode/mp4parser/b/a;

    invoke-virtual {v0}, Lcom/googlecode/mp4parser/b/a;->a()V

    return-void
.end method

.method private e()I
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b;->a()I

    move-result v2

    if-nez v2, :cond_b

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    if-lez v0, :cond_1a

    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(I)J

    move-result-wide v1

    const/4 v3, 0x1

    shl-int v0, v3, v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v3, v0

    add-long v0, v3, v1

    long-to-int v1, v0

    :cond_1a
    return v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .registers 4

    invoke-direct {p0}, Lcom/googlecode/mp4parser/b/b/b;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final a(ILjava/lang/String;)J
    .registers 6

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/b/b/b;->a(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2, v2}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method public final b(ILjava/lang/String;)I
    .registers 5

    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/b/b/b;->a(ILjava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public final b(Ljava/lang/String;)I
    .registers 5

    invoke-direct {p0}, Lcom/googlecode/mp4parser/b/b/b;->e()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v2, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b;->a()I

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-eqz v1, :cond_13

    const-string v0, "1"

    :goto_c
    invoke-direct {p0, p1, v0}, Lcom/googlecode/mp4parser/b/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_10
    const/4 v0, 0x1

    move v1, v0

    goto :goto_8

    :cond_13
    const-string v0, "0"

    goto :goto_c
.end method

.method public final d()V
    .registers 1

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b;->a()I

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b/b/b;->c()J

    return-void
.end method
