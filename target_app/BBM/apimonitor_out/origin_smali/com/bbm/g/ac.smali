.class public Lcom/bbm/g/ac;
.super Ljava/lang/Object;
.source "GroupMember.java"

# interfaces
.implements Lcom/bbm/d/a/a;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Lcom/bbm/util/bh;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/bbm/g/ac;->a:Z

    iput-boolean v0, p0, Lcom/bbm/g/ac;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/ac;->d:Lcom/bbm/util/bh;

    return-void
.end method

.method public constructor <init>(Lcom/bbm/g/ac;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/bbm/g/ac;->a:Z

    iput-boolean v0, p0, Lcom/bbm/g/ac;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/ac;->d:Lcom/bbm/util/bh;

    iget-boolean v0, p1, Lcom/bbm/g/ac;->a:Z

    iput-boolean v0, p0, Lcom/bbm/g/ac;->a:Z

    iget-boolean v0, p1, Lcom/bbm/g/ac;->b:Z

    iput-boolean v0, p0, Lcom/bbm/g/ac;->b:Z

    iget-object v0, p1, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/ac;->d:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/ac;->d:Lcom/bbm/util/bh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/bbm/util/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/g/ac;->d:Lcom/bbm/util/bh;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 4

    const-string v0, "isAdmin"

    iget-boolean v1, p0, Lcom/bbm/g/ac;->a:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/ac;->a:Z

    const-string v0, "noLongerMember"

    iget-boolean v1, p0, Lcom/bbm/g/ac;->b:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/ac;->b:Z

    const-string v0, "uri"

    iget-object v1, p0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    return-void
.end method

.method public final b()Lcom/bbm/d/a/a;
    .registers 2

    new-instance v0, Lcom/bbm/g/ac;

    invoke-direct {v0, p0}, Lcom/bbm/g/ac;-><init>(Lcom/bbm/g/ac;)V

    return-object v0
.end method

.method public final c()Lcom/bbm/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/ac;->d:Lcom/bbm/util/bh;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

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
    check-cast p1, Lcom/bbm/g/ac;

    iget-boolean v2, p0, Lcom/bbm/g/ac;->a:Z

    iget-boolean v3, p1, Lcom/bbm/g/ac;->a:Z

    if-eq v2, v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-boolean v2, p0, Lcom/bbm/g/ac;->b:Z

    iget-boolean v3, p1, Lcom/bbm/g/ac;->b:Z

    if-eq v2, v3, :cond_27

    move v0, v1

    goto :goto_4

    :cond_27
    iget-object v2, p0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    if-nez v2, :cond_31

    iget-object v2, p1, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    if-eqz v2, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget-object v2, p0, Lcom/bbm/g/ac;->d:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/g/ac;->d:Lcom/bbm/util/bh;

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

    iget-boolean v0, p0, Lcom/bbm/g/ac;->a:Z

    if-eqz v0, :cond_23

    move v0, v1

    :goto_a
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/bbm/g/ac;->b:Z

    if-eqz v4, :cond_25

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    if-nez v0, :cond_27

    move v0, v3

    :goto_1a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bbm/g/ac;->d:Lcom/bbm/util/bh;

    if-nez v1, :cond_2e

    :goto_21
    add-int/2addr v0, v3

    return v0

    :cond_23
    move v0, v2

    goto :goto_a

    :cond_25
    move v1, v2

    goto :goto_12

    :cond_27
    iget-object v0, p0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1a

    :cond_2e
    iget-object v1, p0, Lcom/bbm/g/ac;->d:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I

    move-result v3

    goto :goto_21
.end method
