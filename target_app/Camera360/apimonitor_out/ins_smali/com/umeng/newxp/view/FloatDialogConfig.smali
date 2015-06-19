.class public Lcom/umeng/newxp/view/FloatDialogConfig;
.super Ljava/lang/Object;
.source "FloatDialogConfig.java"
.field private a:Z
.field private b:J
.field private c:J
.field private d:I
.field private e:I
.field private f:Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v2, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->a:Z
const-wide/16 v0, 0x1770
iput-wide v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->b:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->c:J
const/16 v0, 0x1e
iput v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->d:I
iput v2, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->e:I
return-void
.end method
.method public getDelayProgress()I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->d:I
return v0
.end method
.method public getListener()Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;
.registers 2
iget-object v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->f:Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;
return-object v0
.end method
.method public getNativeFlag()I
.registers 2
iget v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->e:I
return v0
.end method
.method public getStartTime()J
.registers 3
iget-wide v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->c:J
return-wide v0
.end method
.method public getTimeout()J
.registers 3
iget-wide v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->b:J
return-wide v0
.end method
.method public isDelay()Z
.registers 2
iget-boolean v0, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->a:Z
return v0
.end method
.method public isTimeout()Z
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->c:J
sub-long/2addr v0, v2
iget-wide v2, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->b:J
cmp-long v0, v0, v2
if-lez v0, :cond_f
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public setDelay(Z)Lcom/umeng/newxp/view/FloatDialogConfig;
.registers 2
iput-boolean p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->a:Z
return-object p0
.end method
.method public setDelayProgress(I)Lcom/umeng/newxp/view/FloatDialogConfig;
.registers 2
iput p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->d:I
return-object p0
.end method
.method public setListener(Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;)Lcom/umeng/newxp/view/FloatDialogConfig;
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->f:Lcom/umeng/newxp/controller/XpListenersCenter$FloatDialogListener;
return-object p0
.end method
.method public setNativeFlag(I)Lcom/umeng/newxp/view/FloatDialogConfig;
.registers 2
iput p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->e:I
return-object p0
.end method
.method public setStartTime(J)Lcom/umeng/newxp/view/FloatDialogConfig;
.registers 3
iput-wide p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->c:J
return-object p0
.end method
.method public setTimeout(J)Lcom/umeng/newxp/view/FloatDialogConfig;
.registers 3
iput-wide p1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->b:J
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
const-string/jumbo v1, "isDelay="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->a:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "  timeout="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->b:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, " startTime="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/umeng/newxp/view/FloatDialogConfig;->c:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method