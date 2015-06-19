.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/view/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$18;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$18;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->o(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Lcom/spotify/mobile/android/ui/actions/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$18;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$18;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->b(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/o;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Landroid/net/Uri;Z)V

    return-void
.end method
