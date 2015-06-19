.class Lcom/glympse/android/hal/u;
.super Ljava/lang/Object;
.source "ControlsFactory.java"

# interfaces
.implements Lcom/glympse/android/hal/GUiControlListener;


# instance fields
.field private aM:Lcom/glympse/android/hal/GUiControlListener;

.field private aN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/glympse/android/hal/GUiControlListener;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/hal/u;->aM:Lcom/glympse/android/hal/GUiControlListener;

    iput-object p2, p0, Lcom/glympse/android/hal/u;->aN:Ljava/lang/String;

    return-void
.end method

.method private clear()V
    .registers 3

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/u;->aN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/glympse/android/kit/send/GlympseHolder;->clearGlympseLite(Ljava/lang/String;)V

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/u;->aN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/glympse/android/kit/send/GlympseHolder;->clearGlympse(Ljava/lang/String;)V

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/u;->aN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/glympse/android/kit/send/GlympseHolder;->clearTicket(Ljava/lang/String;)V

    invoke-static {}, Lcom/glympse/android/kit/send/GlympseHolder;->instance()Lcom/glympse/android/kit/send/GlympseHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/u;->aN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/glympse/android/kit/send/GlympseHolder;->clearControlListener(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/glympse/android/hal/u;->aM:Lcom/glympse/android/hal/GUiControlListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/glympse/android/hal/u;->aM:Lcom/glympse/android/hal/GUiControlListener;

    invoke-interface {v0}, Lcom/glympse/android/hal/GUiControlListener;->onCancelled()V

    :cond_9
    invoke-direct {p0}, Lcom/glympse/android/hal/u;->clear()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method

.method public onCompleted()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/glympse/android/hal/u;->aM:Lcom/glympse/android/hal/GUiControlListener;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/glympse/android/hal/u;->aM:Lcom/glympse/android/hal/GUiControlListener;

    invoke-interface {v0}, Lcom/glympse/android/hal/GUiControlListener;->onCompleted()V

    :cond_9
    invoke-direct {p0}, Lcom/glympse/android/hal/u;->clear()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    goto :goto_c
.end method
