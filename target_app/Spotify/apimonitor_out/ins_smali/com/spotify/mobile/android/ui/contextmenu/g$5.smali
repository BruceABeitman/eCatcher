.class final Lcom/spotify/mobile/android/ui/contextmenu/g$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/contextmenu/b/a/b;
.field final synthetic a:J
.field final synthetic b:Lcom/spotify/mobile/android/ui/contextmenu/g;
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/g;J)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$5;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
iput-wide p2, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$5;->a:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$5;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->C:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$5;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;
move-result-object v0
iget-wide v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$5;->a:J
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/c;->b(Landroid/content/Context;J)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/g$5;->b:Lcom/spotify/mobile/android/ui/contextmenu/g;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/g;->a(Lcom/spotify/mobile/android/ui/contextmenu/g;)Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->v(Landroid/content/Context;)V
return-void
.end method