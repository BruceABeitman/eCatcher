.class final Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;->setResult(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/OfflineSyncErrorActivity;->finish()V

    return-void
.end method
