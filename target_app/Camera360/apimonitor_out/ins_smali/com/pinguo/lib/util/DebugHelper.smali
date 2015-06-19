.class public Lcom/pinguo/lib/util/DebugHelper;
.super Ljava/lang/Object;
.source "DebugHelper.java"
.field private static final TAG:Ljava/lang/String; = "DebugHelper"
.field private static sDebugHelper:Lcom/pinguo/lib/util/DebugHelper;
.field private curTime:J
.field private debugName:Ljava/lang/String;
.field private endTime:J
.field private lastTime:J
.field private mTimes:Ljava/util/HashMap;
.field private startTime:J
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/pinguo/lib/util/DebugHelper;
invoke-direct {v0}, Lcom/pinguo/lib/util/DebugHelper;-><init>()V
sput-object v0, Lcom/pinguo/lib/util/DebugHelper;->sDebugHelper:Lcom/pinguo/lib/util/DebugHelper;
return-void
.end method
.method public constructor <init>()V
.registers 3
const-wide/16 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v0, p0, Lcom/pinguo/lib/util/DebugHelper;->lastTime:J
iput-wide v0, p0, Lcom/pinguo/lib/util/DebugHelper;->curTime:J
iput-wide v0, p0, Lcom/pinguo/lib/util/DebugHelper;->startTime:J
iput-wide v0, p0, Lcom/pinguo/lib/util/DebugHelper;->endTime:J
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/lib/util/DebugHelper;->mTimes:Ljava/util/HashMap;
return-void
.end method
.method public static gInstance()Lcom/pinguo/lib/util/DebugHelper;
.registers 1
sget-object v0, Lcom/pinguo/lib/util/DebugHelper;->sDebugHelper:Lcom/pinguo/lib/util/DebugHelper;
return-object v0
.end method
.method private getLogString()Ljava/lang/String;
.registers 8
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
new-instance v2, Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/pinguo/lib/util/DebugHelper;->debugName:Ljava/lang/String;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, " Time Debuger [\n"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-direct {p0}, Lcom/pinguo/lib/util/DebugHelper;->getProfile()[Lcom/pinguo/lib/util/DebugProfile;
move-result-object v3
array-length v4, v3
const/4 v2, 0x0
:goto_24
if-lt v2, v4, :cond_31
const-string/jumbo v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
return-object v2
:cond_31
aget-object v0, v3, v2
const-string/jumbo v5, "TAG: "
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v5, v0, Lcom/pinguo/lib/util/DebugProfile;->tag:Ljava/lang/String;
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v5, "\t INC: "
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-wide v5, v0, Lcom/pinguo/lib/util/DebugProfile;->inc:J
invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string/jumbo v5, "\t INCP: "
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v5, v0, Lcom/pinguo/lib/util/DebugProfile;->incPercent:Ljava/lang/String;
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string/jumbo v5, "\n"
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v2, v2, 0x1
goto :goto_24
.end method
.method private getProfile()[Lcom/pinguo/lib/util/DebugProfile;
.registers 16
iget-object v0, p0, Lcom/pinguo/lib/util/DebugHelper;->mTimes:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->size()I
move-result v0
new-array v7, v0, [Lcom/pinguo/lib/util/DebugProfile;
iget-object v0, p0, Lcom/pinguo/lib/util/DebugHelper;->mTimes:Ljava/util/HashMap;
const-string/jumbo v4, "total"
invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v8
const/4 v6, 0x0
iget-object v0, p0, Lcom/pinguo/lib/util/DebugHelper;->mTimes:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_22
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_2c
:try_start_28
invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V
:try_end_2b
.catch Ljava/lang/NullPointerException; {:try_start_28 .. :try_end_2b} :catch_4e
:goto_2b
return-object v7
:cond_2c
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/lib/util/DebugHelper;->mTimes:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v2
new-instance v0, Lcom/pinguo/lib/util/DebugProfile;
long-to-double v4, v2
long-to-double v11, v8
const-wide/high16 v13, 0x3ff0
mul-double/2addr v11, v13
div-double/2addr v4, v11
invoke-direct/range {v0 .. v5}, Lcom/pinguo/lib/util/DebugProfile;-><init>(Ljava/lang/String;JD)V
aput-object v0, v7, v6
add-int/lit8 v6, v6, 0x1
goto :goto_22
:catch_4e
move-exception v0
goto :goto_2b
.end method
.method private print()V
.registers 3
const-string/jumbo v0, "DebugHelper"
invoke-direct {p0}, Lcom/pinguo/lib/util/DebugHelper;->getLogString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method private reset()V
.registers 3
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/pinguo/lib/util/DebugHelper;->startTime:J
iput-wide v0, p0, Lcom/pinguo/lib/util/DebugHelper;->endTime:J
iput-wide v0, p0, Lcom/pinguo/lib/util/DebugHelper;->lastTime:J
iput-wide v0, p0, Lcom/pinguo/lib/util/DebugHelper;->curTime:J
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/lib/util/DebugHelper;->debugName:Ljava/lang/String;
iget-object v0, p0, Lcom/pinguo/lib/util/DebugHelper;->mTimes:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
return-void
.end method
.method public end()V
.registers 1
return-void
.end method
.method public mark(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public start(Ljava/lang/String;)V
.registers 2
return-void
.end method