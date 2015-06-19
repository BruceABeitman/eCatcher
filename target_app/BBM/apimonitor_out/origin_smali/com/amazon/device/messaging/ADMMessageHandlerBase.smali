.class public abstract Lcom/amazon/device/messaging/ADMMessageHandlerBase;
.super Landroid/app/IntentService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final onHandleIntent(Landroid/content/Intent;)V
    .registers 4

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract onMessage(Landroid/content/Intent;)V
.end method

.method protected abstract onRegistered(Ljava/lang/String;)V
.end method

.method protected abstract onRegistrationError(Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Ljava/lang/String;)V
.end method
