.class public Lcom/pinguo/camera360/shop/activity/InteractionFactory;
.super Ljava/lang/Object;
.source "InteractionFactory.java"


# instance fields
.field private mContext:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/InteractionFactory;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;)Lcom/pinguo/camera360/shop/activity/Interaction;
    .registers 7

    const/4 v2, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_11

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1b

    new-instance v3, Lcom/pinguo/camera360/shop/activity/NullInteration;

    invoke-direct {v3}, Lcom/pinguo/camera360/shop/activity/NullInteration;-><init>()V

    :goto_10
    return-object v3

    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v3, Lcom/pinguo/camera360/shop/activity/NullInteration;

    invoke-direct {v3}, Lcom/pinguo/camera360/shop/activity/NullInteration;-><init>()V

    goto :goto_10

    :cond_1b
    const-string/jumbo v3, "http"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    new-instance v3, Lcom/pinguo/camera360/shop/activity/WebInteration;

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/InteractionFactory;->mContext:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/pinguo/camera360/shop/activity/WebInteration;-><init>(Landroid/content/Context;)V

    goto :goto_10

    :cond_2c
    const-string/jumbo v3, "app"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    new-instance v3, Lcom/pinguo/camera360/shop/activity/AppInteration;

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/InteractionFactory;->mContext:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/pinguo/camera360/shop/activity/AppInteration;-><init>(Landroid/app/Activity;)V

    goto :goto_10

    :cond_3d
    const-string/jumbo v3, "component"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    new-instance v3, Lcom/pinguo/camera360/shop/activity/ComponentInteration;

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/InteractionFactory;->mContext:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/pinguo/camera360/shop/activity/ComponentInteration;-><init>(Landroid/content/Context;)V

    goto :goto_10

    :cond_4e
    new-instance v3, Lcom/pinguo/camera360/shop/activity/NullInteration;

    invoke-direct {v3}, Lcom/pinguo/camera360/shop/activity/NullInteration;-><init>()V

    goto :goto_10
.end method
