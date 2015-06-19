.class final Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;

    invoke-static {}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/PlaybackErrorWifiOnlyActivity;->finish()V

    return-void
.end method
