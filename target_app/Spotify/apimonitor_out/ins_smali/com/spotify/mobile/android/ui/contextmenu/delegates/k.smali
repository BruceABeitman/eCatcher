.class public abstract Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
.field private final b:Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;
.method protected constructor <init>(Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k$1;-><init>(Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;
iput-object p1, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
return-void
.end method
.method protected abstract a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
.end method
.method protected abstract a(Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;
.end method
.method public final a(Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)V
.registers 5
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->a()Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;->b(Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)V
:goto_9
return-void
:cond_a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;
move-result-object v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/b/a/a;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;->a:Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;->c()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;->b:Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;
invoke-virtual {p0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/delegates/k;->a(Ljava/lang/String;Lcom/spotify/mobile/android/ui/contextmenu/b/c/b;)Lcom/spotify/mobile/android/ui/contextmenu/b/c/a;
move-result-object v1
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/b/a/c;->a(Lcom/spotify/mobile/android/ui/contextmenu/e;)V
goto :goto_9
.end method
.method protected abstract b(Lcom/spotify/mobile/android/ui/contextmenu/b/b/b;)V
.end method