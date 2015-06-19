.class public final Lcom/instagram/user/userservice/b/b;
.super Lcom/instagram/api/k/a/e;
.source "SuggestionsUserListResponse.java"

# interfaces
.implements Lcom/instagram/user/userservice/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/k/a/e",
        "<",
        "Lcom/instagram/user/userservice/b/b;",
        ">;",
        "Lcom/instagram/user/userservice/c;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/user/userservice/b/c;",
            ">;"
        }
    .end annotation
.end field

.field b:J

.field private c:J

.field private d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/instagram/api/k/a/e;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/user/userservice/b/b;->c:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/user/userservice/b/b;->d:Ljava/util/Set;

    return-object v0
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/user/userservice/b/b;->c:J

    return-wide v0
.end method

.method final c()Lcom/instagram/user/userservice/b/b;
    .registers 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/instagram/user/userservice/b/b;->b:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/instagram/user/userservice/b/b;->c:J

    iget-object v0, p0, Lcom/instagram/user/userservice/b/b;->a:Ljava/util/List;

    if-eqz v0, :cond_41

    new-instance v0, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lcom/instagram/user/userservice/b/b;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/user/userservice/b/b;->d:Ljava/util/Set;

    iget-object v0, p0, Lcom/instagram/user/userservice/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_23
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/userservice/b/c;

    iget-object v2, v0, Lcom/instagram/user/userservice/b/c;->b:Ljava/util/List;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/instagram/user/userservice/b/b;->d:Ljava/util/Set;

    iget-object v0, v0, Lcom/instagram/user/userservice/b/c;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_23

    :cond_3b
    iget-object v0, p0, Lcom/instagram/user/userservice/b/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_40
    return-object p0

    :cond_41
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object v0, p0, Lcom/instagram/user/userservice/b/b;->d:Ljava/util/Set;

    goto :goto_40
.end method
