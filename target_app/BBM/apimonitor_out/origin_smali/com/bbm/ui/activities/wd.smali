.class final Lcom/bbm/ui/activities/wd;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/b/f/a/l;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;Lcom/google/b/f/a/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    iput-object p1, p0, Lcom/bbm/ui/activities/wd;->i:Lcom/bbm/ui/activities/MainActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/wd;->a:Lcom/google/b/f/a/l;

    iput-object p3, p0, Lcom/bbm/ui/activities/wd;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bbm/ui/activities/wd;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bbm/ui/activities/wd;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/bbm/ui/activities/wd;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/bbm/ui/activities/wd;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/bbm/ui/activities/wd;->g:Ljava/lang/String;

    iput-object p9, p0, Lcom/bbm/ui/activities/wd;->h:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/bbm/ui/activities/wd;->a:Lcom/google/b/f/a/l;

    invoke-interface {v0}, Lcom/google/b/f/a/l;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gp;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_20

    iget-object v0, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/bbm/ui/activities/wd;->i:Lcom/bbm/ui/activities/MainActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bbm/ui/activities/wd;->i:Lcom/bbm/ui/activities/MainActivity;

    const v3, 0x7f0e0564

    invoke-virtual {v2, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbm/util/dm;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_1f

    :cond_25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TPA: MONEY TRANSFER receiver RegId: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/wd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " |  message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/wd;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | customMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/wd;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | appId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/wd;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->a()Lcom/bbm/f/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/wd;->i:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/MainActivity;->r(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;

    move-result-object v2

    invoke-static {v2}, Lcom/bbm/util/dm;->b(Lcom/bbm/util/cr;)Lcom/bbm/f/ac;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/wd;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/wd;->f:Ljava/lang/String;

    new-instance v4, Lcom/bbm/d/bb;

    invoke-direct {v4, v2, v3}, Lcom/bbm/d/bb;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/bbm/ui/activities/wd;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/activities/wd;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/bbm/d/bb;->a(Ljava/lang/String;)Lcom/bbm/d/bb;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    new-instance v1, Lcom/bbm/ui/activities/we;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/we;-><init>(Lcom/bbm/ui/activities/wd;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bbm/j/u;->c()V

    goto/16 :goto_1f
.end method
