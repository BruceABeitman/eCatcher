.class final Lcom/instagram/common/analytics/y;
.super Landroid/os/Handler;
.source "InstagramAnalyticsLogger.java"


# instance fields
.field final synthetic a:Lcom/instagram/common/analytics/x;


# direct methods
.method constructor <init>(Lcom/instagram/common/analytics/x;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/analytics/y;->a:Lcom/instagram/common/analytics/x;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/instagram/common/analytics/y;->a:Lcom/instagram/common/analytics/x;

    invoke-static {v0}, Lcom/instagram/common/analytics/x;->a(Lcom/instagram/common/analytics/x;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/instagram/common/analytics/y;->a:Lcom/instagram/common/analytics/x;

    new-instance v1, Lcom/instagram/common/analytics/ag;

    iget-object v2, p0, Lcom/instagram/common/analytics/y;->a:Lcom/instagram/common/analytics/x;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/ag;-><init>(Lcom/instagram/common/analytics/x;B)V

    invoke-static {v0, v1}, Lcom/instagram/common/analytics/x;->a(Lcom/instagram/common/analytics/x;Ljava/lang/Runnable;)V

    goto :goto_a
.end method
