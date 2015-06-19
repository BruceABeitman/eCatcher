.class final Lcom/userzoom/ba;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/userzoom/az;


# direct methods
.method constructor <init>(Lcom/userzoom/az;)V
    .registers 2

    iput-object p1, p0, Lcom/userzoom/ba;->a:Lcom/userzoom/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    const-wide/16 v0, 0x1f4

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_17

    :goto_5
    iget-object v0, p0, Lcom/userzoom/ba;->a:Lcom/userzoom/az;

    iget-object v0, v0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v0, p0, Lcom/userzoom/ba;->a:Lcom/userzoom/az;

    iget-object v0, v0, Lcom/userzoom/az;->a:Lcom/userzoom/ay;

    iget-object v0, v0, Lcom/userzoom/ay;->c:Landroid/webkit/WebView;

    invoke-static {}, Lcom/userzoom/ap;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/userzoom/ay;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
