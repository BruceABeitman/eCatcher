.class public Lcom/twidroid/d/o;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/Object;)J
.registers 3
instance-of v0, p0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_9
check-cast p0, Lcom/twidroid/model/twitter/Tweet;
iget-wide v0, p0, Lcom/twidroid/model/twitter/Tweet;->w:J
:goto_8
return-wide v0
:cond_9
instance-of v0, p0, Lcom/twidroid/model/TimelineGap;
if-eqz v0, :cond_12
check-cast p0, Lcom/twidroid/model/twitter/CommunicationEntity;
iget-wide v0, p0, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J
goto :goto_8
:cond_12
check-cast p0, Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {p0}, Lcom/twidroid/model/twitter/DirectMessage;->l()J
move-result-wide v0
goto :goto_8
.end method