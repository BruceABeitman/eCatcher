.class public final Lcom/c/a/bs;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/c/a/bs;

.field public static b:I


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:J

.field private final f:Lcom/c/a/g;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/c/a/bs;

    const-string v1, ""

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/c/a/bs;-><init>(Ljava/lang/String;JJLcom/c/a/g;)V

    sput-object v0, Lcom/c/a/bs;->a:Lcom/c/a/bs;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLcom/c/a/g;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/a/bs;->c:Ljava/lang/String;

    iput-wide p2, p0, Lcom/c/a/bs;->d:J

    iput-wide p4, p0, Lcom/c/a/bs;->e:J

    iput-object p6, p0, Lcom/c/a/bs;->f:Lcom/c/a/g;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/c/a/bs;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/c/a/bs;->d:J

    return-wide v0
.end method

.method public c()J
    .registers 3

    iget-wide v0, p0, Lcom/c/a/bs;->e:J

    return-wide v0
.end method

.method public d()Lcom/c/a/g;
    .registers 2

    iget-object v0, p0, Lcom/c/a/bs;->f:Lcom/c/a/g;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_6

    move v1, v0

    :cond_5
    :goto_5
    return v1

    :cond_6
    if-eqz p1, :cond_5

    :try_start_8
    check-cast p1, Lcom/c/a/bs;

    iget-object v2, p0, Lcom/c/a/bs;->c:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v2, p1, Lcom/c/a/bs;->c:Ljava/lang/String;

    if-nez v2, :cond_2a

    :cond_12
    iget-object v2, p0, Lcom/c/a/bs;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/c/a/bs;->c:Ljava/lang/String;

    if-ne v2, v3, :cond_5

    :cond_18
    iget-wide v2, p0, Lcom/c/a/bs;->d:J

    iget-wide v4, p1, Lcom/c/a/bs;->d:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_35

    iget-wide v2, p0, Lcom/c/a/bs;->e:J

    iget-wide v4, p1, Lcom/c/a/bs;->e:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_35

    :goto_28
    move v1, v0

    goto :goto_5

    :cond_2a
    iget-object v2, p0, Lcom/c/a/bs;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/c/a/bs;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_31} :catch_37

    move-result v2

    if-nez v2, :cond_18

    goto :goto_5

    :cond_35
    move v0, v1

    goto :goto_28

    :catch_37
    move-exception v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 7

    const/16 v5, 0x20

    iget-object v0, p0, Lcom/c/a/bs;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lcom/c/a/bs;->d:J

    iget-wide v3, p0, Lcom/c/a/bs;->d:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lcom/c/a/bs;->e:J

    iget-wide v3, p0, Lcom/c/a/bs;->e:J

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method
