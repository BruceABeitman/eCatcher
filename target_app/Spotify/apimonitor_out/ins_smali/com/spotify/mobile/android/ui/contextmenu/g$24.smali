.class final Lcom/spotify/mobile/android/ui/contextmenu/g$24;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/spotify/mobile/android/ui/contextmenu/g;
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$24;->c:Lcom/spotify/mobile/android/ui/contextmenu/g;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$24;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$24;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$24;->c:Lcom/spotify/mobile/android/ui/contextmenu/g;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->t:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$24;->c:Lcom/spotify/mobile/android/ui/contextmenu/g;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$24;->c:Lcom/spotify/mobile/android/ui/contextmenu/g;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$24;->a:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$24;->b:Ljava/lang/String;
invoke-static {v1, v2, v3}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method