.class public Lcom/pinguo/share/website/WebSiteDefaultControl;
.super Ljava/lang/Object;
.source "WebSiteDefaultControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;
    }
.end annotation


# static fields
.field public static final MSG_SITE_CODE:Ljava/lang/String; = "noto"

.field public static final WX_FRIENDS_SITE_CODE:Ljava/lang/String; = "circle"

.field public static final WX_SITE_CODE:Ljava/lang/String; = "weixin"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentShareBitmapList(Landroid/content/Context;I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/pinguo/share/website/WebSiteDefaultControl;->getWebListForShare(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_12
    if-lt v0, v1, :cond_15

    return-object v4

    :cond_15
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-virtual {v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->isBindedWebSite()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->getOnBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_2b
    invoke-virtual {v3}, Lcom/pinguo/share/website/WebSiteInfoBean;->getOffBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28
.end method

.method public static getWebListForShare(Landroid/content/Context;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/share/website/WebSiteInfoBean;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;

    move-result-object v1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->getBindArray()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_18

    invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->getBindArray()Ljava/util/List;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_18
    invoke-static {}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->getShowWeb()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    sub-int v5, v8, v9

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_29
    if-ge v0, v5, :cond_31

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_32

    :cond_31
    return-object v4

    :cond_32
    const/4 v2, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_37
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_42

    :goto_3d
    if-eqz v2, :cond_5c

    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    :cond_42
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    #getter for: Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->site_code:Ljava/lang/String;
    invoke-static {v8}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->access$2(Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v7, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_37

    const/4 v2, 0x1

    goto :goto_3d

    :cond_5c
    new-instance v7, Lcom/pinguo/share/website/WebSiteInfoBean;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    #getter for: Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->site_code:Ljava/lang/String;
    invoke-static {v8}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->access$2(Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;

    invoke-virtual {v8, p0}, Lcom/pinguo/share/website/WebSiteDefaultControl$DefaultWeb;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v9, v8}, Lcom/pinguo/share/website/WebSiteInfoBean;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v7, p0, v9}, Lcom/pinguo/share/bind/BindSharedPreferences;->getBindIcon(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f
.end method
