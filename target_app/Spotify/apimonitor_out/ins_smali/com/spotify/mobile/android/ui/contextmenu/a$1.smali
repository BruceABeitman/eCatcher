.class final Lcom/spotify/mobile/android/ui/contextmenu/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/aa;
.field final synthetic a:Lcom/spotify/mobile/android/ui/contextmenu/a;
.method constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$1;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final d(Z)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$1;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/a;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$1;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/a;)Lcom/spotify/mobile/android/ui/contextmenu/c;
move-result-object v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$1;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Lcom/spotify/mobile/android/ui/contextmenu/a;)Lcom/spotify/mobile/android/ui/contextmenu/c;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$1;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/contextmenu/a;->b(Lcom/spotify/mobile/android/ui/contextmenu/a;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/d;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/a$1;->a:Lcom/spotify/mobile/android/ui/contextmenu/a;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/contextmenu/a;->c(Lcom/spotify/mobile/android/ui/contextmenu/a;)Z
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;Z)V
:cond_22
return-void
.end method