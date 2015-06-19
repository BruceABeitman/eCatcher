.class Lcom/twidroid/service/StreamingService$1;
.super Lcom/twidroid/net/a/c/a/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twidroid/service/StreamingService;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/service/StreamingService;


# direct methods
.method constructor <init>(Lcom/twidroid/service/StreamingService;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-direct {p0}, Lcom/twidroid/net/a/c/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/model/twitter/c;)V
    .registers 4

    invoke-static {}, Lcom/twidroid/service/StreamingService;->a()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/j;

    invoke-interface {v0, p1}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;)V

    goto :goto_8

    :cond_18
    return-void
.end method

.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/DirectMessage;)V
    .registers 11

    const/4 v3, 0x3

    const/4 v5, 0x0

    invoke-static {}, Lcom/twidroid/service/StreamingService;->a()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/j;

    invoke-interface {v0, p1, p2}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/DirectMessage;)V

    goto :goto_a

    :cond_1a
    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->v()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->C()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p2}, Lcom/twidroid/model/twitter/DirectMessage;->h()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v6

    cmp-long v0, v0, v6

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ai()Z

    move-result v0

    if-nez v0, :cond_5e

    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    const v1, 0x7f0c0162

    iget-object v2, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-virtual {v2}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/twidroid/d/v;->m(Landroid/content/Context;)I

    move-result v4

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    :cond_5d
    :goto_5d
    return-void

    :cond_5e
    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-virtual {p2}, Lcom/twidroid/model/twitter/DirectMessage;->hashCode()I

    move-result v1

    move-object v2, p2

    move v4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    goto :goto_5d
.end method

.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/Tweet;)V
    .registers 10

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/twidroid/service/StreamingService;->a()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/j;

    invoke-interface {v0, p1, p2}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/Tweet;)V

    goto :goto_b

    :cond_1b
    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->v()Z

    move-result v0

    if-nez v0, :cond_28

    :cond_27
    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->E()Z

    move-result v0

    if-eqz v0, :cond_64

    iget-boolean v0, p2, Lcom/twidroid/model/twitter/Tweet;->ax:Z

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ai()Z

    move-result v0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    const v1, 0x7f0c0163

    iget-object v2, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-virtual {v2}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/twidroid/d/v;->p(Landroid/content/Context;)I

    move-result v4

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    goto :goto_27

    :cond_58
    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-virtual {p2}, Lcom/twidroid/model/twitter/Tweet;->hashCode()I

    move-result v1

    move-object v2, p2

    move v4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    goto :goto_27

    :cond_64
    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->A()Z

    move-result v0

    if-eqz v0, :cond_90

    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->ai()Z

    move-result v0

    if-nez v0, :cond_bc

    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    const v1, 0x7f0c0164

    iget-object v2, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-virtual {v2}, Lcom/twidroid/service/StreamingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/twidroid/d/v;->q(Landroid/content/Context;)I

    move-result v4

    move-object v2, p2

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->B()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p2, Lcom/twidroid/model/twitter/Tweet;->A:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p2}, Lcom/twidroid/model/twitter/Tweet;->v()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-virtual {p2}, Lcom/twidroid/model/twitter/Tweet;->hashCode()I

    move-result v2

    const/4 v4, 0x4

    move-object v3, p2

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    goto/16 :goto_27

    :cond_bc
    iget-object v1, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-virtual {p2}, Lcom/twidroid/model/twitter/Tweet;->hashCode()I

    move-result v2

    move-object v3, p2

    move v4, v6

    move v6, v5

    invoke-virtual/range {v1 .. v6}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    goto :goto_90
.end method

.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/a/c/a/l;)V
    .registers 15

    const/4 v4, 0x0

    invoke-static {}, Lcom/twidroid/service/StreamingService;->a()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/j;

    invoke-interface {v0, p1, p2}, Lcom/twidroid/net/a/c/a/j;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/net/a/c/a/l;)V

    goto :goto_9

    :cond_19
    sget-object v0, Lcom/twidroid/service/StreamingService$4;->a:[I

    invoke-virtual {p2}, Lcom/twidroid/net/a/c/a/l;->a()Lcom/twidroid/net/a/c/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/net/a/c/a/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ac

    :cond_28
    :goto_28
    return-void

    :pswitch_29
    invoke-virtual {p2}, Lcom/twidroid/net/a/c/a/l;->d()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {p2}, Lcom/twidroid/net/a/c/a/l;->c()Lcom/twidroid/model/twitter/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/twidroid/net/a/c/a/l;->c()Lcom/twidroid/model/twitter/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/twidroid/model/twitter/Tweet;->ap:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/twidroid/net/a/c/a/l;->c()Lcom/twidroid/model/twitter/User;

    move-result-object v0

    iget-wide v0, v0, Lcom/twidroid/model/twitter/User;->b:J

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v5

    cmp-long v0, v0, v5

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v0}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->F()Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->hashCode()I

    move-result v1

    const/4 v3, 0x6

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    goto :goto_28

    :pswitch_69
    invoke-virtual {p2}, Lcom/twidroid/net/a/c/a/l;->c()Lcom/twidroid/model/twitter/User;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-static {v1}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/service/StreamingService;)Lcom/twidroid/d/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twidroid/d/v;->G()Z

    move-result v1

    if-eqz v1, :cond_28

    new-instance v5, Lcom/twidroid/service/StreamingService$1$1;

    const-wide/16 v7, -0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v11, Lcom/twidroid/ui/StringUrlSpan;

    const-string v1, ""

    const-string v2, ""

    invoke-direct {v11, v1, v2}, Lcom/twidroid/ui/StringUrlSpan;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    move-object v6, p0

    invoke-direct/range {v5 .. v11}, Lcom/twidroid/service/StreamingService$1$1;-><init>(Lcom/twidroid/service/StreamingService$1;JJLcom/twidroid/ui/StringUrlSpan;)V

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/twidroid/model/twitter/CommunicationEntity;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/twidroid/model/twitter/CommunicationEntity;->b(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/twidroid/service/StreamingService$1;->a:Lcom/twidroid/service/StreamingService;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/User;->hashCode()I

    move-result v7

    const/4 v9, 0x5

    move-object v8, v5

    move v10, v4

    move v11, v4

    invoke-virtual/range {v6 .. v11}, Lcom/twidroid/service/StreamingService;->a(ILcom/twidroid/model/twitter/CommunicationEntity;IIZ)V

    goto/16 :goto_28

    nop

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_29
        :pswitch_69
    .end packed-switch
.end method

.method public b(Lcom/twidroid/model/twitter/c;)V
    .registers 4

    invoke-static {}, Lcom/twidroid/service/StreamingService;->a()Ljava/util/concurrent/CopyOnWriteArraySet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/net/a/c/a/j;

    invoke-interface {v0, p1}, Lcom/twidroid/net/a/c/a/j;->b(Lcom/twidroid/model/twitter/c;)V

    goto :goto_8

    :cond_18
    return-void
.end method
