.class  Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;
.super Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/browse/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/a;Landroid/os/Handler;Ljava/lang/Class;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-direct {p0, p2, p3}, Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;-><init>(Landroid/os/Handler;Ljava/lang/Class;)V
return-void
.end method
.method protected onError(Ljava/lang/Throwable;Lcom/spotify/mobile/android/cosmos/ParsingCallbackReceiver$ErrorCause;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Lcom/spotify/mobile/android/spotlets/browse/a;)Z
move-result v0
if-nez v0, :cond_18
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->b(Lcom/spotify/mobile/android/spotlets/browse/a;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->b:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils;->a(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;)V
:cond_18
return-void
.end method
.method protected synthetic onResolved(Lcom/spotify/cosmos/router/Response;Ljava/lang/Object;)V
.registers 8
const/4 v2, 0x0
check-cast p2, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedClusters;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Lcom/spotify/mobile/android/spotlets/browse/a;)Z
move-result v0
if-nez v0, :cond_57
iget-object v0, p2, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedClusters;->clusters:[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;
array-length v1, v0
if-lez v1, :cond_9c
aget-object v1, v0, v2
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;->recommendedPlaylists:[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;
aget-object v0, v0, v2
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;->description:Ljava/lang/String;
aget-object v2, v1, v2
iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylist;->imageUri:Ljava/lang/String;
invoke-static {v2}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/browse/a;->e(Lcom/spotify/mobile/android/spotlets/browse/a;)Lcom/spotify/mobile/android/spotlets/browse/a/f;
move-result-object v3
invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/browse/a/f;->clear()V
invoke-virtual {v3, v1}, Lcom/spotify/mobile/android/spotlets/browse/a/f;->addAll([Ljava/lang/Object;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v3, p2, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedClusters;->recType:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_58
:goto_3e
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/a;->a(Ljava/lang/String;)V
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_8b
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/a;->i(Lcom/spotify/mobile/android/spotlets/browse/a;)Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j(Lcom/spotify/mobile/android/spotlets/browse/a;)Z
:goto_57
:cond_57
return-void
:cond_58
const-string v0, "newUserGeneric"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_68
const v0, 0x7f0f00e8
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
goto :goto_3e
:cond_68
const-string v0, "newUserPersonalized"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_78
const v0, 0x7f0f00e9
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
goto :goto_3e
:cond_78
const-string v0, "existingUser"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_88
const v0, 0x7f0f00ea
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->getText(I)Ljava/lang/CharSequence;
move-result-object v0
goto :goto_3e
:cond_88
const-string v0, ""
goto :goto_3e
:cond_8b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->b(Lcom/spotify/mobile/android/spotlets/browse/a;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->c:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils;->a(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;)V
goto :goto_57
:cond_9c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->b(Lcom/spotify/mobile/android/spotlets/browse/a;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/BrowseStartFragment$8;->a:Lcom/spotify/mobile/android/spotlets/browse/a;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;->d:Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils;->a(Landroid/support/v4/app/FragmentActivity;Lcom/spotify/mobile/android/spotlets/browse/util/RecommendationUtils$FailType;)V
goto :goto_57
.end method