.class final Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->a(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Lcom/spotify/mobile/android/service/connections/b;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->b(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->c(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Lcom/spotify/mobile/android/service/ConnectDevice;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->a(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Lcom/spotify/mobile/android/service/connections/b;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->c(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Lcom/spotify/mobile/android/service/ConnectDevice;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/service/ConnectDevice;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;->a(Ljava/lang/String;)V

    :cond_2b
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->au:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->a(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->finish()V

    return-void
.end method