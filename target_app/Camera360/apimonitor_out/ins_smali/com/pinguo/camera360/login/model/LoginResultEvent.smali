.class public Lcom/pinguo/camera360/login/model/LoginResultEvent;
.super Ljava/lang/Object;
.source "LoginResultEvent.java"
.field private mMessage:Ljava/lang/String;
.field private mStatus:I
.method public constructor <init>(ILjava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/pinguo/camera360/login/model/LoginResultEvent;->mStatus:I
iput-object p2, p0, Lcom/pinguo/camera360/login/model/LoginResultEvent;->mMessage:Ljava/lang/String;
return-void
.end method
.method public getMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/login/model/LoginResultEvent;->mMessage:Ljava/lang/String;
return-object v0
.end method
.method public getStatus()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/login/model/LoginResultEvent;->mStatus:I
return v0
.end method