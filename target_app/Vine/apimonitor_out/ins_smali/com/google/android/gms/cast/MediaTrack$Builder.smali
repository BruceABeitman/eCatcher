.class public Lcom/google/android/gms/cast/MediaTrack$Builder;
.super Ljava/lang/Object;
.field private final AS:Lcom/google/android/gms/cast/MediaTrack;
.method public constructor <init>(JI)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/cast/MediaTrack;
invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JI)V
iput-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AS:Lcom/google/android/gms/cast/MediaTrack;
return-void
.end method
.method public build()Lcom/google/android/gms/cast/MediaTrack;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AS:Lcom/google/android/gms/cast/MediaTrack;
return-object v0
.end method
.method public setContentId(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AS:Lcom/google/android/gms/cast/MediaTrack;
invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setContentId(Ljava/lang/String;)V
return-object p0
.end method
.method public setContentType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AS:Lcom/google/android/gms/cast/MediaTrack;
invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setContentType(Ljava/lang/String;)V
return-object p0
.end method
.method public setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaTrack$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AS:Lcom/google/android/gms/cast/MediaTrack;
invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setCustomData(Lorg/json/JSONObject;)V
return-object p0
.end method
.method public setLanguage(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AS:Lcom/google/android/gms/cast/MediaTrack;
invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setLanguage(Ljava/lang/String;)V
return-object p0
.end method
.method public setLanguage(Ljava/util/Locale;)Lcom/google/android/gms/cast/MediaTrack$Builder;
.registers 4
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AS:Lcom/google/android/gms/cast/MediaTrack;
invoke-static {p1}, Lcom/google/android/gms/internal/gj;->b(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/MediaTrack;->setLanguage(Ljava/lang/String;)V
return-object p0
.end method
.method public setName(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaTrack$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AS:Lcom/google/android/gms/cast/MediaTrack;
invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->setName(Ljava/lang/String;)V
return-object p0
.end method
.method public setSubtype(I)Lcom/google/android/gms/cast/MediaTrack$Builder;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/cast/MediaTrack$Builder;->AS:Lcom/google/android/gms/cast/MediaTrack;
invoke-virtual {v0, p1}, Lcom/google/android/gms/cast/MediaTrack;->R(I)V
return-object p0
.end method