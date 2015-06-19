.class final Lcom/spotify/mobile/android/spotlets/search/b$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/search/player/d;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/b;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/b$3;->a:Lcom/spotify/mobile/android/spotlets/search/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)V
.registers 5
iget-object v0, p1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->contextUri:Ljava/lang/String;
iget-object v1, p2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->contextUri:Ljava/lang/String;
invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_14
iget-object v0, p1, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->trackUri:Ljava/lang/String;
iget-object v1, p2, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;->trackUri:Ljava/lang/String;
invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1b
:cond_14
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/b$3;->a:Lcom/spotify/mobile/android/spotlets/search/b;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/b;->ag:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a()V
:cond_1b
return-void
.end method