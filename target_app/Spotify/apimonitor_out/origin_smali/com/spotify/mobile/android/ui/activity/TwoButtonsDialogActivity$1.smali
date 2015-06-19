.class final Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->a(Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;)Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->g:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->finish()V

    return-void
.end method
