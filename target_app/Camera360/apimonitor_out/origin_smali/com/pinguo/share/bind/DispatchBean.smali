.class public Lcom/pinguo/share/bind/DispatchBean;
.super Ljava/lang/Object;
.source "DispatchBean.java"


# instance fields
.field private array:[Lcom/pinguo/share/website/WebSiteInfoBean;

.field private auth:Ljava/lang/String;

.field private bindArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private lastLocale:Ljava/lang/String;

.field private locationTime:J

.field private share:Ljava/lang/String;

.field private timespan:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWebSite(Ljava/lang/String;Landroid/content/Context;)Lcom/pinguo/share/website/WebSiteInfoBean;
    .registers 7

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getBindArray()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getBindArray()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_1b
    :goto_1b
    return-object v2

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/share/website/WebSiteInfoBean;

    iget-object v4, v1, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    move-object v2, v1

    goto :goto_1b
.end method


# virtual methods
.method public getArray()[Lcom/pinguo/share/website/WebSiteInfoBean;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/DispatchBean;->array:[Lcom/pinguo/share/website/WebSiteInfoBean;

    return-object v0
.end method

.method public getArrayForList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/pinguo/share/bind/DispatchBean;->getArray()[Lcom/pinguo/share/website/WebSiteInfoBean;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_a
.end method

.method public getAuth()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/DispatchBean;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public getBindArray()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/share/bind/DispatchBean;->bindArray:Ljava/util/List;

    return-object v0
.end method

.method public getLastLocale()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/DispatchBean;->lastLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationTime()J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/share/bind/DispatchBean;->locationTime:J

    return-wide v0
.end method

.method public getShare()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/share/bind/DispatchBean;->share:Ljava/lang/String;

    return-object v0
.end method

.method public getTimespan()J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/share/bind/DispatchBean;->timespan:J

    return-wide v0
.end method

.method public getWebSite(Ljava/lang/String;)Lcom/pinguo/share/website/WebSiteInfoBean;
    .registers 7

    iget-object v2, p0, Lcom/pinguo/share/bind/DispatchBean;->array:[Lcom/pinguo/share/website/WebSiteInfoBean;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v3, :cond_8

    const/4 v0, 0x0

    :cond_7
    return-object v0

    :cond_8
    aget-object v0, v2, v1

    iget-object v4, v0, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public refreshBindArray()V
    .registers 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pinguo/share/bind/DispatchBean;->bindArray:Ljava/util/List;

    iget-object v2, p0, Lcom/pinguo/share/bind/DispatchBean;->array:[Lcom/pinguo/share/website/WebSiteInfoBean;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_b
    if-lt v1, v3, :cond_e

    return-void

    :cond_e
    aget-object v0, v2, v1

    invoke-virtual {v0}, Lcom/pinguo/share/website/WebSiteInfoBean;->getNickName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/pinguo/share/bind/DispatchBean;->bindArray:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public setArray([Lcom/pinguo/share/website/WebSiteInfoBean;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/DispatchBean;->array:[Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-virtual {p0}, Lcom/pinguo/share/bind/DispatchBean;->refreshBindArray()V

    return-void
.end method

.method public setAuth(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/DispatchBean;->auth:Ljava/lang/String;

    return-void
.end method

.method public setLastLocale(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/DispatchBean;->lastLocale:Ljava/lang/String;

    return-void
.end method

.method public setLocationTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/share/bind/DispatchBean;->locationTime:J

    return-void
.end method

.method public setShare(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/bind/DispatchBean;->share:Ljava/lang/String;

    return-void
.end method

.method public setTimespan(J)V
    .registers 3

    iput-wide p1, p0, Lcom/pinguo/share/bind/DispatchBean;->timespan:J

    return-void
.end method
