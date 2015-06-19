.class final Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;


# direct methods
.method constructor <init>(Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$3;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$3;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;

    iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$3;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;

    const-string v2, "com.spotify.mobile.android.service.action.RESTART_APP"

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog$3;->a:Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;

    invoke-virtual {v0}, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/PremiumActivationOptInDialog;->finish()V

    return-void
.end method
