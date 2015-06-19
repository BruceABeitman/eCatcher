.class public final Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;
.super Ljava/lang/Object;
.source "SourceFile"
.field public final a:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;
.field public final b:Ljava/lang/Throwable;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;Ljava/lang/Throwable;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;->a:Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError$Reason;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;->b:Ljava/lang/Throwable;
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosError;->b:Ljava/lang/Throwable;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method