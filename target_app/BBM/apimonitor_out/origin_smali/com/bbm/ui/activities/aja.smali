.class final Lcom/bbm/ui/activities/aja;
.super Lcom/bbm/j/k;
.source "ViewChannelPostActivity.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bbm/ui/activities/ViewChannelPostActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/ViewChannelPostActivity;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/aja;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 13

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z

    move-result v0

    if-nez v0, :cond_d7

    iget-object v1, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->l(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-virtual {v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/bbm/d/a;->d(Ljava/lang/String;Z)Lcom/bbm/j/x;

    move-result-object v0

    iget-object v2, p0, Lcom/bbm/ui/activities/aja;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/bbm/j/x;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ek;

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Lcom/bbm/d/ek;)Lcom/bbm/d/ek;

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ek;->t:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_be

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/d/ek;->m:Z

    if-nez v0, :cond_63

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/d/ec;->w:Z

    if-eqz v0, :cond_63

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bbm/ui/activities/aja;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bbm/d/z;->a(Ljava/lang/String;Ljava/util/List;)Lcom/bbm/d/av;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->l(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    :cond_63
    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->p(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/ek;->k:Ljava/util/List;

    iget-object v2, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/ek;->s:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/d/ek;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v4}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v4

    iget-boolean v4, v4, Lcom/bbm/d/ek;->i:Z

    iget-object v5, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v5}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v5

    iget-object v5, v5, Lcom/bbm/d/ek;->n:Ljava/lang/String;

    iget-object v6, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v6}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v6

    iget-object v6, v6, Lcom/bbm/d/ek;->c:Ljava/lang/String;

    iget-object v7, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v7}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v7

    iget-object v7, v7, Lcom/bbm/d/ek;->o:Ljava/lang/String;

    iget-object v8, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v8}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v8

    iget-object v8, v8, Lcom/bbm/d/ek;->q:Ljava/lang/String;

    iget-object v9, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v9}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v9

    iget-boolean v9, v9, Lcom/bbm/d/ek;->h:Z

    iget-object v10, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v10}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->k(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ek;

    move-result-object v10

    iget-wide v10, v10, Lcom/bbm/d/ek;->f:J

    invoke-static/range {v0 .. v11}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    :goto_bd
    return-void

    :cond_be
    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->q(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_d1

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->d()V

    goto :goto_bd

    :cond_d1
    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->s(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    goto :goto_bd

    :cond_d7
    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->l(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/aja;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bbm/util/ac;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->v(Ljava/lang/String;)Lcom/bbm/d/fw;

    move-result-object v10

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/util/ac;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10d

    iget-object v0, v10, Lcom/bbm/d/fw;->t:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_10d

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;

    move-result-object v0

    if-eqz v0, :cond_10d

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/d/ec;->w:Z

    if-nez v0, :cond_117

    :cond_10d
    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->i(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_122

    :cond_117
    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->r(Lcom/bbm/ui/activities/ViewChannelPostActivity;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->d()V

    goto :goto_bd

    :cond_122
    iget-object v0, v10, Lcom/bbm/d/fw;->t:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_143

    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    iget-object v1, v10, Lcom/bbm/d/fw;->k:Ljava/util/List;

    iget-object v2, v10, Lcom/bbm/d/fw;->s:Ljava/lang/String;

    iget-object v3, v10, Lcom/bbm/d/fw;->d:Ljava/lang/String;

    iget-boolean v4, v10, Lcom/bbm/d/fw;->i:Z

    iget-object v5, v10, Lcom/bbm/d/fw;->n:Ljava/lang/String;

    iget-object v6, v10, Lcom/bbm/d/fw;->c:Ljava/lang/String;

    iget-object v7, v10, Lcom/bbm/d/fw;->o:Ljava/lang/String;

    iget-object v8, v10, Lcom/bbm/d/fw;->q:Ljava/lang/String;

    iget-boolean v9, v10, Lcom/bbm/d/fw;->h:Z

    iget-wide v10, v10, Lcom/bbm/d/fw;->f:J

    invoke-static/range {v0 .. v11}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->a(Lcom/bbm/ui/activities/ViewChannelPostActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto/16 :goto_bd

    :cond_143
    iget-object v0, p0, Lcom/bbm/ui/activities/aja;->b:Lcom/bbm/ui/activities/ViewChannelPostActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/ViewChannelPostActivity;->s(Lcom/bbm/ui/activities/ViewChannelPostActivity;)V

    goto/16 :goto_bd
.end method
