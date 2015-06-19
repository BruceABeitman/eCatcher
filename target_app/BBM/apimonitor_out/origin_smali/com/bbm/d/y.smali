.class final Lcom/bbm/d/y;
.super Lcom/bbm/j/u;
.source "BbmdsModel.java"


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/d/x;


# direct methods
.method private constructor <init>(Lcom/bbm/d/x;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/d/y;->b:Lcom/bbm/d/x;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/d/x;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/d/y;-><init>(Lcom/bbm/d/x;)V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 16

    iget-object v0, p0, Lcom/bbm/d/y;->b:Lcom/bbm/d/x;

    iget-object v0, v0, Lcom/bbm/d/x;->c:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/d/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;

    move-result-object v8

    iget-object v0, v8, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_fc

    iget-object v0, p0, Lcom/bbm/d/y;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/bbm/d/y;->b:Lcom/bbm/d/x;

    iget-object v0, v0, Lcom/bbm/d/x;->c:Lcom/bbm/d/a;

    iget-wide v1, v8, Lcom/bbm/d/es;->n:J

    invoke-virtual {v0, v9, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v8, Lcom/bbm/d/es;->n:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_fc

    iget-boolean v1, v0, Lcom/bbm/d/fg;->j:Z

    if-eqz v1, :cond_fa

    iget-object v0, v0, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v1, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-eq v0, v1, :cond_fa

    iget-object v0, p0, Lcom/bbm/d/y;->b:Lcom/bbm/d/x;

    iget-object v0, v0, Lcom/bbm/d/x;->b:Ljava/lang/String;

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_fa

    iget-wide v0, v8, Lcom/bbm/d/es;->n:J

    move-wide v6, v0

    :goto_56
    const-wide/16 v0, 0x1

    cmp-long v0, v6, v0

    if-ltz v0, :cond_e4

    iget-wide v0, v8, Lcom/bbm/d/es;->n:J

    const-wide/16 v2, 0x14

    sub-long/2addr v0, v2

    cmp-long v0, v6, v0

    if-lez v0, :cond_e4

    iget-object v0, p0, Lcom/bbm/d/y;->b:Lcom/bbm/d/x;

    iget-object v0, v0, Lcom/bbm/d/x;->c:Lcom/bbm/d/a;

    invoke-virtual {v0, v9, v6, v7}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v2

    if-eqz v2, :cond_dd

    iget-object v0, v2, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_dd

    iget-boolean v0, v2, Lcom/bbm/d/fg;->j:Z

    if-eqz v0, :cond_dd

    iget-object v0, v2, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;

    sget-object v1, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;

    if-eq v0, v1, :cond_e4

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v1

    iget-boolean v3, v8, Lcom/bbm/d/es;->k:Z

    if-eqz v2, :cond_dd

    iget-object v0, v2, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v4, :cond_dd

    new-instance v0, Ljava/util/Date;

    iget-wide v4, v2, Lcom/bbm/d/fg;->s:J

    const-wide/16 v11, 0x3e8

    mul-long/2addr v4, v11

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v11, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    sub-long/2addr v4, v12

    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    const-wide/16 v12, 0x1

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v11, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_cb

    iget v0, v1, Lcom/bbm/c/c;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/bbm/c/c;->u:I

    iget-wide v11, v1, Lcom/bbm/c/c;->t:J

    add-long/2addr v11, v4

    iput-wide v11, v1, Lcom/bbm/c/c;->t:J

    iget-wide v11, v1, Lcom/bbm/c/c;->t:J

    iget v0, v1, Lcom/bbm/c/c;->u:I

    int-to-long v13, v0

    div-long/2addr v11, v13

    iput-wide v11, v1, Lcom/bbm/c/c;->s:J

    :cond_cb
    iget-object v0, v2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;

    sget-object v11, Lcom/bbm/d/fk;->u:Lcom/bbm/d/fk;

    if-ne v0, v11, :cond_dd

    iget-boolean v0, v2, Lcom/bbm/d/fg;->j:Z

    if-eqz v0, :cond_dd

    new-instance v0, Lcom/bbm/c/f;

    invoke-direct/range {v0 .. v5}, Lcom/bbm/c/f;-><init>(Lcom/bbm/c/c;Lcom/bbm/d/fg;ZJ)V

    invoke-virtual {v0}, Lcom/bbm/c/f;->c()V

    :cond_dd
    const-wide/16 v0, 0x1

    sub-long v0, v6, v0

    move-wide v6, v0

    goto/16 :goto_56

    :cond_e4
    iget-object v0, p0, Lcom/bbm/d/y;->b:Lcom/bbm/d/x;

    iget-object v0, v0, Lcom/bbm/d/x;->c:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/d/y;->a:Ljava/lang/String;

    iget-wide v2, v8, Lcom/bbm/d/es;->n:J

    sget-object v4, Lcom/bbm/d/cc;->a:Lcom/bbm/d/cc;

    new-instance v5, Lcom/bbm/d/cb;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/bbm/d/cb;-><init>(Ljava/lang/String;JLcom/bbm/d/cc;)V

    invoke-virtual {v0, v5}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/d/y;->b:Lcom/bbm/d/x;

    iput-object v10, v0, Lcom/bbm/d/x;->b:Ljava/lang/String;

    :cond_fa
    const/4 v0, 0x1

    :goto_fb
    return v0

    :cond_fc
    const/4 v0, 0x0

    goto :goto_fb
.end method
