.class public Lcom/pinguo/camera360/feedback/Camera360FeedbackData;
.super Ljava/lang/Object;
.source "Camera360FeedbackData.java"
.implements Ljava/io/Serializable;
.field private extra:Ljava/util/Map;
.field private message:Ljava/lang/String;
.field private name:Ljava/lang/String;
.field private status:I
.field private time:J
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->time:J
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JI)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->time:J
iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->message:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->name:Ljava/lang/String;
iput-wide p3, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->time:J
iput p5, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->status:I
return-void
.end method
.method public getExtra()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->extra:Ljava/util/Map;
return-object v0
.end method
.method public getMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->message:Ljava/lang/String;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->name:Ljava/lang/String;
return-object v0
.end method
.method public getStatus()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->status:I
return v0
.end method
.method public getTime()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->time:J
return-wide v0
.end method
.method public setExtra(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->extra:Ljava/util/Map;
return-void
.end method
.method public setMessage(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->message:Ljava/lang/String;
return-void
.end method
.method public setName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->name:Ljava/lang/String;
return-void
.end method
.method public setStatus(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->status:I
return-void
.end method
.method public setTime(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/feedback/Camera360FeedbackData;->time:J
return-void
.end method