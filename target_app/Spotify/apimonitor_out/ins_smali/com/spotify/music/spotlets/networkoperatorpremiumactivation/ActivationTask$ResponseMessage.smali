.class public Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$ResponseMessage;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mMessage:Ljava/lang/String;
.field private final mStatus:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$ResponseMessage;->mStatus:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$ResponseMessage;->mMessage:Ljava/lang/String;
return-void
.end method
.method public isSuccess()Z
.registers 3
const-string v0, "success"
iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$ResponseMessage;->mStatus:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
const/16 v2, 0x27
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "ResponseMessage{mStatus=\'"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$ResponseMessage;->mStatus:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mMessage=\'"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/music/spotlets/networkoperatorpremiumactivation/ActivationTask$ResponseMessage;->mMessage:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method