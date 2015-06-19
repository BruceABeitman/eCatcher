.class public Lcom/pinguo/lib/util/state/StateMachine$LogRec;
.super Ljava/lang/Object;
.source "StateMachine.java"
.field private mInfo:Ljava/lang/String;
.field private mOrgState:Lcom/pinguo/lib/util/state/State;
.field private mState:Lcom/pinguo/lib/util/state/State;
.field private mTime:J
.field private mWhat:I
.method constructor <init>(Landroid/os/Message;Ljava/lang/String;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->update(Landroid/os/Message;Ljava/lang/String;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)V
return-void
.end method
.method public getInfo()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mInfo:Ljava/lang/String;
return-object v0
.end method
.method public getOriginalState()Lcom/pinguo/lib/util/state/State;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mOrgState:Lcom/pinguo/lib/util/state/State;
return-object v0
.end method
.method public getState()Lcom/pinguo/lib/util/state/State;
.registers 2
iget-object v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mState:Lcom/pinguo/lib/util/state/State;
return-object v0
.end method
.method public getTime()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mTime:J
return-wide v0
.end method
.method public getWhat()J
.registers 3
iget v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mWhat:I
int-to-long v0, v0
return-wide v0
.end method
.method public toString(Lcom/pinguo/lib/util/state/StateMachine;)Ljava/lang/String;
.registers 8
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "time="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
iget-wide v3, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mTime:J
invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V
const-string/jumbo v3, "%tm-%td %tH:%tM:%tS.%tL"
const/4 v4, 0x6
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object v0, v4, v5
const/4 v5, 0x1
aput-object v0, v4, v5
const/4 v5, 0x2
aput-object v0, v4, v5
const/4 v5, 0x3
aput-object v0, v4, v5
const/4 v5, 0x4
aput-object v0, v4, v5
const/4 v5, 0x5
aput-object v0, v4, v5
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v3, " state="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mState:Lcom/pinguo/lib/util/state/State;
if-nez v3, :cond_97
const-string/jumbo v3, "<null>"
:goto_40
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v3, " orgState="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mOrgState:Lcom/pinguo/lib/util/state/State;
if-nez v3, :cond_9e
const-string/jumbo v3, "<null>"
:goto_50
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v3, " what="
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v3, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mWhat:I
invoke-virtual {p1, v3}, Lcom/pinguo/lib/util/state/StateMachine;->getWhatToString(I)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_a5
iget v3, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mWhat:I
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string/jumbo v3, "(0x"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget v3, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mWhat:I
invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v3, ")"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_7f
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mInfo:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_92
const-string/jumbo v3, " "
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mInfo:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_92
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
return-object v3
:cond_97
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mState:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v3}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v3
goto :goto_40
:cond_9e
iget-object v3, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mOrgState:Lcom/pinguo/lib/util/state/State;
invoke-virtual {v3}, Lcom/pinguo/lib/util/state/State;->getName()Ljava/lang/String;
move-result-object v3
goto :goto_50
:cond_a5
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_7f
.end method
.method public update(Landroid/os/Message;Ljava/lang/String;Lcom/pinguo/lib/util/state/State;Lcom/pinguo/lib/util/state/State;)V
.registers 7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mTime:J
if-eqz p1, :cond_13
iget v0, p1, Landroid/os/Message;->what:I
:goto_a
iput v0, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mWhat:I
iput-object p2, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mInfo:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mState:Lcom/pinguo/lib/util/state/State;
iput-object p4, p0, Lcom/pinguo/lib/util/state/StateMachine$LogRec;->mOrgState:Lcom/pinguo/lib/util/state/State;
return-void
:cond_13
const/4 v0, 0x0
goto :goto_a
.end method