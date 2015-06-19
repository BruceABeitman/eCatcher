.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$13;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$13;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->g(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$13;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$13;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$13;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->g(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$13;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v3}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->h(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_8
.end method
