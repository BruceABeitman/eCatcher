.class public Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;
.super Lcom/pinguo/lib/eventbus/BaseTargetEvent;
.source "ShowEffectSelectEvent.java"
.field private mLastEffect:Ljava/lang/String;
.field private mParent:Landroid/view/View;
.field private mTag:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;)V
.registers 5
invoke-direct {p0, p4}, Lcom/pinguo/lib/eventbus/BaseTargetEvent;-><init>(Ljava/lang/String;)V
iput-object p1, p0, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;->mTag:Ljava/lang/String;
iput-object p2, p0, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;->mLastEffect:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;->mParent:Landroid/view/View;
return-void
.end method
.method public getLastEffect()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;->mLastEffect:Ljava/lang/String;
return-object v0
.end method
.method public getParent()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;->mParent:Landroid/view/View;
return-object v0
.end method
.method public getTag()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/event/ShowEffectSelectEvent;->mTag:Ljava/lang/String;
return-object v0
.end method