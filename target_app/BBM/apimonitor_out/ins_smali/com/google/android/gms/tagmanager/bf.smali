.class  Lcom/google/android/gms/tagmanager/bf;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/tagmanager/cg;
.field private final Ty:Lcom/google/android/gms/internal/fl;
.field private final Vz:J
.field private final tP:J
.field private final tQ:I
.field private tR:D
.field private tS:J
.field private final tT:Ljava/lang/Object;
.field private final tU:Ljava/lang/String;
.method public constructor <init>(IJJLjava/lang/String;Lcom/google/android/gms/internal/fl;)V
.registers 10
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/bf;->tT:Ljava/lang/Object;
iput p1, p0, Lcom/google/android/gms/tagmanager/bf;->tQ:I
iget v0, p0, Lcom/google/android/gms/tagmanager/bf;->tQ:I
int-to-double v0, v0
iput-wide v0, p0, Lcom/google/android/gms/tagmanager/bf;->tR:D
iput-wide p2, p0, Lcom/google/android/gms/tagmanager/bf;->tP:J
iput-wide p4, p0, Lcom/google/android/gms/tagmanager/bf;->Vz:J
iput-object p6, p0, Lcom/google/android/gms/tagmanager/bf;->tU:Ljava/lang/String;
iput-object p7, p0, Lcom/google/android/gms/tagmanager/bf;->Ty:Lcom/google/android/gms/internal/fl;
return-void
.end method
.method public cl()Z
.registers 13
const/4 v0, 0x0
const-wide/high16 v10, 0x3ff0
iget-object v1, p0, Lcom/google/android/gms/tagmanager/bf;->tT:Ljava/lang/Object;
monitor-enter v1
:try_start_6
iget-object v2, p0, Lcom/google/android/gms/tagmanager/bf;->Ty:Lcom/google/android/gms/internal/fl;
invoke-interface {v2}, Lcom/google/android/gms/internal/fl;->currentTimeMillis()J
move-result-wide v2
iget-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->tS:J
sub-long v4, v2, v4
iget-wide v6, p0, Lcom/google/android/gms/tagmanager/bf;->Vz:J
cmp-long v4, v4, v6
if-gez v4, :cond_32
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Excessive "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/google/android/gms/tagmanager/bf;->tU:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " detected; call ignored."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
monitor-exit v1
:goto_31
return v0
:cond_32
iget-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->tR:D
iget v6, p0, Lcom/google/android/gms/tagmanager/bf;->tQ:I
int-to-double v6, v6
cmpg-double v4, v4, v6
if-gez v4, :cond_56
iget-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->tS:J
sub-long v4, v2, v4
long-to-double v4, v4
iget-wide v6, p0, Lcom/google/android/gms/tagmanager/bf;->tP:J
long-to-double v6, v6
div-double/2addr v4, v6
const-wide/16 v6, 0x0
cmpl-double v6, v4, v6
if-lez v6, :cond_56
iget v6, p0, Lcom/google/android/gms/tagmanager/bf;->tQ:I
int-to-double v6, v6
iget-wide v8, p0, Lcom/google/android/gms/tagmanager/bf;->tR:D
add-double/2addr v4, v8
invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D
move-result-wide v4
iput-wide v4, p0, Lcom/google/android/gms/tagmanager/bf;->tR:D
:cond_56
iput-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->tS:J
iget-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->tR:D
cmpl-double v2, v2, v10
if-ltz v2, :cond_69
iget-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->tR:D
sub-double/2addr v2, v10
iput-wide v2, p0, Lcom/google/android/gms/tagmanager/bf;->tR:D
const/4 v0, 0x1
monitor-exit v1
:try_end_65
.catchall {:try_start_6 .. :try_end_65} :catchall_66
goto :goto_31
:catchall_66
move-exception v0
monitor-exit v1
throw v0
:try_start_69
:cond_69
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Excessive "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/google/android/gms/tagmanager/bf;->tU:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " detected; call ignored."
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/android/gms/tagmanager/bh;->w(Ljava/lang/String;)V
monitor-exit v1
:try_end_84
.catchall {:try_start_69 .. :try_end_84} :catchall_66
goto :goto_31
.end method