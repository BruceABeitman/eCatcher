.class final Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->a(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->finish()V

    goto :goto_8
.end method
