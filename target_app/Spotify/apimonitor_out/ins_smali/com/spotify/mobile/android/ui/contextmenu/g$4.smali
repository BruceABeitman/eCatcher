.class final Lcom/spotify/mobile/android/ui/contextmenu/g$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/spotify/mobile/android/ui/contextmenu/g;
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$4;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$4;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$4;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->r:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$4;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$4;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$4;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$4;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method