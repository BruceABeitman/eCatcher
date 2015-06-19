.class final Lcom/bbm/ui/activities/wn;
.super Lcom/bbm/j/u;
.source "MainActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/wn;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/af;->v()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    iget-object v2, p0, Lcom/bbm/ui/activities/wn;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v2}, Lcom/bbm/d/a;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    iget-object v3, p0, Lcom/bbm/ui/activities/wn;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v3, v2}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v2

    iget-object v3, v2, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v3, v4, :cond_35

    move v0, v1

    goto :goto_c

    :cond_35
    iget-object v1, v2, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-eq v1, v3, :cond_c

    iget-object v1, v2, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_55

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/bbm/ui/activities/wo;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/wo;-><init>(Lcom/bbm/ui/activities/wn;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    :cond_55
    invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/af;->w()V

    goto :goto_c

    :cond_5d
    move v0, v1

    goto :goto_c
.end method
