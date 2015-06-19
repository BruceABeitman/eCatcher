.class final Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->a(Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;)Lcom/spotify/mobile/android/ui/actions/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->J:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->b(Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->n:Lcom/spotify/mobile/android/util/cz;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Z)Lcom/spotify/mobile/android/util/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V

    :cond_33
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->c(Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;)Lcom/spotify/mobile/android/ui/actions/d;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/app/Activity;)V

    return-void
.end method
