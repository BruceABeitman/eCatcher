.class final Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;->b(Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->g:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/DeleteCacheAndSettingsConfirmationActivity;->finish()V

    return-void
.end method
