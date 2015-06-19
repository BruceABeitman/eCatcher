.class final Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$1;
.super Lcom/spotify/mobile/android/util/am;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;Landroid/support/v4/app/y;Landroid/support/v4/app/z;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/util/am;-><init>(Landroid/support/v4/app/y;Landroid/support/v4/app/z;)V
return-void
.end method
.method public final a(Landroid/database/Cursor;)Ljava/lang/CharSequence;
.registers 3
const/4 v0, 0x1
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method