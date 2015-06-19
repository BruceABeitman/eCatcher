.class final Lcom/spotify/mobile/android/service/af;
.super Lcom/spotify/mobile/android/service/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;


# direct methods
.method private constructor <init>(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/af;->a:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/n;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/af;-><init>(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/af;->a:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->a(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/spotify/mobile/android/service/af;->a:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->a(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/service/ae;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/af;->a:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/service/ae;-><init>(Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/spotify/mobile/android/service/af;->a:Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ServiceShutdownReceiver;->b()V

    goto :goto_19
.end method
