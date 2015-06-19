.class public Lcom/bbm/g/w;
.super Ljava/lang/Object;
.source "GroupList.java"

# interfaces
.implements Lcom/bbm/d/a/a;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/bbm/util/bh;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/bbm/g/w;->a:Z

    iput-boolean v0, p0, Lcom/bbm/g/w;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/w;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bbm/g/w;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/w;->f:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/g/w;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/bbm/g/w;->a:Z

    iput-boolean v0, p0, Lcom/bbm/g/w;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/w;->c:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bbm/g/w;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/w;->f:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    iget-boolean v0, p1, Lcom/bbm/g/w;->a:Z

    iput-boolean v0, p0, Lcom/bbm/g/w;->a:Z

    iget-boolean v0, p1, Lcom/bbm/g/w;->b:Z

    iput-boolean v0, p0, Lcom/bbm/g/w;->b:Z

    iget-object v0, p1, Lcom/bbm/g/w;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/w;->c:Ljava/lang/String;

    iget-wide v0, p1, Lcom/bbm/g/w;->d:J

    iput-wide v0, p0, Lcom/bbm/g/w;->d:J

    iget-object v0, p1, Lcom/bbm/g/w;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/w;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/w;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/w;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/bbm/util/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "isListCommentsUpdated"

    iget-boolean v1, p0, Lcom/bbm/g/w;->a:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/w;->a:Z

    const-string v0, "isListUpdated"

    iget-boolean v1, p0, Lcom/bbm/g/w;->b:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/w;->b:Z

    const-string v0, "latestItemId"

    iget-object v1, p0, Lcom/bbm/g/w;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/w;->c:Ljava/lang/String;

    const-string v0, "latestItemTimestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "latestItemTimestamp"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4d

    const-wide/16 v0, 0x0

    :goto_36
    iput-wide v0, p0, Lcom/bbm/g/w;->d:J

    :cond_38
    const-string v0, "name"

    iget-object v1, p0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    const-string v0, "uri"

    iget-object v1, p0, Lcom/bbm/g/w;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/w;->f:Ljava/lang/String;

    return-void

    :cond_4d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_36
.end method

.method public final b()Lcom/bbm/d/a/a;
    .registers 2

    new-instance v0, Lcom/bbm/g/w;

    invoke-direct {v0, p0}, Lcom/bbm/g/w;-><init>(Lcom/bbm/g/w;)V

    return-object v0
.end method

.method public final c()Lcom/bbm/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    goto :goto_4

    :cond_15
    check-cast p1, Lcom/bbm/g/w;

    iget-boolean v2, p0, Lcom/bbm/g/w;->a:Z

    iget-boolean v3, p1, Lcom/bbm/g/w;->a:Z

    if-eq v2, v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-boolean v2, p0, Lcom/bbm/g/w;->b:Z

    iget-boolean v3, p1, Lcom/bbm/g/w;->b:Z

    if-eq v2, v3, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    iget-object v2, p0, Lcom/bbm/g/w;->c:Ljava/lang/String;

    if-nez v2, :cond_31

    iget-object v2, p1, Lcom/bbm/g/w;->c:Ljava/lang/String;

    if-eqz v2, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p0, Lcom/bbm/g/w;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/w;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget-wide v2, p0, Lcom/bbm/g/w;->d:J

    iget-wide v4, p1, Lcom/bbm/g/w;->d:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_47

    move v0, v1

    goto :goto_4

    :cond_47
    iget-object v2, p0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    if-nez v2, :cond_51

    iget-object v2, p1, Lcom/bbm/g/w;->e:Ljava/lang/String;

    if-eqz v2, :cond_5d

    move v0, v1

    goto :goto_4

    :cond_51
    iget-object v2, p0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/w;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    move v0, v1

    goto :goto_4

    :cond_5d
    iget-object v2, p0, Lcom/bbm/g/w;->f:Ljava/lang/String;

    if-nez v2, :cond_67

    iget-object v2, p1, Lcom/bbm/g/w;->f:Ljava/lang/String;

    if-eqz v2, :cond_73

    move v0, v1

    goto :goto_4

    :cond_67
    iget-object v2, p0, Lcom/bbm/g/w;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/w;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_73

    move v0, v1

    goto :goto_4

    :cond_73
    iget-object v2, p0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 6

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/bbm/g/w;->a:Z

    if-eqz v0, :cond_39

    move v0, v1

    :goto_a
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/bbm/g/w;->b:Z

    if-eqz v4, :cond_3b

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/w;->c:Ljava/lang/String;

    if-nez v0, :cond_3d

    move v0, v3

    :goto_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/bbm/g/w;->d:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    if-nez v0, :cond_44

    move v0, v3

    :goto_28
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/w;->f:Ljava/lang/String;

    if-nez v0, :cond_4b

    move v0, v3

    :goto_30
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    if-nez v1, :cond_52

    :goto_37
    add-int/2addr v0, v3

    return v0

    :cond_39
    move v0, v2

    goto :goto_a

    :cond_3b
    move v1, v2

    goto :goto_12

    :cond_3d
    iget-object v0, p0, Lcom/bbm/g/w;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1a

    :cond_44
    iget-object v0, p0, Lcom/bbm/g/w;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_28

    :cond_4b
    iget-object v0, p0, Lcom/bbm/g/w;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_30

    :cond_52
    iget-object v1, p0, Lcom/bbm/g/w;->g:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I

    move-result v3

    goto :goto_37
.end method
