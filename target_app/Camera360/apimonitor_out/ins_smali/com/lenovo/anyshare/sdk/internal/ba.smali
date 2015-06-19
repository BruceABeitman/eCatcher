.class public final Lcom/lenovo/anyshare/sdk/internal/ba;
.super Ljava/lang/Object;
.source "ProgressHelper.java"
.field private final a:J
.field private b:J
.field private c:J
.field private d:J
.field private final e:J
.field private final f:J
.method public constructor <init>(JJ)V
.registers 11
const-wide/16 v4, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->a:J
iput-wide p3, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->f:J
iput-wide p3, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->c:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->e:J
iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->d:J
iget-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->a:J
const-wide/16 v2, 0x1f4
div-long/2addr v0, v2
iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->b:J
iget-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->b:J
cmp-long v0, v0, v4
if-gtz v0, :cond_27
iget-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->a:J
const-wide/16 v2, 0x64
div-long/2addr v0, v2
iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->b:J
:cond_27
iget-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->b:J
cmp-long v0, v0, v4
if-gtz v0, :cond_34
iget-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->a:J
const-wide/16 v2, 0xa
div-long/2addr v0, v2
iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->b:J
:cond_34
iget-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->b:J
cmp-long v0, v0, v4
if-gtz v0, :cond_3e
const-wide/16 v0, 0x1
iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->b:J
:cond_3e
cmp-long v0, p3, v4
if-lez v0, :cond_45
invoke-virtual {p0, p3, p4}, Lcom/lenovo/anyshare/sdk/internal/ba;->c(J)V
:cond_45
return-void
.end method
.method public a(J)Z
.registers 13
const-wide/16 v8, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
iget-wide v6, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->d:J
sub-long v2, v4, v6
iget-wide v6, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->c:J
sub-long v0, p1, v6
cmp-long v6, p1, v8
if-lez v6, :cond_18
iget-wide v6, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->c:J
cmp-long v6, v6, v8
if-eqz v6, :cond_2e
:cond_18
const-wide/16 v6, 0xc8
cmp-long v6, v2, v6
if-lez v6, :cond_24
iget-wide v6, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->b:J
cmp-long v6, v0, v6
if-gez v6, :cond_2e
:cond_24
const-wide/16 v6, 0x3e8
cmp-long v6, v2, v6
if-lez v6, :cond_30
cmp-long v6, v0, v8
if-lez v6, :cond_30
:cond_2e
const/4 v6, 0x1
:goto_2f
return v6
:cond_30
const/4 v6, 0x0
goto :goto_2f
.end method
.method public b(J)J
.registers 14
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
iget-wide v8, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->e:J
sub-long/2addr v6, v8
long-to-double v6, v6
const-wide v8, 0x408f400000000000L
div-double v2, v6, v8
iget-wide v6, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->f:J
sub-long v0, p1, v6
long-to-double v6, v0
div-double v4, v6, v2
const-string/jumbo v6, "ProgressHelper"
const-string/jumbo v7, "Total:%d bytes, Seconds:%.3f, AVG: %.1f bytes/s"
const/4 v8, 0x3
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v10
aput-object v10, v8, v9
const/4 v9, 0x1
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v10
aput-object v10, v8, v9
const/4 v9, 0x2
invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v10
aput-object v10, v8, v9
invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J
move-result-wide v6
return-wide v6
.end method
.method public c(J)V
.registers 9
const-string/jumbo v0, "ProgressHelper"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "report progress: time elasped = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iget-wide v4, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->d:J
sub-long/2addr v2, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", bytes elapsed = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->c:J
sub-long v2, p1, v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
iput-wide p1, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->c:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/lenovo/anyshare/sdk/internal/ba;->d:J
return-void
.end method