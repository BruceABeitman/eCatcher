.class public final Lcom/spotify/mobile/android/e/h;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/e/m;)V
    .registers 6

    const-string v0, "HeadsetPlug"

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/e/m;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/e/h;->a:Landroid/content/Context;

    new-instance v0, Lcom/spotify/mobile/android/e/h$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/h$1;-><init>(Lcom/spotify/mobile/android/e/h;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/e/h;->b:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/spotify/mobile/android/e/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/h;->b:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/e/h;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/e/h;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
