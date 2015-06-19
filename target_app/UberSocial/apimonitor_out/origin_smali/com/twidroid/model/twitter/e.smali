.class public Lcom/twidroid/model/twitter/e;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/model/twitter/a;


# static fields
.field static final a:Ljava/lang/String; = "TwitterListArray"

.field private static final b:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/twidroid/model/twitter/d;
    .registers 5

    invoke-virtual {p0}, Lcom/twidroid/model/twitter/e;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/d;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/d;)Z
    .registers 7

    invoke-virtual {p0}, Lcom/twidroid/model/twitter/e;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/d;

    invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v2

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/d;->g()I

    move-result v3

    if-ne v2, v3, :cond_4

    invoke-virtual {v0, p2}, Lcom/twidroid/model/twitter/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
