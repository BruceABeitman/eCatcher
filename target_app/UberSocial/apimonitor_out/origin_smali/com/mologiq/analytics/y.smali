.class public Lcom/mologiq/analytics/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/util/List;

.field private final b:Ljava/util/Map;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mologiq/analytics/y;->f:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/mologiq/analytics/y;->a:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mologiq/analytics/y;->b:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1b
    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    iput-object p4, p0, Lcom/mologiq/analytics/y;->c:Ljava/lang/String;

    int-to-long v0, p5

    iput-wide v0, p0, Lcom/mologiq/analytics/y;->d:J

    iput-object p6, p0, Lcom/mologiq/analytics/y;->e:Ljava/lang/String;

    return-void

    :cond_29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_1b

    iget-object v3, p0, Lcom/mologiq/analytics/y;->b:Ljava/util/Map;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b
.end method

.method private a()V
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/mologiq/analytics/y;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_c

    :goto_b
    return-void

    :cond_c
    invoke-static {v0}, Lcom/mologiq/analytics/ai;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_116

    const/4 v1, 0x1

    move v3, v1

    :goto_1a
    invoke-static {}, Lcom/mologiq/analytics/af;->c()Lcom/mologiq/analytics/af;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mologiq/analytics/af;->a(Landroid/content/Context;)V

    new-instance v4, Lcom/mologiq/analytics/c;

    invoke-direct {v4}, Lcom/mologiq/analytics/c;-><init>()V

    invoke-virtual {v1}, Lcom/mologiq/analytics/af;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/c;->e(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mologiq/analytics/af;->o()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/mologiq/analytics/c;->a(Z)V

    invoke-virtual {v1}, Lcom/mologiq/analytics/af;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/c;->f(Ljava/lang/String;)V

    const-string v1, "1.2.9"

    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/c;->a(Ljava/lang/String;)V

    const-string v1, "2014-07-08"

    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/c;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c7

    const-string v1, ""

    :goto_4d
    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/c;->c(Ljava/lang/String;)V

    new-instance v5, Lcom/mologiq/analytics/d;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v4}, Lcom/mologiq/analytics/d;-><init>(Lcom/mologiq/analytics/c;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/mologiq/analytics/d;->a(Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/mologiq/analytics/y;->c:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/mologiq/analytics/d;->a(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/mologiq/analytics/y;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/mologiq/analytics/d;->b(Ljava/lang/Long;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/mologiq/analytics/d;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mologiq/analytics/y;->b:Ljava/util/Map;

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/mologiq/analytics/y;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_9c

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/mologiq/analytics/y;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_93
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_cc

    invoke-virtual {v5, v6}, Lcom/mologiq/analytics/d;->a(Ljava/util/List;)V

    :cond_9c
    iget-object v1, p0, Lcom/mologiq/analytics/y;->e:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/mologiq/analytics/c;->d(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/mologiq/analytics/c;->a(I)V

    iget-object v1, p0, Lcom/mologiq/analytics/y;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_aa
    :goto_aa
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_ec

    invoke-virtual {v4}, Lcom/mologiq/analytics/c;->l()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/mologiq/analytics/y;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b7} :catch_b9

    goto/16 :goto_b

    :catch_b9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_c7
    :try_start_c7
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_4d

    :cond_cc
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/mologiq/analytics/y;->b:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v8, Lcom/mologiq/analytics/e;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v8, v5}, Lcom/mologiq/analytics/e;-><init>(Lcom/mologiq/analytics/d;)V

    invoke-virtual {v8, v1}, Lcom/mologiq/analytics/e;->a(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Lcom/mologiq/analytics/e;->b(Ljava/lang/String;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    :cond_ec
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mologiq/analytics/z;

    sget-object v3, Lcom/mologiq/analytics/z;->a:Lcom/mologiq/analytics/z;

    invoke-virtual {v1, v3}, Lcom/mologiq/analytics/z;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fe

    invoke-virtual {v4, v5}, Lcom/mologiq/analytics/c;->b(Lcom/mologiq/analytics/d;)V

    goto :goto_aa

    :cond_fe
    sget-object v3, Lcom/mologiq/analytics/z;->b:Lcom/mologiq/analytics/z;

    invoke-virtual {v1, v3}, Lcom/mologiq/analytics/z;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10a

    invoke-virtual {v4, v5}, Lcom/mologiq/analytics/c;->a(Lcom/mologiq/analytics/d;)V

    goto :goto_aa

    :cond_10a
    sget-object v3, Lcom/mologiq/analytics/z;->c:Lcom/mologiq/analytics/z;

    invoke-virtual {v1, v3}, Lcom/mologiq/analytics/z;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    invoke-virtual {v4, v5}, Lcom/mologiq/analytics/c;->c(Lcom/mologiq/analytics/d;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_115} :catch_b9

    goto :goto_aa

    :cond_116
    move v3, v1

    goto/16 :goto_1a
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 11

    new-instance v0, Lcom/mologiq/analytics/ai;

    invoke-direct {v0, p1}, Lcom/mologiq/analytics/ai;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/mologiq/analytics/ae;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mologiq/analytics/ae;->f()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x1f4

    const/16 v5, 0x3e8

    const/4 v6, 0x1

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;IIZ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_26

    invoke-virtual {v7, v0}, Lcom/mologiq/analytics/ae;->b(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Lcom/mologiq/analytics/ae;->b(Landroid/content/Context;)Z

    :cond_26
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/y;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    invoke-static {v0}, Lcom/mologiq/analytics/ae;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mologiq/analytics/ae;->c()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/mologiq/analytics/y;->a()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    goto :goto_a

    :catch_19
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;)V

    goto :goto_a
.end method
