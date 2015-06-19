.class final Lcom/millennialmedia/a/a/b/a/p$18;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/a/a/b/a/p;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/m;
    .registers 5

    sget-object v0, Lcom/millennialmedia/a/a/b/a/p$26;->a:[I

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/millennialmedia/a/a/d/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_15
    new-instance v0, Lcom/millennialmedia/a/a/s;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/String;)V

    :goto_1e
    return-object v0

    :pswitch_1f
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/millennialmedia/a/a/s;

    new-instance v2, Lcom/millennialmedia/a/a/b/i;

    invoke-direct {v2, v1}, Lcom/millennialmedia/a/a/b/i;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/Number;)V

    goto :goto_1e

    :pswitch_2e
    new-instance v0, Lcom/millennialmedia/a/a/s;

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/s;-><init>(Ljava/lang/Boolean;)V

    goto :goto_1e

    :pswitch_3c
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    sget-object v0, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;

    goto :goto_1e

    :pswitch_42
    new-instance v0, Lcom/millennialmedia/a/a/j;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/j;-><init>()V

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->a()V

    :goto_4a
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/j;->a(Lcom/millennialmedia/a/a/m;)V

    goto :goto_4a

    :cond_58
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->b()V

    goto :goto_1e

    :pswitch_5c
    new-instance v0, Lcom/millennialmedia/a/a/p;

    invoke-direct {v0}, Lcom/millennialmedia/a/a/p;-><init>()V

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->c()V

    :goto_64
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->e()Z

    move-result v1

    if-eqz v1, :cond_76

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/m;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/a/a/p;->a(Ljava/lang/String;Lcom/millennialmedia/a/a/m;)V

    goto :goto_64

    :cond_76
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->d()V

    goto :goto_1e

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_2e
        :pswitch_15
        :pswitch_3c
        :pswitch_42
        :pswitch_5c
    .end packed-switch
.end method

.method public a(Lcom/millennialmedia/a/a/d/d;Lcom/millennialmedia/a/a/m;)V
    .registers 6

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/m;->s()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_8
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;

    :goto_b
    return-void

    :cond_c
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/m;->r()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/m;->v()Lcom/millennialmedia/a/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->y()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->c()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/Number;)Lcom/millennialmedia/a/a/d/d;

    goto :goto_b

    :cond_24
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->b()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->n()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->a(Z)Lcom/millennialmedia/a/a/d/d;

    goto :goto_b

    :cond_32
    invoke-virtual {v0}, Lcom/millennialmedia/a/a/s;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/d;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;

    goto :goto_b

    :cond_3a
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/m;->p()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->b()Lcom/millennialmedia/a/a/d/d;

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/m;->u()Lcom/millennialmedia/a/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/j;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/m;

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/d;Lcom/millennialmedia/a/a/m;)V

    goto :goto_4b

    :cond_5b
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->c()Lcom/millennialmedia/a/a/d/d;

    goto :goto_b

    :cond_5f
    invoke-virtual {p2}, Lcom/millennialmedia/a/a/m;->q()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->d()Lcom/millennialmedia/a/a/d/d;

    invoke-virtual {p2}, Lcom/millennialmedia/a/a/m;->t()Lcom/millennialmedia/a/a/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/millennialmedia/a/a/p;->b()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/millennialmedia/a/a/d/d;->a(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/d;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/a/a/m;

    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/d;Lcom/millennialmedia/a/a/m;)V

    goto :goto_74

    :cond_93
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->e()Lcom/millennialmedia/a/a/d/d;

    goto/16 :goto_b

    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t write "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
    .registers 3

    check-cast p2, Lcom/millennialmedia/a/a/m;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/d;Lcom/millennialmedia/a/a/m;)V

    return-void
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$18;->a(Lcom/millennialmedia/a/a/d/a;)Lcom/millennialmedia/a/a/m;

    move-result-object v0

    return-object v0
.end method
