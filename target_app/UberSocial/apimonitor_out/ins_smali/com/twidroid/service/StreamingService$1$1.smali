.class  Lcom/twidroid/service/StreamingService$1$1;
.super Lcom/twidroid/model/twitter/CommunicationEntity;
.source "SourceFile"
.field final synthetic K:Lcom/twidroid/service/StreamingService$1;
.method constructor <init>(Lcom/twidroid/service/StreamingService$1;JJLcom/twidroid/ui/StringUrlSpan;)V
.registers 13
iput-object p1, p0, Lcom/twidroid/service/StreamingService$1$1;->K:Lcom/twidroid/service/StreamingService$1;
move-object v0, p0
move-wide v1, p2
move-wide v3, p4
move-object v5, p6
invoke-direct/range {v0 .. v5}, Lcom/twidroid/model/twitter/CommunicationEntity;-><init>(JJLcom/twidroid/ui/StringUrlSpan;)V
return-void
.end method
.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-super {p0, p1, p2}, Lcom/twidroid/model/twitter/CommunicationEntity;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method