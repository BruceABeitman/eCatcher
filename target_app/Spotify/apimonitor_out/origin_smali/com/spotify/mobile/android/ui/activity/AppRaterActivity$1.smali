.class final Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aj:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->b(Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->a(Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/AppRaterActivity;->finish()V

    return-void
.end method
