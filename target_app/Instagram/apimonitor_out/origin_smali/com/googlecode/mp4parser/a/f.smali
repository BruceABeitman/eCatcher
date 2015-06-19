.class public final Lcom/googlecode/mp4parser/a/f;
.super Ljava/lang/Object;
.source "TrackMetaData.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:I

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/util/Date;

.field private e:Ljava/util/Date;

.field private f:D

.field private g:D

.field private h:F

.field private i:J

.field private j:I

.field private k:[J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/f;->d:Ljava/util/Date;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/f;->e:Ljava/util/Date;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/googlecode/mp4parser/a/f;->i:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/googlecode/mp4parser/a/f;->j:I

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/googlecode/mp4parser/a/f;->k:[J

    return-void

    :array_22
    .array-data 0x8
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(D)V
    .registers 3

    iput-wide p1, p0, Lcom/googlecode/mp4parser/a/f;->f:D

    return-void
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/a/f;->a:I

    return-void
.end method

.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/googlecode/mp4parser/a/f;->c:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/googlecode/mp4parser/a/f;->b:Ljava/lang/String;

    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/googlecode/mp4parser/a/f;->d:Ljava/util/Date;

    return-void
.end method

.method public final a([J)V
    .registers 2

    iput-object p1, p0, Lcom/googlecode/mp4parser/a/f;->k:[J

    return-void
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/googlecode/mp4parser/a/f;->c:J

    return-wide v0
.end method

.method public final b(D)V
    .registers 3

    iput-wide p1, p0, Lcom/googlecode/mp4parser/a/f;->g:D

    return-void
.end method

.method public final b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/googlecode/mp4parser/a/f;->i:J

    return-void
.end method

.method public final b(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/googlecode/mp4parser/a/f;->e:Ljava/util/Date;

    return-void
.end method

.method public final c()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/f;->e:Ljava/util/Date;

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .registers 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final d()D
    .registers 3

    iget-wide v0, p0, Lcom/googlecode/mp4parser/a/f;->f:D

    return-wide v0
.end method

.method public final e()[J
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/a/f;->k:[J

    return-object v0
.end method

.method public final f()D
    .registers 3

    iget-wide v0, p0, Lcom/googlecode/mp4parser/a/f;->g:D

    return-wide v0
.end method

.method public final g()J
    .registers 3

    iget-wide v0, p0, Lcom/googlecode/mp4parser/a/f;->i:J

    return-wide v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/a/f;->a:I

    return v0
.end method

.method public final i()F
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/a/f;->h:F

    return v0
.end method

.method public final j()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/a/f;->j:I

    return v0
.end method
