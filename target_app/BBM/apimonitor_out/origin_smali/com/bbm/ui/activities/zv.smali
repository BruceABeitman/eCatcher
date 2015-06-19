.class final Lcom/bbm/ui/activities/zv;
.super Lcom/bbm/j/u;
.source "OpenInBbmActivity.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bbm/ui/activities/OpenInBbmActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/OpenInBbmActivity;Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/ui/activities/zv;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/zv;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/ui/activities/zv;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/bbm/ui/activities/zv;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 11

    const v9, 0x7f0e0576

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/bbm/ui/activities/zv;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    iget-object v2, v2, Lcom/bbm/ui/activities/OpenInBbmActivity;->a:Lcom/bbm/d/b/f;

    invoke-virtual {v2}, Lcom/bbm/d/b/f;->f()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/activities/zv;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/bbm/d/a;->y(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v3

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/zv;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bbm/d/a;->z(Ljava/lang/String;)Lcom/bbm/d/fl;

    move-result-object v4

    sget-object v5, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-eq v3, v5, :cond_2b

    iget-object v5, v4, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    sget-object v6, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v5, v6, :cond_2d

    :cond_2b
    move v0, v1

    :goto_2c
    return v0

    :cond_2d
    sget-object v5, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-eq v3, v5, :cond_3f

    if-eqz v4, :cond_3f

    iget-object v3, v4, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;

    sget-object v5, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-eq v3, v5, :cond_3f

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_56

    :cond_3f
    iget-object v1, p0, Lcom/bbm/ui/activities/zv;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    iget-object v2, p0, Lcom/bbm/ui/activities/zv;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    iget-object v3, p0, Lcom/bbm/ui/activities/zv;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-virtual {v3, v9}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/activities/zv;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    const v5, 0x7f0e0562

    invoke-virtual {v4, v5}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Lcom/bbm/ui/activities/OpenInBbmActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_56
    iget-object v2, p0, Lcom/bbm/ui/activities/zv;->b:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;

    move-result-object v3

    iget-wide v5, v3, Lcom/bbm/d/gp;->v:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_89

    iget-object v2, p0, Lcom/bbm/ui/activities/zv;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    iget-object v3, p0, Lcom/bbm/ui/activities/zv;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    iget-object v4, p0, Lcom/bbm/ui/activities/zv;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-virtual {v4, v9}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/zv;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    const v6, 0x7f0e0574

    new-array v7, v0, [Ljava/lang/Object;

    const-string v8, ""

    aput-object v8, v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/bbm/ui/activities/OpenInBbmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/bbm/ui/activities/OpenInBbmActivity;->a(Lcom/bbm/ui/activities/OpenInBbmActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_89
    iget-object v1, p0, Lcom/bbm/ui/activities/zv;->d:Lcom/bbm/ui/activities/OpenInBbmActivity;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;

    move-result-object v3

    iget-wide v5, v3, Lcom/bbm/d/gp;->v:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/bbm/ui/activities/zv;->c:Ljava/lang/String;

    invoke-static {v1, v4, v3, v5}, Lcom/bbm/util/dm;->a(Landroid/content/Context;Lcom/bbm/d/fl;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/bbm/ui/activities/zv;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2c
.end method
