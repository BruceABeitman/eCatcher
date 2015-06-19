.class final Lcom/spotify/mobile/android/e/n$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/e/n;-><init>(Lcom/spotify/mobile/android/service/SpotifyService;Lcom/spotify/mobile/android/service/managers/d;Lcom/spotify/mobile/android/e/p;Lcom/spotify/mobile/android/e/m;Lcom/spotify/mobile/android/service/aj;Lcom/spotify/mobile/android/service/ai;Lcom/spotify/mobile/android/service/managers/ConnectManager;Lcom/spotify/mobile/android/service/managers/f;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/e/n;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/e/n;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/e/n$1;->a:Lcom/spotify/mobile/android/e/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$1;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->a(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/e/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->i()Lcom/spotify/mobile/android/e/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/spotify/mobile/android/e/n$1;->a:Lcom/spotify/mobile/android/e/n;

    invoke-static {v0}, Lcom/spotify/mobile/android/e/n;->b(Lcom/spotify/mobile/android/e/n;)Lcom/spotify/mobile/android/service/managers/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/managers/d;->a(Z)V

    :cond_1a
    return-void
.end method
