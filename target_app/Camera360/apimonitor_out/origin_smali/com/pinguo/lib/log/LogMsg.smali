.class public final Lcom/pinguo/lib/log/LogMsg;
.super Ljava/lang/Object;
.source "LogMsg.java"


# instance fields
.field private level:Ljava/lang/String;

.field private obj:Ljava/lang/Object;

.field private tag:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pinguo/lib/log/LogMsg;->time:J

    iput-object v2, p0, Lcom/pinguo/lib/log/LogMsg;->tag:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/lib/log/LogMsg;->level:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/lib/log/LogMsg;->time:J

    iput-object p2, p0, Lcom/pinguo/lib/log/LogMsg;->level:Ljava/lang/String;

    iput-object p1, p0, Lcom/pinguo/lib/log/LogMsg;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pinguo/lib/log/LogMsg;->time:J

    iput-object v2, p0, Lcom/pinguo/lib/log/LogMsg;->tag:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/lib/log/LogMsg;->level:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/lib/log/LogMsg;->time:J

    iput-object p2, p0, Lcom/pinguo/lib/log/LogMsg;->level:Ljava/lang/String;

    iput-object p1, p0, Lcom/pinguo/lib/log/LogMsg;->tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getLevel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/lib/log/LogMsg;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 3

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_f
    :goto_f
    return-object v0

    :cond_10
    iget-object v1, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/pinguo/lib/log/LogMsg;->time:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pinguo/lib/log/LogMsg;->level:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pinguo/lib/log/LogMsg;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_31
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_36
    iget-object v1, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Throwable;

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/pinguo/lib/log/LogMsg;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31
.end method
