.class public Lcom/pinguo/lib/util/state/State;
.super Ljava/lang/Object;
.source "State.java"
.implements Lcom/pinguo/lib/util/state/IState;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public enter()V
.registers 1
return-void
.end method
.method public exit()V
.registers 1
return-void
.end method
.method public getName()Ljava/lang/String;
.registers 4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x24
invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
add-int/lit8 v2, v0, 0x1
invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public processMessage(Landroid/os/Message;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method