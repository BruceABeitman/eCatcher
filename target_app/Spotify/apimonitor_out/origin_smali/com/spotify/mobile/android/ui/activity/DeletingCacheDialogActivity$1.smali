.class final Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/DeletingCacheDialogActivity;->finish()V

    return-void
.end method
