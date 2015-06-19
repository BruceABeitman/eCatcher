.class final Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;->c:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;->c:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->aa:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->cc:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    new-instance v0, Lcom/spotify/mobile/android/ui/activity/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;->c:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/activity/a;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;->c:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->e(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/a;->d(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/a;->e(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/a;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;->c:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->b(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/a;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/a;->b()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;->c:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity$5;->c:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->finish()V

    return-void
.end method
