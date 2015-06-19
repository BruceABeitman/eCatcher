.class final Lcom/spotify/music/spotlets/radio/service/e$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/music/spotlets/radio/service/b;
.field final synthetic a:Lcom/spotify/music/spotlets/radio/service/e;
.method constructor <init>(Lcom/spotify/music/spotlets/radio/service/e;)V
.registers 2
iput-object p1, p0, Lcom/spotify/music/spotlets/radio/service/e$2;->a:Lcom/spotify/music/spotlets/radio/service/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e$2;->a:Lcom/spotify/music/spotlets/radio/service/e;
invoke-static {v0}, Lcom/spotify/music/spotlets/radio/service/e;->c(Lcom/spotify/music/spotlets/radio/service/e;)V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 3
check-cast p1, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
if-eqz p1, :cond_1a
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e$2;->a:Lcom/spotify/music/spotlets/radio/service/e;
invoke-static {v0}, Lcom/spotify/music/spotlets/radio/service/e;->a(Lcom/spotify/music/spotlets/radio/service/e;)Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e$2;->a:Lcom/spotify/music/spotlets/radio/service/e;
invoke-static {v0, p1}, Lcom/spotify/music/spotlets/radio/service/e;->a(Lcom/spotify/music/spotlets/radio/service/e;Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;)Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e$2;->a:Lcom/spotify/music/spotlets/radio/service/e;
invoke-static {v0}, Lcom/spotify/music/spotlets/radio/service/e;->b(Lcom/spotify/music/spotlets/radio/service/e;)V
:cond_1a
return-void
.end method