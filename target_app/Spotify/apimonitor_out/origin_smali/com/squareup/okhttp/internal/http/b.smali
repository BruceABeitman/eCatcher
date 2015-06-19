.class public final Lcom/squareup/okhttp/internal/http/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:J

.field final b:Lcom/squareup/okhttp/internal/http/u;

.field final c:Lcom/squareup/okhttp/internal/http/z;

.field private d:Ljava/util/Date;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Date;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Date;

.field private i:J

.field private j:J

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method public constructor <init>(JLcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/http/b;->l:I

    iput-wide p1, p0, Lcom/squareup/okhttp/internal/http/b;->a:J

    iput-object p3, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    if-eqz p4, :cond_94

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p4}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/e;->a()I

    move-result v1

    if-ge v0, v1, :cond_94

    invoke-virtual {p4}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/squareup/okhttp/internal/http/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4}, Lcom/squareup/okhttp/internal/http/z;->g()Lcom/squareup/okhttp/internal/http/e;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/internal/http/e;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Date"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/o;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->d:Ljava/util/Date;

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/b;->e:Ljava/lang/String;

    :cond_39
    :goto_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_3c
    const-string v3, "Expires"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/o;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->h:Ljava/util/Date;

    goto :goto_39

    :cond_4b
    const-string v3, "Last-Modified"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/o;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->f:Ljava/util/Date;

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/b;->g:Ljava/lang/String;

    goto :goto_39

    :cond_5c
    const-string v3, "ETag"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_67

    iput-object v2, p0, Lcom/squareup/okhttp/internal/http/b;->k:Ljava/lang/String;

    goto :goto_39

    :cond_67
    const-string v3, "Age"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/d;->a(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/squareup/okhttp/internal/http/b;->l:I

    goto :goto_39

    :cond_76
    sget-object v3, Lcom/squareup/okhttp/internal/http/t;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/squareup/okhttp/internal/http/b;->i:J

    goto :goto_39

    :cond_85
    sget-object v3, Lcom/squareup/okhttp/internal/http/t;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/squareup/okhttp/internal/http/b;->j:J

    goto :goto_39

    :cond_94
    return-void
.end method

.method private static a(Lcom/squareup/okhttp/internal/http/u;)Z
    .registers 2

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/http/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/internal/http/a;
    .registers 15

    const/4 v13, -0x1

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    if-nez v0, :cond_55

    new-instance v0, Lcom/squareup/okhttp/internal/http/a;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    sget-object v3, Lcom/squareup/okhttp/ResponseSource;->c:Lcom/squareup/okhttp/ResponseSource;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/squareup/okhttp/internal/http/a;-><init>(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/ResponseSource;B)V

    :goto_13
    iget-object v1, v0, Lcom/squareup/okhttp/internal/http/a;->c:Lcom/squareup/okhttp/ResponseSource;

    sget-object v2, Lcom/squareup/okhttp/ResponseSource;->a:Lcom/squareup/okhttp/ResponseSource;

    if-eq v1, v2, :cond_54

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/u;->k()Lcom/squareup/okhttp/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/f;->i()Z

    move-result v1

    if-eqz v1, :cond_54

    new-instance v1, Lcom/squareup/okhttp/internal/http/ab;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/http/ab;-><init>()V

    iget-object v2, v0, Lcom/squareup/okhttp/internal/http/a;->a:Lcom/squareup/okhttp/internal/http/u;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/ab;

    move-result-object v1

    invoke-static {}, Lcom/squareup/okhttp/internal/http/a;->b()Lcom/squareup/okhttp/internal/http/ak;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/ak;)Lcom/squareup/okhttp/internal/http/ab;

    move-result-object v1

    sget-object v2, Lcom/squareup/okhttp/ResponseSource;->d:Lcom/squareup/okhttp/ResponseSource;

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/ResponseSource;)Lcom/squareup/okhttp/internal/http/ab;

    move-result-object v1

    invoke-static {}, Lcom/squareup/okhttp/internal/http/a;->a()Lcom/squareup/okhttp/internal/http/aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/aa;)Lcom/squareup/okhttp/internal/http/ab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/ab;->a()Lcom/squareup/okhttp/internal/http/z;

    move-result-object v2

    new-instance v1, Lcom/squareup/okhttp/internal/http/a;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/http/a;->a:Lcom/squareup/okhttp/internal/http/u;

    sget-object v3, Lcom/squareup/okhttp/ResponseSource;->d:Lcom/squareup/okhttp/ResponseSource;

    invoke-direct {v1, v0, v2, v3, v6}, Lcom/squareup/okhttp/internal/http/a;-><init>(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/ResponseSource;B)V

    move-object v0, v1

    :cond_54
    return-object v0

    :cond_55
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->l()Z

    move-result v0

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->f()Lcom/squareup/okhttp/i;

    move-result-object v0

    if-nez v0, :cond_71

    new-instance v0, Lcom/squareup/okhttp/internal/http/a;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    sget-object v3, Lcom/squareup/okhttp/ResponseSource;->c:Lcom/squareup/okhttp/ResponseSource;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/squareup/okhttp/internal/http/a;-><init>(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/ResponseSource;B)V

    goto :goto_13

    :cond_71
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/a;->a(Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/internal/http/u;)Z

    move-result v0

    if-nez v0, :cond_87

    new-instance v0, Lcom/squareup/okhttp/internal/http/a;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    sget-object v3, Lcom/squareup/okhttp/ResponseSource;->c:Lcom/squareup/okhttp/ResponseSource;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/squareup/okhttp/internal/http/a;-><init>(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/ResponseSource;B)V

    goto :goto_13

    :cond_87
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->k()Lcom/squareup/okhttp/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/squareup/okhttp/f;->a()Z

    move-result v0

    if-nez v0, :cond_9b

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/http/b;->a(Lcom/squareup/okhttp/internal/http/u;)Z

    move-result v0

    if-eqz v0, :cond_a8

    :cond_9b
    new-instance v0, Lcom/squareup/okhttp/internal/http/a;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    sget-object v3, Lcom/squareup/okhttp/ResponseSource;->c:Lcom/squareup/okhttp/ResponseSource;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/squareup/okhttp/internal/http/a;-><init>(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/ResponseSource;B)V

    goto/16 :goto_13

    :cond_a8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->d:Ljava/util/Date;

    if-eqz v0, :cond_186

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/b;->j:J

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/b;->d:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_b9
    iget v4, p0, Lcom/squareup/okhttp/internal/http/b;->l:I

    if-eq v4, v13, :cond_ca

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v5, p0, Lcom/squareup/okhttp/internal/http/b;->l:I

    int-to-long v8, v5

    invoke-virtual {v4, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_ca
    iget-wide v4, p0, Lcom/squareup/okhttp/internal/http/b;->j:J

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/b;->i:J

    sub-long/2addr v4, v8

    iget-wide v8, p0, Lcom/squareup/okhttp/internal/http/b;->a:J

    iget-wide v10, p0, Lcom/squareup/okhttp/internal/http/b;->j:J

    sub-long/2addr v8, v10

    add-long/2addr v0, v4

    add-long/2addr v8, v0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->l()Lcom/squareup/okhttp/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->c()I

    move-result v1

    if-eq v1, v13, :cond_189

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->c()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :cond_ed
    :goto_ed
    invoke-virtual {v7}, Lcom/squareup/okhttp/f;->c()I

    move-result v4

    if-eq v4, v13, :cond_102

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7}, Lcom/squareup/okhttp/f;->c()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_102
    invoke-virtual {v7}, Lcom/squareup/okhttp/f;->h()I

    move-result v4

    if-eq v4, v13, :cond_223

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7}, Lcom/squareup/okhttp/f;->h()I

    move-result v5

    int-to-long v10, v5

    invoke-virtual {v4, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    :goto_113
    iget-object v10, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    invoke-virtual {v10}, Lcom/squareup/okhttp/internal/http/z;->l()Lcom/squareup/okhttp/f;

    move-result-object v10

    invoke-virtual {v10}, Lcom/squareup/okhttp/f;->f()Z

    move-result v11

    if-nez v11, :cond_130

    invoke-virtual {v7}, Lcom/squareup/okhttp/f;->g()I

    move-result v11

    if-eq v11, v13, :cond_130

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7}, Lcom/squareup/okhttp/f;->g()I

    move-result v3

    int-to-long v11, v3

    invoke-virtual {v2, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    :cond_130
    invoke-virtual {v10}, Lcom/squareup/okhttp/f;->a()Z

    move-result v7

    if-nez v7, :cond_1e2

    add-long v10, v8, v4

    add-long/2addr v2, v0

    cmp-long v2, v10, v2

    if-gez v2, :cond_1e2

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/z;->i()Lcom/squareup/okhttp/internal/http/ab;

    move-result-object v2

    sget-object v3, Lcom/squareup/okhttp/ResponseSource;->a:Lcom/squareup/okhttp/ResponseSource;

    invoke-virtual {v2, v3}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/ResponseSource;)Lcom/squareup/okhttp/internal/http/ab;

    move-result-object v2

    add-long v3, v8, v4

    cmp-long v0, v3, v0

    if-ltz v0, :cond_156

    const-string v0, "Warning"

    const-string v1, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;

    :cond_156
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v8, v0

    if-lez v0, :cond_177

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->l()Lcom/squareup/okhttp/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/f;->c()I

    move-result v0

    if-ne v0, v13, :cond_1e0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->h:Ljava/util/Date;

    if-nez v0, :cond_1e0

    const/4 v0, 0x1

    :goto_16e
    if-eqz v0, :cond_177

    const-string v0, "Warning"

    const-string v1, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v2, v0, v1}, Lcom/squareup/okhttp/internal/http/ab;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;

    :cond_177
    new-instance v0, Lcom/squareup/okhttp/internal/http/a;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/http/ab;->a()Lcom/squareup/okhttp/internal/http/z;

    move-result-object v2

    sget-object v3, Lcom/squareup/okhttp/ResponseSource;->a:Lcom/squareup/okhttp/ResponseSource;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/squareup/okhttp/internal/http/a;-><init>(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/ResponseSource;B)V

    goto/16 :goto_13

    :cond_186
    move-wide v0, v2

    goto/16 :goto_b9

    :cond_189
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->h:Ljava/util/Date;

    if-eqz v0, :cond_1a9

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->d:Ljava/util/Date;

    if-eqz v0, :cond_1a6

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_197
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/b;->h:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_ed

    move-wide v0, v2

    goto/16 :goto_ed

    :cond_1a6
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/b;->j:J

    goto :goto_197

    :cond_1a9
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->f:Ljava/util/Date;

    if-eqz v0, :cond_1dd

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->a()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1dd

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->d:Ljava/util/Date;

    if-eqz v0, :cond_1d7

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_1c7
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/b;->f:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_1da

    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    goto/16 :goto_ed

    :cond_1d7
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/http/b;->i:J

    goto :goto_1c7

    :cond_1da
    move-wide v0, v2

    goto/16 :goto_ed

    :cond_1dd
    move-wide v0, v2

    goto/16 :goto_ed

    :cond_1e0
    move v0, v6

    goto :goto_16e

    :cond_1e2
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/b;->b:Lcom/squareup/okhttp/internal/http/u;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->g()Lcom/squareup/okhttp/internal/http/w;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->f:Ljava/util/Date;

    if-eqz v1, :cond_214

    const-string v1, "If-Modified-Since"

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;

    :cond_1f3
    :goto_1f3
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->k:Ljava/lang/String;

    if-eqz v1, :cond_1fe

    const-string v1, "If-None-Match"

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;

    :cond_1fe
    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/w;->a()Lcom/squareup/okhttp/internal/http/u;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/http/b;->a(Lcom/squareup/okhttp/internal/http/u;)Z

    move-result v0

    if-eqz v0, :cond_220

    sget-object v0, Lcom/squareup/okhttp/ResponseSource;->b:Lcom/squareup/okhttp/ResponseSource;

    :goto_20a
    new-instance v1, Lcom/squareup/okhttp/internal/http/a;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/http/b;->c:Lcom/squareup/okhttp/internal/http/z;

    invoke-direct {v1, v2, v3, v0, v6}, Lcom/squareup/okhttp/internal/http/a;-><init>(Lcom/squareup/okhttp/internal/http/u;Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/ResponseSource;B)V

    move-object v0, v1

    goto/16 :goto_13

    :cond_214
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/b;->d:Ljava/util/Date;

    if-eqz v1, :cond_1f3

    const-string v1, "If-Modified-Since"

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/squareup/okhttp/internal/http/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/w;

    goto :goto_1f3

    :cond_220
    sget-object v0, Lcom/squareup/okhttp/ResponseSource;->c:Lcom/squareup/okhttp/ResponseSource;

    goto :goto_20a

    :cond_223
    move-wide v4, v2

    goto/16 :goto_113
.end method
