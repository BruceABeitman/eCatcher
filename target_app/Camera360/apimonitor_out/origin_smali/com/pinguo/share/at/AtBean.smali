.class public Lcom/pinguo/share/at/AtBean;
.super Ljava/lang/Object;
.source "AtBean.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x7bL


# instance fields
.field private lastTime:J

.field private mAttentionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/share/at/AtAttentionBean;",
            ">;"
        }
    .end annotation
.end field

.field private mLastestKeys:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private site_code:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/share/at/AtBean;->mAttentionMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getLastTime()J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/share/at/AtBean;->lastTime:J

    return-wide v0
.end method

.method public getLastestAttention()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/at/AtAttentionBean;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/pinguo/share/at/AtBean;->mLastestKeys:Ljava/util/LinkedList;

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/pinguo/share/at/AtBean;->mLastestKeys:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_38

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/pinguo/share/at/AtBean;->mLastestKeys:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1e

    :goto_1d
    return-object v0

    :cond_1e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/share/at/AtBean;->mAttentionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/pinguo/share/at/AtBean;->mAttentionMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/share/at/AtAttentionBean;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_38
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getSite_code()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/at/AtBean;->site_code:Ljava/lang/String;

    return-object v0
.end method

.method public getmAttentionMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/share/at/AtAttentionBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/share/at/AtBean;->mAttentionMap:Ljava/util/Map;

    return-object v0
.end method

.method public getmLastestKeys()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/share/at/AtBean;->mLastestKeys:Ljava/util/LinkedList;

    return-object v0
.end method

.method public setLastTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/share/at/AtBean;->lastTime:J

    return-void
.end method

.method public setSite_code(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/at/AtBean;->site_code:Ljava/lang/String;

    return-void
.end method

.method public setmAttentionMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/pinguo/share/at/AtAttentionBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pinguo/share/at/AtBean;->mAttentionMap:Ljava/util/Map;

    return-void
.end method

.method public setmLastestKeys(Ljava/util/LinkedList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/pinguo/share/at/AtBean;->mLastestKeys:Ljava/util/LinkedList;

    return-void
.end method
