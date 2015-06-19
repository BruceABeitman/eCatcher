.class public Lcom/bbm/g/s;
.super Ljava/lang/Object;
.source "GroupEventsUpcoming.java"

# interfaces
.implements Lcom/bbm/d/a/a;


# instance fields
.field public a:Z

.field public b:J

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Z

.field public h:J

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Lcom/bbm/util/bh;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/bbm/g/s;->a:Z

    iput-wide v2, p0, Lcom/bbm/g/s;->b:J

    iput-boolean v1, p0, Lcom/bbm/g/s;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/s;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/s;->e:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/g/s;->f:J

    iput-boolean v1, p0, Lcom/bbm/g/s;->g:Z

    iput-wide v2, p0, Lcom/bbm/g/s;->h:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/s;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/s;->j:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/s;->k:Lcom/bbm/util/bh;

    return-void
.end method

.method private constructor <init>(Lcom/bbm/g/s;)V
    .registers 6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/bbm/g/s;->a:Z

    iput-wide v2, p0, Lcom/bbm/g/s;->b:J

    iput-boolean v1, p0, Lcom/bbm/g/s;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/s;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/s;->e:Ljava/lang/String;

    iput-wide v2, p0, Lcom/bbm/g/s;->f:J

    iput-boolean v1, p0, Lcom/bbm/g/s;->g:Z

    iput-wide v2, p0, Lcom/bbm/g/s;->h:J

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/s;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/g/s;->j:Ljava/lang/String;

    sget-object v0, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/s;->k:Lcom/bbm/util/bh;

    iget-boolean v0, p1, Lcom/bbm/g/s;->a:Z

    iput-boolean v0, p0, Lcom/bbm/g/s;->a:Z

    iget-wide v0, p1, Lcom/bbm/g/s;->b:J

    iput-wide v0, p0, Lcom/bbm/g/s;->b:J

    iget-boolean v0, p1, Lcom/bbm/g/s;->c:Z

    iput-boolean v0, p0, Lcom/bbm/g/s;->c:Z

    iget-object v0, p1, Lcom/bbm/g/s;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/s;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/s;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/s;->e:Ljava/lang/String;

    iget-wide v0, p1, Lcom/bbm/g/s;->f:J

    iput-wide v0, p0, Lcom/bbm/g/s;->f:J

    iget-boolean v0, p1, Lcom/bbm/g/s;->g:Z

    iput-boolean v0, p0, Lcom/bbm/g/s;->g:Z

    iget-wide v0, p1, Lcom/bbm/g/s;->h:J

    iput-wide v0, p0, Lcom/bbm/g/s;->h:J

    iget-object v0, p1, Lcom/bbm/g/s;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/s;->i:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/s;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/bbm/g/s;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/bbm/g/s;->k:Lcom/bbm/util/bh;

    iput-object v0, p0, Lcom/bbm/g/s;->k:Lcom/bbm/util/bh;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/s;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/bbm/util/bh;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/g/s;->k:Lcom/bbm/util/bh;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .registers 6

    const-wide/16 v2, 0x0

    const-string v0, "allDayEvent"

    iget-boolean v1, p0, Lcom/bbm/g/s;->a:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/s;->a:Z

    const-string v0, "end"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const-string v0, "end"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_93

    move-wide v0, v2

    :goto_23
    iput-wide v0, p0, Lcom/bbm/g/s;->b:J

    :cond_25
    const-string v0, "isUnread"

    iget-boolean v1, p0, Lcom/bbm/g/s;->c:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/s;->c:Z

    const-string v0, "location"

    iget-object v1, p0, Lcom/bbm/g/s;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/s;->d:Ljava/lang/String;

    const-string v0, "parentUri"

    iget-object v1, p0, Lcom/bbm/g/s;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/s;->e:Ljava/lang/String;

    const-string v0, "recurrenceId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string v0, "recurrenceId"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_98

    move-wide v0, v2

    :goto_5a
    iput-wide v0, p0, Lcom/bbm/g/s;->f:J

    :cond_5c
    const-string v0, "recurring"

    iget-boolean v1, p0, Lcom/bbm/g/s;->g:Z

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/g/s;->g:Z

    const-string v0, "start"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "start"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9d

    :goto_7c
    iput-wide v2, p0, Lcom/bbm/g/s;->h:J

    :cond_7e
    const-string v0, "subject"

    iget-object v1, p0, Lcom/bbm/g/s;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/s;->i:Ljava/lang/String;

    const-string v0, "uri"

    iget-object v1, p0, Lcom/bbm/g/s;->j:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/g/s;->j:Ljava/lang/String;

    return-void

    :cond_93
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_23

    :cond_98
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_5a

    :cond_9d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_7c
.end method

.method public final b()Lcom/bbm/d/a/a;
    .registers 2

    new-instance v0, Lcom/bbm/g/s;

    invoke-direct {v0, p0}, Lcom/bbm/g/s;-><init>(Lcom/bbm/g/s;)V

    return-object v0
.end method

