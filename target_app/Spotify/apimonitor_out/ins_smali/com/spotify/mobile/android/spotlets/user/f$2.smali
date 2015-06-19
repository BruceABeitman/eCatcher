.class final Lcom/spotify/mobile/android/spotlets/user/f$2;
.super Lcom/spotify/mobile/android/ui/menus/c;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/user/f;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/user/f;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/f$2;->a:Lcom/spotify/mobile/android/spotlets/user/f;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/menus/c;-><init>()V
return-void
.end method
.method public final a()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/f$2;->a:Lcom/spotify/mobile/android/spotlets/user/f;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/user/f;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
return-object v0
.end method
.method public final b()Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 3
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->D:Lcom/spotify/mobile/android/util/ea;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/f$2;->a:Lcom/spotify/mobile/android/spotlets/user/f;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/user/f;->a(Lcom/spotify/mobile/android/spotlets/user/f;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v0
return-object v0
.end method