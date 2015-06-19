.class final Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->a(Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->setResult(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialReminderActivity;->finish()V

    return-void
.end method
