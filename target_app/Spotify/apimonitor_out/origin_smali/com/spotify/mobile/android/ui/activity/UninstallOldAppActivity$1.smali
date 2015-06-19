.class final Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const-string v0, "package:com.spotify.mobile.android.ui"

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;->a(Lcom/spotify/mobile/android/ui/activity/UninstallOldAppActivity;)V

    :cond_1d
    return-void
.end method
