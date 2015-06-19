.class Lcom/pinguo/camera360/shop/activity/WebInteration;
.super Lcom/pinguo/camera360/shop/activity/Interaction;
.source "InteractionFactory.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/Interaction;-><init>()V

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/WebInteration;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Ljava/lang/String;I)V
    .registers 6

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/WebInteration;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
