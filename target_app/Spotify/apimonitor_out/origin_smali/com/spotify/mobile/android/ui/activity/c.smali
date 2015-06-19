.class Lcom/spotify/mobile/android/ui/activity/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/ui/activity/g;


# instance fields
.field protected b:Landroid/content/ContentValues;

.field protected c:Ljava/lang/String;

.field final synthetic d:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/spotify/mobile/android/ui/activity/c;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/c;->d:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/c;->b:Landroid/content/ContentValues;

    iput-object p2, p0, Lcom/spotify/mobile/android/ui/activity/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/activity/g;
    .registers 4

    const-string v0, "Don\'t set the playlist or folder name to null, underlying layers don\'t like it"

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v0, 0x1

    :goto_c
    const-string v1, "Don\'t set the playlist or folder name to empty, underlying layers don\'t like it"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/c;->b:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_19
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public a()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/c;->b:Landroid/content/ContentValues;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Must set the new name of the playlist or folder."

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/c;->d:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/c;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/f;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/c;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :goto_22
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/c;->d:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->o(Landroid/content/Context;)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/c;->d:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/spotify/mobile/android/provider/p;->a()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/c;->b:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_22
.end method
