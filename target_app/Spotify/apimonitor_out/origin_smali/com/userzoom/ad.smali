.class public final Lcom/userzoom/ad;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Luserzoom/com/InterceptDialog;


# direct methods
.method public constructor <init>(Luserzoom/com/InterceptDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/userzoom/ad;->a:Luserzoom/com/InterceptDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_23

    :goto_5
    iget-object v0, p0, Lcom/userzoom/ad;->a:Luserzoom/com/InterceptDialog;

    iget-object v0, p0, Lcom/userzoom/ad;->a:Luserzoom/com/InterceptDialog;

    invoke-static {v0}, Luserzoom/com/InterceptDialog;->b(Luserzoom/com/InterceptDialog;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {}, Lcom/userzoom/ap;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/userzoom/ag;

    invoke-direct {v3, v0, v1}, Lcom/userzoom/ag;-><init>(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_23
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