.method public final c()Lcom/bbm/util/bh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/g/s;->k:Lcom/bbm/util/bh;

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
    check-cast p1, Lcom/bbm/g/s;

    iget-boolean v2, p0, Lcom/bbm/g/s;->a:Z

    iget-boolean v3, p1, Lcom/bbm/g/s;->a:Z

    if-eq v2, v3, :cond_1f

    move v0, v1

    goto :goto_4

    :cond_1f
    iget-wide v2, p0, Lcom/bbm/g/s;->b:J

    iget-wide v4, p1, Lcom/bbm/g/s;->b:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_29

    move v0, v1

    goto :goto_4

    :cond_29
    iget-boolean v2, p0, Lcom/bbm/g/s;->c:Z

    iget-boolean v3, p1, Lcom/bbm/g/s;->c:Z

    if-eq v2, v3, :cond_31

    move v0, v1

    goto :goto_4

    :cond_31
    iget-object v2, p0, Lcom/bbm/g/s;->d:Ljava/lang/String;

    if-nez v2, :cond_3b

    iget-object v2, p1, Lcom/bbm/g/s;->d:Ljava/lang/String;

    if-eqz v2, :cond_47

    move v0, v1

    goto :goto_4

    :cond_3b
    iget-object v2, p0, Lcom/bbm/g/s;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/s;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    move v0, v1

    goto :goto_4

    :cond_47
    iget-object v2, p0, Lcom/bbm/g/s;->e:Ljava/lang/String;

    if-nez v2, :cond_51

    iget-object v2, p1, Lcom/bbm/g/s;->e:Ljava/lang/String;

    if-eqz v2, :cond_5d

    move v0, v1

    goto :goto_4

    :cond_51
    iget-object v2, p0, Lcom/bbm/g/s;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/s;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    move v0, v1

    goto :goto_4

    :cond_5d
    iget-wide v2, p0, Lcom/bbm/g/s;->f:J

    iget-wide v4, p1, Lcom/bbm/g/s;->f:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_67

    move v0, v1

    goto :goto_4

    :cond_67
    iget-boolean v2, p0, Lcom/bbm/g/s;->g:Z

    iget-boolean v3, p1, Lcom/bbm/g/s;->g:Z

    if-eq v2, v3, :cond_6f

    move v0, v1

    goto :goto_4

    :cond_6f
    iget-wide v2, p0, Lcom/bbm/g/s;->h:J

    iget-wide v4, p1, Lcom/bbm/g/s;->h:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_79

    move v0, v1

    goto :goto_4

    :cond_79
    iget-object v2, p0, Lcom/bbm/g/s;->i:Ljava/lang/String;

    if-nez v2, :cond_83

    iget-object v2, p1, Lcom/bbm/g/s;->i:Ljava/lang/String;

    if-eqz v2, :cond_90

    move v0, v1

    goto :goto_4

    :cond_83
    iget-object v2, p0, Lcom/bbm/g/s;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/s;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_90

    move v0, v1

    goto/16 :goto_4

    :cond_90
    iget-object v2, p0, Lcom/bbm/g/s;->j:Ljava/lang/String;

    if-nez v2, :cond_9b

    iget-object v2, p1, Lcom/bbm/g/s;->j:Ljava/lang/String;

    if-eqz v2, :cond_a8

    move v0, v1

    goto/16 :goto_4

    :cond_9b
    iget-object v2, p0, Lcom/bbm/g/s;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/bbm/g/s;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    move v0, v1

    goto/16 :goto_4

    :cond_a8
    iget-object v2, p0, Lcom/bbm/g/s;->k:Lcom/bbm/util/bh;

    iget-object v3, p1, Lcom/bbm/g/s;->k:Lcom/bbm/util/bh;

    invoke-virtual {v2, v3}, Lcom/bbm/util/bh;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto/16 :goto_4
.end method

.method public hashCode()I
    .registers 7

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/bbm/g/s;->a:Z

    if-eqz v0, :cond_55

    move v0, v1

    :goto_a
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/bbm/g/s;->b:J

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v0, p0, Lcom/bbm/g/s;->c:Z

    if-eqz v0, :cond_57

    move v0, v1

    :goto_19
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/s;->d:Ljava/lang/String;

    if-nez v0, :cond_59

    move v0, v3

    :goto_21
    add-int/2addr v0, v4

    mul-int/lit8 v4, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/s;->e:Ljava/lang/String;

    if-nez v0, :cond_60

    move v0, v3

    :goto_29
    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v4, p0, Lcom/bbm/g/s;->f:J

    long-to-int v4, v4

    add-int/2addr v0, v4

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v4, p0, Lcom/bbm/g/s;->g:Z

    if-eqz v4, :cond_67

    :goto_36
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/bbm/g/s;->h:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/s;->i:Ljava/lang/String;

    if-nez v0, :cond_69

    move v0, v3

    :goto_44
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/bbm/g/s;->j:Ljava/lang/String;

    if-nez v0, :cond_70

    move v0, v3

    :goto_4c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bbm/g/s;->k:Lcom/bbm/util/bh;

    if-nez v1, :cond_77

    :goto_53
    add-int/2addr v0, v3

    return v0

    :cond_55
    move v0, v2

    goto :goto_a

    :cond_57
    move v0, v2

    goto :goto_19

    :cond_59
    iget-object v0, p0, Lcom/bbm/g/s;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_21

    :cond_60
    iget-object v0, p0, Lcom/bbm/g/s;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_29

    :cond_67
    move v1, v2

    goto :goto_36

    :cond_69
    iget-object v0, p0, Lcom/bbm/g/s;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_44

    :cond_70
    iget-object v0, p0, Lcom/bbm/g/s;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_4c

    :cond_77
    iget-object v1, p0, Lcom/bbm/g/s;->k:Lcom/bbm/util/bh;

    invoke-virtual {v1}, Lcom/bbm/util/bh;->hashCode()I

    move-result v3

    goto :goto_53
.end method
