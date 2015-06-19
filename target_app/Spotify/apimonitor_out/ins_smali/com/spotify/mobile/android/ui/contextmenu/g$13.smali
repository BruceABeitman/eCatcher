.class final Lcom/spotify/mobile/android/ui/contextmenu/g$13;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/spotify/mobile/android/ui/contextmenu/g;
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/g;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$13;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$13;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$13;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->M:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$13;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$13;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->c(Lcom/spotify/mobile/android/ui/contextmenu/g;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$13;->a:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$13;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->k(Landroid/content/Context;)V
const-class v0, Lcom/spotify/mobile/android/util/ac;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ac;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ac;->b()V
return-void
.end method