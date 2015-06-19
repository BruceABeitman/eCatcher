.class abstract Lcom/spotify/mobile/android/util/n;
.super Lcom/loopj/android/http/l;
.source "SourceFile"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/loopj/android/http/l;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/util/n;-><init>()V
return-void
.end method
.method public final a(ILjava/lang/String;)V
.registers 6
const/4 v0, 0x0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Response was not json: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/util/n;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
return-void
.end method
.method public final a(ILjava/lang/String;Ljava/lang/Throwable;)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Error with response: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p3, v0}, Lcom/spotify/mobile/android/util/n;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
return-void
.end method
.method public final a(ILjava/lang/Throwable;Lorg/json/JSONArray;)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Error with json array response: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/spotify/mobile/android/util/n;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
return-void
.end method
.method public final a(ILjava/lang/Throwable;Lorg/json/JSONObject;)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Error with json object response: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/spotify/mobile/android/util/n;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
return-void
.end method
.method public final a(ILorg/json/JSONObject;)V
.registers 3
invoke-virtual {p0, p2}, Lcom/spotify/mobile/android/util/n;->a(Lorg/json/JSONObject;)V
return-void
.end method
.method protected abstract a(Ljava/lang/Throwable;Ljava/lang/String;)V
.end method
.method public final a(Lorg/json/JSONArray;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/util/n;->b(Lorg/json/JSONArray;)V
return-void
.end method
.method protected abstract a(Lorg/json/JSONObject;)V
.end method
.method protected abstract b(Lorg/json/JSONArray;)V
.end method