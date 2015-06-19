.class public Lco/vine/android/util/SeekInfoManager$SeekInfo;
.super Ljava/lang/Object;
.source "SeekInfoManager.java"
.field public final durationPadded:I
.field public final maxLoops:I
.field public startTime:J
.method public constructor <init>(JII)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lco/vine/android/util/SeekInfoManager$SeekInfo;->startTime:J
iput p3, p0, Lco/vine/android/util/SeekInfoManager$SeekInfo;->durationPadded:I
iput p4, p0, Lco/vine/android/util/SeekInfoManager$SeekInfo;->maxLoops:I
return-void
.end method
.method public getLoopsLeft()I
.registers 6
iget v0, p0, Lco/vine/android/util/SeekInfoManager$SeekInfo;->maxLoops:I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iget-wide v3, p0, Lco/vine/android/util/SeekInfoManager$SeekInfo;->startTime:J
sub-long/2addr v1, v3
iget v3, p0, Lco/vine/android/util/SeekInfoManager$SeekInfo;->durationPadded:I
int-to-long v3, v3
div-long/2addr v1, v3
long-to-double v1, v1
invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D
move-result-wide v1
double-to-int v1, v1
sub-int/2addr v0, v1
return v0
.end method
.method public getLoopsLeftForDisplay()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->getLoopsLeft()I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSeekTime()I
.registers 5
invoke-virtual {p0}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->isExpired()Z
move-result v0
if-nez v0, :cond_12
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lco/vine/android/util/SeekInfoManager$SeekInfo;->startTime:J
sub-long/2addr v0, v2
long-to-int v0, v0
iget v1, p0, Lco/vine/android/util/SeekInfoManager$SeekInfo;->durationPadded:I
rem-int/2addr v0, v1
:goto_11
return v0
:cond_12
const/4 v0, -0x1
goto :goto_11
.end method
.method public hasLoopLimit()Z
.registers 2
sget-object v0, Lco/vine/android/util/SeekInfoManager;->NO_LOOP_LIMIT:Lco/vine/android/util/SeekInfoManager$SeekInfo;
if-eq p0, v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isExpired()Z
.registers 2
invoke-virtual {p0}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->hasLoopLimit()Z
move-result v0
if-eqz v0, :cond_e
invoke-virtual {p0}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->getLoopsLeft()I
move-result v0
if-gtz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public toString()Ljava/lang/String;
.registers 6
const-string v0, "Start time: {}, durationPadded {}, maxLoops{}, loopsLeft {}."
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-wide v3, p0, Lco/vine/android/util/SeekInfoManager$SeekInfo;->startTime:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget v3, p0, Lco/vine/android/util/SeekInfoManager$SeekInfo;->durationPadded:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
iget v3, p0, Lco/vine/android/util/SeekInfoManager$SeekInfo;->maxLoops:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x3
invoke-virtual {p0}, Lco/vine/android/util/SeekInfoManager$SeekInfo;->getLoopsLeft()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/MessageFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;
move-result-object v0
invoke-virtual {v0}, Lcom/edisonwang/android/slog/FormattingTuple;->getMessage()Ljava/lang/String;
move-result-object v0
return-object v0
.end method