.class final Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->b(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->c(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Lcom/spotify/mobile/android/ui/activity/g;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/spotify/mobile/android/ui/activity/g;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/g;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->c(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Lcom/spotify/mobile/android/ui/activity/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/g;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->finish()V

    return-void
.end method
