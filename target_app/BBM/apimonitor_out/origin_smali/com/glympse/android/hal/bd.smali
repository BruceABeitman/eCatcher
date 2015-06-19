.class Lcom/glympse/android/hal/bd;
.super Landroid/content/BroadcastReceiver;
.source "ProximityProvider.java"


# instance fields
.field private D:Landroid/app/PendingIntent;

.field private cN:Lcom/glympse/android/core/GRegion;

.field final synthetic cO:Lcom/glympse/android/hal/bc;


# direct methods
.method public constructor <init>(Lcom/glympse/android/hal/bc;Landroid/app/PendingIntent;Lcom/glympse/android/core/GRegion;)V
    .registers 4

    iput-object p1, p0, Lcom/glympse/android/hal/bd;->cO:Lcom/glympse/android/hal/bc;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/glympse/android/hal/bd;->D:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/glympse/android/hal/bd;->cN:Lcom/glympse/android/core/GRegion;

    return-void
.end method


# virtual methods
.method public L()Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/glympse/android/hal/bd;->D:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.glympse.android.hal.proximity.REGION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/glympse/android/hal/bd;->cO:Lcom/glympse/android/hal/bc;

    invoke-static {v0}, Lcom/glympse/android/hal/bc;->a(Lcom/glympse/android/hal/bc;)Lcom/glympse/android/core/GProximityListener;

    move-result-object v0

    if-eqz v0, :cond_28

    const-string v0, "entering"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/glympse/android/hal/bd;->cO:Lcom/glympse/android/hal/bc;

    invoke-static {v0}, Lcom/glympse/android/hal/bc;->a(Lcom/glympse/android/hal/bc;)Lcom/glympse/android/core/GProximityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/bd;->cN:Lcom/glympse/android/core/GRegion;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GProximityListener;->regionEntered(Lcom/glympse/android/core/GRegion;)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/glympse/android/hal/bd;->cO:Lcom/glympse/android/hal/bc;

    invoke-static {v0}, Lcom/glympse/android/hal/bc;->a(Lcom/glympse/android/hal/bc;)Lcom/glympse/android/core/GProximityListener;

    move-result-object v0

    iget-object v1, p0, Lcom/glympse/android/hal/bd;->cN:Lcom/glympse/android/core/GRegion;

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GProximityListener;->regionLeft(Lcom/glympse/android/core/GRegion;)V

    goto :goto_28
.end method
