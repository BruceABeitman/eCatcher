.class final Lcom/spotify/mobile/android/spotlets/socialchart/c$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/socialchart/b;
.field final synthetic b:Lcom/spotify/mobile/android/spotlets/socialchart/c$1;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/c$1;Lcom/spotify/mobile/android/spotlets/socialchart/b;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1$1;->b:Lcom/spotify/mobile/android/spotlets/socialchart/c$1;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1$1;->b:Lcom/spotify/mobile/android/spotlets/socialchart/c$1;
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->a(Lcom/spotify/mobile/android/spotlets/socialchart/c;)Lcom/spotify/mobile/android/spotlets/socialchart/b/a;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/socialchart/b;->getTrackUri()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/socialchart/b;->a()I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/socialchart/b/a;->a(Ljava/lang/String;I)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "spotify:internal:social_chart:listeners:track"
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/socialchart/b;->b()Lcom/spotify/mobile/android/spotlets/socialchart/model/TrackModel;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1$1;->b:Lcom/spotify/mobile/android/spotlets/socialchart/c$1;
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/socialchart/c$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/c$1$1;->b:Lcom/spotify/mobile/android/spotlets/socialchart/c$1;
iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/socialchart/c$1;->a:Lcom/spotify/mobile/android/spotlets/socialchart/c;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/socialchart/c;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const-string v3, "spotify:internal:social_chart:listeners"
const/4 v4, 0x0
invoke-static {v2, v3, v4, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method