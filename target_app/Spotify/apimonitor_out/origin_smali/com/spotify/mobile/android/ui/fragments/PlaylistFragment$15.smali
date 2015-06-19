.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$15;
.super Landroid/support/v4/view/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$15;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-direct {p0}, Landroid/support/v4/view/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$15;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->i(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/paste/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$15;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->i(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/paste/a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$15;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->i(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/paste/a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$15;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->i(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/view/paste/a;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final b()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
