.class final Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/util/bh;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$1;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 6
check-cast p1, Lorg/json/JSONObject;
const/4 v0, 0x0
:try_start_3
const-string v1, "text"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_8
.catch Lorg/json/JSONException; {:try_start_3 .. :try_end_8} :catch_f
move-result-object v0
:goto_9
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$1;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;Ljava/lang/String;)V
return-void
:catch_f
move-exception v1
const-string v2, "JSON is malformed"
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v1, v2, v3}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_9
.end method
.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Object;
invoke-static {p1, p2, v0}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a$1;->a:Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;->a(Lcom/spotify/mobile/android/spotlets/suggestedtweet/a;Ljava/lang/String;)V
return-void
.end method