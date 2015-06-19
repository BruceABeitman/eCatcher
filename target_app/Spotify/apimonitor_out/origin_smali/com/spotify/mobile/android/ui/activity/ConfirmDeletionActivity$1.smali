.class final Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->a(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "We need a non-null content uri"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->c(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)Lcom/spotify/mobile/android/ui/actions/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->a(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->b(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Landroid/net/Uri;J)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->finish()V

    return-void
.end method
