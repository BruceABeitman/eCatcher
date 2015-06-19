.class public final Lcom/squareup/okhttp/internal/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/p;


# instance fields
.field private a:I

.field private final b:Lcom/squareup/okhttp/internal/a/c;

.field private final c:Ljava/util/zip/Inflater;

.field private final d:Lcom/squareup/okhttp/internal/a/h;

.field private final e:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/internal/a/p;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/squareup/okhttp/internal/a/g;->a:I

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->e:Ljava/util/zip/CRC32;

    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->c:Ljava/util/zip/Inflater;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/p;)Lcom/squareup/okhttp/internal/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    new-instance v0, Lcom/squareup/okhttp/internal/a/h;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->c:Ljava/util/zip/Inflater;

    invoke-direct {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/h;-><init>(Lcom/squareup/okhttp/internal/a/c;Ljava/util/zip/Inflater;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->d:Lcom/squareup/okhttp/internal/a/h;

    return-void
.end method

.method private a(Lcom/squareup/okhttp/internal/a/i;JJ)V
    .registers 15

    iget-object v0, p1, Lcom/squareup/okhttp/internal/a/i;->a:Lcom/squareup/okhttp/internal/a/m;

    move-object v2, v0

    move-wide v0, p4

    :goto_4
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2e

    iget v3, v2, Lcom/squareup/okhttp/internal/a/m;->c:I

    iget v4, v2, Lcom/squareup/okhttp/internal/a/m;->b:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    cmp-long v4, p2, v4

    if-gez v4, :cond_29

    int-to-long v4, v3

    sub-long/2addr v4, p2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/a/g;->e:Ljava/util/zip/CRC32;

    iget-object v6, v2, Lcom/squareup/okhttp/internal/a/m;->a:[B

    iget v7, v2, Lcom/squareup/okhttp/internal/a/m;->b:I

    int-to-long v7, v7

    add-long/2addr v7, p2

    long-to-int v7, v7

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long v4, v4

    sub-long/2addr v0, v4

    :cond_29
    int-to-long v3, v3

    sub-long/2addr p2, v3

    iget-object v2, v2, Lcom/squareup/okhttp/internal/a/m;->d:Lcom/squareup/okhttp/internal/a/m;

    goto :goto_4

    :cond_2e
    return-void
.end method

.method private static a(Ljava/lang/String;II)V
    .registers 8

    if-eq p2, p1, :cond_22

    new-instance v0, Ljava/io/IOException;

    const-string v1, "%s: actual 0x%08x != expected 0x%08x"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    return-void
.end method


# virtual methods
.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_24

    const-wide/16 v4, 0x0

    :goto_23
    return-wide v4

    :cond_24
    iget v0, p0, Lcom/squareup/okhttp/internal/a/g;->a:I

    if-nez v0, :cond_119

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/c;->a(J)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->b()Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/i;->d(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_133

    const/4 v0, 0x1

    move v6, v0

    :goto_44
    if-eqz v6, :cond_54

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->b()Lcom/squareup/okhttp/internal/a/i;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/internal/a/i;JJ)V

    :cond_54
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->h()S

    move-result v0

    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-static {v1, v2, v0}, Lcom/squareup/okhttp/internal/a/g;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/c;->b(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/c;->a(J)V

    if-eqz v6, :cond_86

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->b()Lcom/squareup/okhttp/internal/a/i;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/internal/a/i;JJ)V

    :cond_86
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->b()Lcom/squareup/okhttp/internal/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->i()I

    move-result v0

    const v1, 0xffff

    and-int v8, v0, v1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    int-to-long v1, v8

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/c;->a(J)V

    if-eqz v6, :cond_aa

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->b()Lcom/squareup/okhttp/internal/a/i;

    move-result-object v1

    const-wide/16 v2, 0x0

    int-to-long v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/internal/a/i;JJ)V

    :cond_aa
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    int-to-long v1, v8

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/c;->b(J)V

    :cond_b0
    shr-int/lit8 v0, v7, 0x3

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->m()J

    move-result-wide v8

    if-eqz v6, :cond_ce

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->b()Lcom/squareup/okhttp/internal/a/i;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/internal/a/i;JJ)V

    :cond_ce
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    const-wide/16 v1, 0x1

    add-long/2addr v1, v8

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/c;->b(J)V

    :cond_d6
    shr-int/lit8 v0, v7, 0x4

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_fc

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->m()J

    move-result-wide v7

    if-eqz v6, :cond_f4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->b()Lcom/squareup/okhttp/internal/a/i;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v7

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/internal/a/i;JJ)V

    :cond_f4
    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    const-wide/16 v1, 0x1

    add-long/2addr v1, v7

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/c;->b(J)V

    :cond_fc
    if-eqz v6, :cond_116

    const-string v0, "FHCRC"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/c;->i()I

    move-result v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/g;->a(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_116
    const/4 v0, 0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/a/g;->a:I

    :cond_119
    iget v0, p0, Lcom/squareup/okhttp/internal/a/g;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13a

    iget-wide v2, p1, Lcom/squareup/okhttp/internal/a/i;->b:J

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->d:Lcom/squareup/okhttp/internal/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/a/h;->b(Lcom/squareup/okhttp/internal/a/i;J)J

    move-result-wide v4

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_137

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/a/g;->a(Lcom/squareup/okhttp/internal/a/i;JJ)V

    goto/16 :goto_23

    :cond_133
    const/4 v0, 0x0

    move v6, v0

    goto/16 :goto_44

    :cond_137
    const/4 v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/a/g;->a:I

    :cond_13a
    iget v0, p0, Lcom/squareup/okhttp/internal/a/g;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_175

    const-string v0, "CRC"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/c;->k()I

    move-result v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->e:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/g;->a(Ljava/lang/String;II)V

    const-string v0, "ISIZE"

    iget-object v1, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/a/c;->k()I

    move-result v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/a/g;->c:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getTotalOut()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/g;->a(Ljava/lang/String;II)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/squareup/okhttp/internal/a/g;->a:I

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->b:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->f()Z

    move-result v0

    if-nez v0, :cond_175

    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_175
    const-wide/16 v4, -0x1

    goto/16 :goto_23
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/a/g;->d:Lcom/squareup/okhttp/internal/a/h;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/h;->close()V

    return-void
.end method
