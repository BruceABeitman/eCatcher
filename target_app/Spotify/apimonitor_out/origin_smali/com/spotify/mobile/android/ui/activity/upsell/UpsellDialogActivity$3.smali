.class final Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ah:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->b(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->ah:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/activity/upsell/u;

    move-result-object v3

    iget-object v3, v3, Lcom/spotify/mobile/android/ui/activity/upsell/u;->f:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->d(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/actions/d;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/activity/upsell/u;

    move-result-object v1

    iget-object v1, v1, Lcom/spotify/mobile/android/ui/activity/upsell/u;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->c(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->finish()V

    return-void
.end method
