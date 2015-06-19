.class final Lcom/spotify/mobile/android/spotlets/openaccess/d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/bi;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/d;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/d;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/d$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 4
check-cast p1, Ljava/lang/String;
const/4 v0, 0x0
:try_start_3
new-array v0, v0, [Ljava/lang/Object;
invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-static {}, Lcom/spotify/mobile/android/spotlets/openaccess/d;->a()Lcom/fasterxml/jackson/databind/ObjectMapper;
move-result-object v0
const-class v1, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;
invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/d$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/d;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/d;->a(Lcom/spotify/mobile/android/spotlets/openaccess/d;)Lcom/spotify/mobile/android/spotlets/openaccess/e;
move-result-object v1
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/e;->a(Lcom/spotify/mobile/android/spotlets/openaccess/model/Album;)V
:goto_1d
:try_end_1d
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_1d} :catch_1e
return-void
:catch_1e
move-exception v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/d$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/d;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/d;->a(Lcom/spotify/mobile/android/spotlets/openaccess/d;)Lcom/spotify/mobile/android/spotlets/openaccess/e;
move-result-object v1
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/e;->a(Ljava/lang/Throwable;)V
goto :goto_1d
.end method
.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/d$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/d;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/d;->a(Lcom/spotify/mobile/android/spotlets/openaccess/d;)Lcom/spotify/mobile/android/spotlets/openaccess/e;
move-result-object v0
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/openaccess/e;->a(Ljava/lang/Throwable;)V
return-void
.end method