.class final Lcom/spotify/mobile/android/service/SpotifyService$5;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/SpotifyService;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/SpotifyService;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService$5;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$5;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$5;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v1}, Lcom/spotify/mobile/android/service/SpotifyService;->b(Lcom/spotify/mobile/android/service/SpotifyService;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/SpotifyService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$5;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->c(Lcom/spotify/mobile/android/service/SpotifyService;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$5;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$5;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
