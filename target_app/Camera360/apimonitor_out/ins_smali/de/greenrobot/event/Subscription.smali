.class final Lde/greenrobot/event/Subscription;
.super Ljava/lang/Object;
.source "Subscription.java"
.field final subscriber:Ljava/lang/Object;
.field final subscriberMethod:Lde/greenrobot/event/SubscriberMethod;
.method constructor <init>(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;
iput-object p2, p0, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v2, p1, Lde/greenrobot/event/Subscription;
if-eqz v2, :cond_19
move-object v0, p1
check-cast v0, Lde/greenrobot/event/Subscription;
iget-object v2, p0, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;
iget-object v3, v0, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;
if-ne v2, v3, :cond_19
iget-object v2, p0, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;
iget-object v3, v0, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;
invoke-virtual {v2, v3}, Lde/greenrobot/event/SubscriberMethod;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_19
const/4 v1, 0x1
:cond_19
return v1
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
iget-object v1, p0, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;
iget-object v1, v1, Lde/greenrobot/event/SubscriberMethod;->methodString:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
.end method