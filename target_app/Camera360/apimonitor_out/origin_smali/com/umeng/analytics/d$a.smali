.class final Lcom/umeng/analytics/d$a;
.super Ljava/lang/Object;
.source "PolicyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/d;

.field private b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/umeng/analytics/d$a;->a:Lcom/umeng/analytics/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/d$a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d$a;->a:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_15

    :try_start_7
    iget-object v0, p0, Lcom/umeng/analytics/d$a;->a:Lcom/umeng/analytics/d;

    iget-object v0, v0, Lcom/umeng/analytics/d;->c:Lcom/umeng/analytics/c;

    iget-object v2, p0, Lcom/umeng/analytics/d$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)V

    monitor-exit v1

    :goto_11
    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_12

    :try_start_14
    throw v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_15} :catch_15

    :catch_15
    move-exception v0

    const-string/jumbo v1, "MobclickAgent"

    const-string/jumbo v2, "Exception occurred in ReportMessageHandler"

    invoke-static {v1, v2, v0}, Lcom/umeng/common/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11
.end method
