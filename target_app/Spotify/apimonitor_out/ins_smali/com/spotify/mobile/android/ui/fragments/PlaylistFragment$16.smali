.class final Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$16;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/ef;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$16;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a_(Landroid/net/Uri;)V
.registers 4
if-eqz p1, :cond_13
sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment$16;->a:Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;->a(Lcom/spotify/mobile/android/ui/fragments/PlaylistFragment;Ljava/lang/String;)Ljava/lang/String;
:cond_13
return-void
.end method