.class final Lcom/spotify/mobile/android/ui/activity/d;
.super Lcom/spotify/mobile/android/ui/activity/c;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/d;->a:Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;

    invoke-direct {p0, p1, p3}, Lcom/spotify/mobile/android/ui/activity/c;-><init>(Lcom/spotify/mobile/android/ui/activity/CreateRenamePlaylistActivity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/d;->b:Landroid/content/ContentValues;

    const-string v1, "uri"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
