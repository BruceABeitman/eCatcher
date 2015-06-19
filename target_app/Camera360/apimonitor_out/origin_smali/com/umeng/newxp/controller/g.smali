.class public Lcom/umeng/newxp/controller/g;
.super Ljava/lang/Thread;
.source "SwithAdThread.java"


# instance fields
.field public a:Lcom/umeng/newxp/controller/f$a;

.field final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/umeng/newxp/controller/f$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    new-instance v0, Lcom/umeng/newxp/controller/h;

    invoke-direct {v0, p0}, Lcom/umeng/newxp/controller/h;-><init>(Lcom/umeng/newxp/controller/g;)V

    iput-object v0, p0, Lcom/umeng/newxp/controller/g;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/umeng/newxp/controller/g;->a:Lcom/umeng/newxp/controller/f$a;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    sget-boolean v0, Lcom/umeng/newxp/common/ExchangeConstants;->DEBUG_MODE:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xbb8

    sput v0, Lcom/umeng/newxp/common/ExchangeConstants;->REFRESH_INTERVAL:I

    :cond_8
    sget v0, Lcom/umeng/newxp/common/ExchangeConstants;->REFRESH_INTERVAL:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/umeng/newxp/controller/g;->b:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
