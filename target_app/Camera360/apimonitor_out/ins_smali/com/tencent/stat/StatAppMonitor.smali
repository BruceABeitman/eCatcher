.class public Lcom/tencent/stat/StatAppMonitor;
.super Ljava/lang/Object;
.implements Ljava/lang/Cloneable;
.field public static final FAILURE_RESULT_TYPE:I = 0x1
.field public static final LOGIC_FAILURE_RESULT_TYPE:I = 0x2
.field public static final SUCCESS_RESULT_TYPE:I
.field private a:Ljava/lang/String;
.field private b:J
.field private c:J
.field private d:I
.field private e:J
.field private f:I
.field private g:I
.method public constructor <init>(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x0
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/stat/StatAppMonitor;->a:Ljava/lang/String;
iput-wide v1, p0, Lcom/tencent/stat/StatAppMonitor;->b:J
iput-wide v1, p0, Lcom/tencent/stat/StatAppMonitor;->c:J
iput v3, p0, Lcom/tencent/stat/StatAppMonitor;->d:I
iput-wide v1, p0, Lcom/tencent/stat/StatAppMonitor;->e:J
iput v3, p0, Lcom/tencent/stat/StatAppMonitor;->f:I
const/4 v0, 0x1
iput v0, p0, Lcom/tencent/stat/StatAppMonitor;->g:I
iput-object p1, p0, Lcom/tencent/stat/StatAppMonitor;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;IIJJJI)V
.registers 15
const/4 v3, 0x0
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/stat/StatAppMonitor;->a:Ljava/lang/String;
iput-wide v1, p0, Lcom/tencent/stat/StatAppMonitor;->b:J
iput-wide v1, p0, Lcom/tencent/stat/StatAppMonitor;->c:J
iput v3, p0, Lcom/tencent/stat/StatAppMonitor;->d:I
iput-wide v1, p0, Lcom/tencent/stat/StatAppMonitor;->e:J
iput v3, p0, Lcom/tencent/stat/StatAppMonitor;->f:I
const/4 v0, 0x1
iput v0, p0, Lcom/tencent/stat/StatAppMonitor;->g:I
iput-object p1, p0, Lcom/tencent/stat/StatAppMonitor;->a:Ljava/lang/String;
iput-wide p4, p0, Lcom/tencent/stat/StatAppMonitor;->b:J
iput-wide p6, p0, Lcom/tencent/stat/StatAppMonitor;->c:J
iput p2, p0, Lcom/tencent/stat/StatAppMonitor;->d:I
iput-wide p8, p0, Lcom/tencent/stat/StatAppMonitor;->e:J
iput p3, p0, Lcom/tencent/stat/StatAppMonitor;->f:I
iput p10, p0, Lcom/tencent/stat/StatAppMonitor;->g:I
return-void
.end method
.method public clone()Lcom/tencent/stat/StatAppMonitor;
.registers 2
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/tencent/stat/StatAppMonitor;
:goto_6
:try_end_6
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7
return-object v0
:catch_7
move-exception v0
const/4 v0, 0x0
goto :goto_6
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/tencent/stat/StatAppMonitor;->clone()Lcom/tencent/stat/StatAppMonitor;
move-result-object v0
return-object v0
.end method
.method public getInterfaceName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/stat/StatAppMonitor;->a:Ljava/lang/String;
return-object v0
.end method
.method public getMillisecondsConsume()J
.registers 3
iget-wide v0, p0, Lcom/tencent/stat/StatAppMonitor;->e:J
return-wide v0
.end method
.method public getReqSize()J
.registers 3
iget-wide v0, p0, Lcom/tencent/stat/StatAppMonitor;->b:J
return-wide v0
.end method
.method public getRespSize()J
.registers 3
iget-wide v0, p0, Lcom/tencent/stat/StatAppMonitor;->c:J
return-wide v0
.end method
.method public getResultType()I
.registers 2
iget v0, p0, Lcom/tencent/stat/StatAppMonitor;->d:I
return v0
.end method
.method public getReturnCode()I
.registers 2
iget v0, p0, Lcom/tencent/stat/StatAppMonitor;->f:I
return v0
.end method
.method public getSampling()I
.registers 2
iget v0, p0, Lcom/tencent/stat/StatAppMonitor;->g:I
return v0
.end method
.method public setInterfaceName(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/tencent/stat/StatAppMonitor;->a:Ljava/lang/String;
return-void
.end method
.method public setMillisecondsConsume(J)V
.registers 3
iput-wide p1, p0, Lcom/tencent/stat/StatAppMonitor;->e:J
return-void
.end method
.method public setReqSize(J)V
.registers 3
iput-wide p1, p0, Lcom/tencent/stat/StatAppMonitor;->b:J
return-void
.end method
.method public setRespSize(J)V
.registers 3
iput-wide p1, p0, Lcom/tencent/stat/StatAppMonitor;->c:J
return-void
.end method
.method public setResultType(I)V
.registers 2
iput p1, p0, Lcom/tencent/stat/StatAppMonitor;->d:I
return-void
.end method
.method public setReturnCode(I)V
.registers 2
iput p1, p0, Lcom/tencent/stat/StatAppMonitor;->f:I
return-void
.end method
.method public setSampling(I)V
.registers 2
if-gtz p1, :cond_3
const/4 p1, 0x1
:cond_3
iput p1, p0, Lcom/tencent/stat/StatAppMonitor;->g:I
return-void
.end method