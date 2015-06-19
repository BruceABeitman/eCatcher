.class final Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
.field private final b:[Ljava/lang/String;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$2;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "is_followed"
aput-object v2, v0, v1
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$2;->b:[Ljava/lang/String;
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$2;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->c(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$2;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->d(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/provider/b;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$2;->b:[Ljava/lang/String;
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 5
const/4 v0, 0x0
check-cast p2, Landroid/database/Cursor;
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v1
if-eqz v1, :cond_19
invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v1
if-eqz v1, :cond_10
const/4 v0, 0x1
:cond_10
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader$2;->a:Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;->b(Lcom/spotify/mobile/android/spotlets/artist/model/FollowLoader;)Lcom/spotify/mobile/android/spotlets/artist/model/g;
move-result-object v1
invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/artist/model/g;->a(Lcom/spotify/mobile/android/spotlets/artist/model/g;Z)V
:cond_19
return-void
.end method