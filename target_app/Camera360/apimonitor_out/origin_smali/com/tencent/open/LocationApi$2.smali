.class Lcom/tencent/open/LocationApi$2;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/LocationApi;->searchNearby(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/open/LocationApi;


# direct methods
.method constructor <init>(Lcom/tencent/open/LocationApi;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/open/LocationApi$2;->a:Lcom/tencent/open/LocationApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/tencent/open/LocationApi$2;->a:Lcom/tencent/open/LocationApi;

    invoke-static {v0}, Lcom/tencent/open/LocationApi;->b(Lcom/tencent/open/LocationApi;)Lcom/tencent/open/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/open/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/tencent/open/LocationApi$2;->a:Lcom/tencent/open/LocationApi;

    invoke-static {v0}, Lcom/tencent/open/LocationApi;->c(Lcom/tencent/open/LocationApi;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/tencent/open/LocationApi$2;->a:Lcom/tencent/open/LocationApi;

    invoke-static {v0}, Lcom/tencent/open/LocationApi;->c(Lcom/tencent/open/LocationApi;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1b
.end method
