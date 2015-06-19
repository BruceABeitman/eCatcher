.class Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$3;
.super Ljava/lang/Object;
.source "PushSimpleBean.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/push/business/simple/PushSimpleBean;->notity(Landroid/content/Context;Lcom/pinguo/camera360/push/PushBean;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    new-instance v1, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    iget-object v2, p0, Lcom/pinguo/camera360/push/business/simple/PushSimpleBean$3;->val$context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->schedule()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "push"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Refresh adv list by push msg silently:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
