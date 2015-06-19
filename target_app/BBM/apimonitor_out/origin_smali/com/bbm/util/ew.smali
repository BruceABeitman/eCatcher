.class public final Lcom/bbm/util/ew;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"


# instance fields
.field public final a:Lcom/bbm/util/ex;

.field public final b:J

.field public final c:Lcom/bbm/d/a/a;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/util/ex;->e:Lcom/bbm/util/ex;

    iput-object v0, p0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bbm/util/ew;->b:J

    iput-object v4, p0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    iput-object v4, p0, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/util/ex;->f:Lcom/bbm/util/ex;

    iput-object v0, p0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    iput-wide v0, p0, Lcom/bbm/util/ew;->b:J

    iput-object v2, p0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    iput-object v2, p0, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bbm/b/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/util/ex;->d:Lcom/bbm/util/ex;

    iput-object v0, p0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    iget-object v0, p1, Lcom/bbm/b/a;->o:Lorg/json/JSONObject;

    const-string v1, "orderingIndex"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bbm/util/ew;->b:J

    iput-object p1, p0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bbm/d/fy;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/util/ex;->c:Lcom/bbm/util/ex;

    iput-object v0, p0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    iget-object v0, p1, Lcom/bbm/d/fy;->q:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bbm/util/ew;->b:J

    iput-object p1, p0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bbm/d/fz;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/util/ex;->a:Lcom/bbm/util/ex;

    iput-object v0, p0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    iget-wide v0, p1, Lcom/bbm/d/fz;->e:J

    iput-wide v0, p0, Lcom/bbm/util/ew;->b:J

    iput-object p1, p0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bbm/g/ak;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/util/ex;->b:Lcom/bbm/util/ex;

    iput-object v0, p0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    iget-wide v0, p1, Lcom/bbm/g/ak;->k:J

    iput-wide v0, p0, Lcom/bbm/util/ew;->b:J

    iput-object p1, p0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    iput-object p2, p0, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    sget-object v1, Lcom/bbm/util/ex;->a:Lcom/bbm/util/ex;

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/d/fz;

    iget-object v0, v0, Lcom/bbm/d/fz;->a:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    sget-object v1, Lcom/bbm/util/ex;->b:Lcom/bbm/util/ex;

    if-ne v0, v1, :cond_33

    iget-object v0, p0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/g/ak;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bbm/util/ew;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/bbm/g/ak;->l:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_33
    iget-object v0, p0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    sget-object v1, Lcom/bbm/util/ex;->d:Lcom/bbm/util/ex;

    if-ne v0, v1, :cond_40

    iget-object v0, p0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/b/a;

    iget-object v0, v0, Lcom/bbm/b/a;->h:Ljava/lang/String;

    goto :goto_c

    :cond_40
    iget-object v0, p0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    sget-object v1, Lcom/bbm/util/ex;->e:Lcom/bbm/util/ex;

    if-eq v0, v1, :cond_4c

    iget-object v0, p0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    sget-object v1, Lcom/bbm/util/ex;->f:Lcom/bbm/util/ex;

    if-ne v0, v1, :cond_51

    :cond_4c
    invoke-static {}, Lcom/bbm/util/dy;->d()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_51
    iget-object v0, p0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/d/fy;

    iget-object v0, v0, Lcom/bbm/d/fy;->j:Ljava/lang/String;

    goto :goto_c
.end method
