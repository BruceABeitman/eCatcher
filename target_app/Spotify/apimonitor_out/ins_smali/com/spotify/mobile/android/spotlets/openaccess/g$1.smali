.class final Lcom/spotify/mobile/android/spotlets/openaccess/g$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/bi;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/openaccess/g;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/openaccess/g;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/g$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/g;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 4
check-cast p1, Ljava/lang/String;
:try_start_2
invoke-static {}, Lcom/spotify/mobile/android/spotlets/openaccess/g;->a()Lcom/fasterxml/jackson/databind/ObjectMapper;
move-result-object v0
const-class v1, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;
invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/g$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/g;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/g;->a(Lcom/spotify/mobile/android/spotlets/openaccess/g;)Lcom/spotify/mobile/android/spotlets/openaccess/h;
move-result-object v1
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/h;->a(Lcom/spotify/mobile/android/spotlets/openaccess/model/Artist;)V
:try_end_17
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_17} :catch_18
:goto_17
return-void
:catch_18
move-exception v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/g$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/g;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/openaccess/g;->a(Lcom/spotify/mobile/android/spotlets/openaccess/g;)Lcom/spotify/mobile/android/spotlets/openaccess/h;
move-result-object v1
invoke-interface {v1, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/h;->a(Ljava/lang/Throwable;)V
goto :goto_17
.end method
.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/g$1;->a:Lcom/spotify/mobile/android/spotlets/openaccess/g;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/openaccess/g;->a(Lcom/spotify/mobile/android/spotlets/openaccess/g;)Lcom/spotify/mobile/android/spotlets/openaccess/h;
move-result-object v0
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/openaccess/h;->a(Ljava/lang/Throwable;)V
return-void
.end method