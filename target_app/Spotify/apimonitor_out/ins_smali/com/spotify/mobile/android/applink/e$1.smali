.class final Lcom/spotify/mobile/android/applink/e$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/session/d;
.field final synthetic a:Z
.field final synthetic b:Lcom/spotify/mobile/android/applink/e;
.method constructor <init>(Lcom/spotify/mobile/android/applink/e;Z)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/applink/e$1;->b:Lcom/spotify/mobile/android/applink/e;
iput-boolean p2, p0, Lcom/spotify/mobile/android/applink/e$1;->a:Z
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/service/session/a;)V
.registers 4
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/session/a;->c()Z
move-result v0
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e$1;->b:Lcom/spotify/mobile/android/applink/e;
invoke-static {v0}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/spotify/mobile/android/applink/e;)Lcom/spotify/mobile/android/applink/a;
move-result-object v0
invoke-interface {v0}, Lcom/spotify/mobile/android/applink/a;->c()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e$1;->b:Lcom/spotify/mobile/android/applink/e;
iget-boolean v1, p0, Lcom/spotify/mobile/android/applink/e$1;->a:Z
invoke-static {v0, v1}, Lcom/spotify/mobile/android/applink/e;->a(Lcom/spotify/mobile/android/applink/e;Z)V
:cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/applink/e$1;->b:Lcom/spotify/mobile/android/applink/e;
invoke-static {v0}, Lcom/spotify/mobile/android/applink/e;->c(Lcom/spotify/mobile/android/applink/e;)Lcom/spotify/mobile/android/service/media/MediaService;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/applink/e$1;->b:Lcom/spotify/mobile/android/applink/e;
invoke-static {v1}, Lcom/spotify/mobile/android/applink/e;->b(Lcom/spotify/mobile/android/applink/e;)Lcom/spotify/mobile/android/service/session/d;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/media/MediaService;->b(Lcom/spotify/mobile/android/service/session/d;)V
:cond_28
return-void
.end method