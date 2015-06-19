.class final Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->a(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_19
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
