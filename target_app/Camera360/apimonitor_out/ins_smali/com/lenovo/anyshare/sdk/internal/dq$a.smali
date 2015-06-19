.class  Lcom/lenovo/anyshare/sdk/internal/dq$a;
.super Ljava/lang/Thread;
.source "AudioRecorder.java"
.field final synthetic a:Lcom/lenovo/anyshare/sdk/internal/dq;
.method public constructor <init>(Lcom/lenovo/anyshare/sdk/internal/dq;)V
.registers 3
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/dq$a;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
const-string/jumbo v0, "AudioRecorder.WorkerThread"
invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public run()V
.registers 18
move-object/from16 v0, p0
iget-object v12, v0, Lcom/lenovo/anyshare/sdk/internal/dq$a;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
iget v12, v12, Lcom/lenovo/anyshare/sdk/internal/dq;->f:I
div-int/lit8 v2, v12, 0x2
move-object/from16 v0, p0
iget-object v12, v0, Lcom/lenovo/anyshare/sdk/internal/dq$a;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
iget v12, v12, Lcom/lenovo/anyshare/sdk/internal/dq;->e:I
mul-int/lit8 v13, v2, 0x2
div-int v5, v12, v13
mul-int v1, v2, v5
new-array v4, v1, [S
move-object/from16 v0, p0
iget-object v12, v0, Lcom/lenovo/anyshare/sdk/internal/dq$a;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
iget-object v3, v12, Lcom/lenovo/anyshare/sdk/internal/dq;->a:Landroid/media/AudioRecord;
:goto_1c
const/4 v9, 0x0
:goto_1d
if-ge v9, v1, :cond_40
if-nez v3, :cond_2b
:try_start_21
const-string/jumbo v12, "AudioRecorder"
const-string/jumbo v13, "Run(): The recorder is null."
invoke-static {v12, v13}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_2a
:cond_2a
return-void
:cond_2b
const/4 v11, 0x0
:goto_2c
if-ge v11, v2, :cond_38
add-int v12, v9, v11
sub-int v13, v2, v11
invoke-virtual {v3, v4, v12, v13}, Landroid/media/AudioRecord;->read([SII)I
move-result v10
add-int/2addr v11, v10
goto :goto_2c
:cond_38
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/dq$a;->interrupted()Z
move-result v12
if-nez v12, :cond_2a
add-int/2addr v9, v11
goto :goto_1d
:cond_40
move-object/from16 v0, p0
iget-object v12, v0, Lcom/lenovo/anyshare/sdk/internal/dq$a;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
iget-wide v12, v12, Lcom/lenovo/anyshare/sdk/internal/dq;->i:J
long-to-double v12, v12
move-object/from16 v0, p0
iget-object v14, v0, Lcom/lenovo/anyshare/sdk/internal/dq$a;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
iget v14, v14, Lcom/lenovo/anyshare/sdk/internal/dq;->d:I
int-to-double v14, v14
div-double/2addr v12, v14
const-wide v14, 0x408f400000000000L
mul-double/2addr v12, v14
double-to-long v7, v12
move-object/from16 v0, p0
iget-object v12, v0, Lcom/lenovo/anyshare/sdk/internal/dq$a;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
iget-object v12, v12, Lcom/lenovo/anyshare/sdk/internal/dq;->b:Lcom/lenovo/anyshare/sdk/internal/dr;
if-eqz v12, :cond_6e
move-object/from16 v0, p0
iget-object v12, v0, Lcom/lenovo/anyshare/sdk/internal/dq$a;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
iget-object v12, v12, Lcom/lenovo/anyshare/sdk/internal/dq;->b:Lcom/lenovo/anyshare/sdk/internal/dr;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/lenovo/anyshare/sdk/internal/dq$a;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
iget-wide v13, v13, Lcom/lenovo/anyshare/sdk/internal/dq;->h:J
add-long/2addr v13, v7
invoke-interface {v12, v4, v1, v13, v14}, Lcom/lenovo/anyshare/sdk/internal/dr;->a([SIJ)V
:cond_6e
move-object/from16 v0, p0
iget-object v12, v0, Lcom/lenovo/anyshare/sdk/internal/dq$a;->a:Lcom/lenovo/anyshare/sdk/internal/dq;
iget-wide v13, v12, Lcom/lenovo/anyshare/sdk/internal/dq;->i:J
int-to-long v15, v1
add-long/2addr v13, v15
iput-wide v13, v12, Lcom/lenovo/anyshare/sdk/internal/dq;->i:J
:try_end_78
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_78} :catch_79
goto :goto_1c
:catch_79
move-exception v6
const-string/jumbo v12, "AudioRecorder"
invoke-static {v12, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2a
.end method