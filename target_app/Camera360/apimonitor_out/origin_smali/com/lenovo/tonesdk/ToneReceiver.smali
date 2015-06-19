.class public final Lcom/lenovo/tonesdk/ToneReceiver;
.super Ljava/lang/Object;
.source "ToneReceiver.java"

# interfaces
.implements Lcom/lenovo/tonesdk/IToneReceiver;


# instance fields
.field private a:Lcom/lenovo/anyshare/sdk/internal/cu;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/tonesdk/ToneReceiver;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/tonesdk/ToneReceiver;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public start(Lcom/lenovo/tonesdk/ToneReceiverListener;)V
    .registers 4

    invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/lenovo/tonesdk/ToneReceiver;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    if-nez v0, :cond_13

    new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cu;

    new-instance v1, Lcom/lenovo/tonesdk/ToneReceiver$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/tonesdk/ToneReceiver$1;-><init>(Lcom/lenovo/tonesdk/ToneReceiver;Lcom/lenovo/tonesdk/ToneReceiverListener;)V

    invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cu;-><init>(Lcom/lenovo/anyshare/sdk/internal/dg;)V

    iput-object v0, p0, Lcom/lenovo/tonesdk/ToneReceiver;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    :cond_13
    iget-object v0, p0, Lcom/lenovo/tonesdk/ToneReceiver;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cu;->a()Z

    return-void
.end method

.method public stop()V
    .registers 2

    iget-object v0, p0, Lcom/lenovo/tonesdk/ToneReceiver;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/lenovo/tonesdk/ToneReceiver;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cu;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/tonesdk/ToneReceiver;->a:Lcom/lenovo/anyshare/sdk/internal/cu;

    :cond_c
    return-void
.end method
