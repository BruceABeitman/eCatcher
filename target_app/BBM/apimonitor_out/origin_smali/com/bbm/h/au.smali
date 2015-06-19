.class final Lcom/bbm/h/au;
.super Ljava/lang/Object;
.source "InviteUtil.java"

# interfaces
.implements Lcom/bbm/j/s;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bbm/h/aq;


# direct methods
.method constructor <init>(Lcom/bbm/h/aq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/bbm/h/au;->e:Lcom/bbm/h/aq;

    iput-object p2, p0, Lcom/bbm/h/au;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/h/au;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bbm/h/au;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/bbm/h/au;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 6

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/bbm/h/au;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;

    move-result-object v2

    iget-object v0, v2, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;

    sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v3, :cond_17

    const/4 v0, 0x0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/bbm/h/au;->e:Lcom/bbm/h/aq;

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Lcom/bbm/h/aq;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_27
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gs;

    iget-object v0, v0, Lcom/bbm/d/gs;->c:Ljava/lang/String;

    iget-object v4, v2, Lcom/bbm/d/fv;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v2, Lcom/bbm/d/fv;->b:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    :cond_43
    invoke-static {v1}, Lcom/bbm/h/aq;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/bbm/h/au;->e:Lcom/bbm/h/aq;

    iget-object v1, p0, Lcom/bbm/h/au;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/h/au;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/h/au;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/h/au;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bbm/h/aq;->a(Lcom/bbm/h/aq;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_16
.end method
