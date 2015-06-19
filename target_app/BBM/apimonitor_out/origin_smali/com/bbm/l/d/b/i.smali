.class final Lcom/bbm/l/d/b/i;
.super Lcom/bbm/j/u;
.source "GooglePlayMethod.java"


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/bbm/l/d/b/v;

.field final synthetic c:Lcom/bbm/l/d/b/h;


# direct methods
.method constructor <init>(Lcom/bbm/l/d/b/h;Ljava/util/List;Lcom/bbm/l/d/b/v;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/l/d/b/i;->c:Lcom/bbm/l/d/b/h;

    iput-object p2, p0, Lcom/bbm/l/d/b/i;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/bbm/l/d/b/i;->b:Lcom/bbm/l/d/b/v;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 7

    sget-object v0, Lcom/bbm/l/d/b/c;->d:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->A()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->b()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gj;

    iget-object v0, v0, Lcom/bbm/d/gj;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/l/d/b/i;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3e
    :goto_3e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/l/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3e

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    iget-object v4, p0, Lcom/bbm/l/d/b/i;->b:Lcom/bbm/l/d/b/v;

    invoke-virtual {v4, v0}, Lcom/bbm/l/d/b/v;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    iget-object v4, p0, Lcom/bbm/l/d/b/i;->b:Lcom/bbm/l/d/b/v;

    invoke-virtual {v4, v0}, Lcom/bbm/l/d/b/v;->a(Ljava/lang/String;)Lcom/bbm/l/d/b/x;

    move-result-object v0

    iget v4, v0, Lcom/bbm/l/d/b/x;->m:I

    if-nez v4, :cond_3e

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_70
    sget-object v0, Lcom/bbm/l/e;->b:Lcom/bbm/l/e;

    new-instance v1, Lcom/bbm/l/d/b/j;

    invoke-direct {v1, p0, v2}, Lcom/bbm/l/d/b/j;-><init>(Lcom/bbm/l/d/b/i;Ljava/util/ArrayList;)V

    invoke-static {v2, v0, v1}, Lcom/bbm/l/a;->a(Ljava/util/List;Lcom/bbm/l/e;Lcom/bbm/l/d;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bbm/l/d/b/c;->a(Lcom/bbm/j/u;)Lcom/bbm/j/u;

    invoke-static {}, Lcom/bbm/l/d/b/c;->p()Z

    move-result v0

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/bbm/l/d/b/i;->c:Lcom/bbm/l/d/b/h;

    iget-object v0, v0, Lcom/bbm/l/d/b/h;->c:Lcom/bbm/l/a;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/bbm/l/d/b/i;->c:Lcom/bbm/l/d/b/h;

    iget-object v0, v0, Lcom/bbm/l/d/b/h;->c:Lcom/bbm/l/a;

    invoke-static {}, Lcom/bbm/l/a;->b()V

    :cond_91
    const/4 v0, 0x1

    goto/16 :goto_d
.end method
