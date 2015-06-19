.class final Lcom/bbm/ui/activities/xm;
.super Lcom/bbm/j/u;
.source "MainActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bbm/h/aq;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/MainActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bbm/ui/activities/xm;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    iput-object p2, p0, Lcom/bbm/ui/activities/xm;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/bbm/ui/activities/xm;->c:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/bbm/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/xm;->d:Lcom/bbm/h/aq;

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 11

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/xm;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/ui/activities/xm;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;

    move-result-object v3

    iget-object v3, v3, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v3, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;

    sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v0, v4, :cond_2b

    move v0, v1

    :goto_2a
    return v0

    :cond_2b
    iget-object v0, p0, Lcom/bbm/ui/activities/xm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v5, p0, Lcom/bbm/ui/activities/xm;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v5}, Lcom/bbm/ui/activities/MainActivity;->b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;

    move-result-object v5

    iget-object v5, v5, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    invoke-virtual {v5, v0}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v0

    iget-object v5, v0, Lcom/bbm/g/a;->w:Lcom/bbm/util/bh;

    sget-object v6, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-eq v5, v6, :cond_51

    move v0, v1

    goto :goto_2a

    :cond_51
    iget-object v5, p0, Lcom/bbm/ui/activities/xm;->d:Lcom/bbm/h/aq;

    iget-object v6, v0, Lcom/bbm/g/a;->v:Ljava/lang/String;

    iget-object v0, v0, Lcom/bbm/g/a;->r:Ljava/lang/String;

    sget-object v7, Lcom/bbm/h/aq;->b:Lcom/bbm/d;

    iget-object v7, v7, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "bbmpim://user/pin/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/bbm/g/an;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/cd;

    move-result-object v6

    invoke-virtual {v5, v0}, Lcom/bbm/h/aq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/bbm/g/cd;->b(Ljava/lang/String;)Lcom/bbm/g/cd;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_31

    :cond_7d
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_81
    const/4 v0, 0x1

    goto :goto_2a
.end method
