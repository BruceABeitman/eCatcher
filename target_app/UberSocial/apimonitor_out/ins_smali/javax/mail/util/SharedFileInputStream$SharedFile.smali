.class  Ljavax/mail/util/SharedFileInputStream$SharedFile;
.super Ljava/lang/Object;
.source "SourceFile"
.field private cnt:I
.field private in:Ljava/io/RandomAccessFile;
.method constructor <init>(Ljava/io/File;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/io/RandomAccessFile;
const-string v1, "r"
invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;
return-void
.end method
.method constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/io/RandomAccessFile;
const-string v1, "r"
invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;
return-void
.end method
.method public declared-synchronized close()V
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I
if-lez v0, :cond_12
iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I
if-gtz v0, :cond_12
iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:cond_12
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_14
monitor-exit p0
return-void
:catchall_14
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected finalize()V
.registers 2
invoke-super {p0}, Ljava/lang/Object;->finalize()V
iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
return-void
.end method
.method public declared-synchronized forceClose()V
.registers 2
monitor-enter p0
:try_start_1
iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I
if-lez v0, :cond_f
const/4 v0, 0x0
iput v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I
iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:goto_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_17
monitor-exit p0
return-void
:cond_f
:try_start_f
iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:try_end_14
.catchall {:try_start_f .. :try_end_14} :catchall_17
.catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_15
goto :goto_d
:catch_15
move-exception v0
goto :goto_d
:catchall_17
move-exception v0
monitor-exit p0
throw v0
.end method
.method public open()Ljava/io/RandomAccessFile;
.registers 2
iget v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->cnt:I
iget-object v0, p0, Ljavax/mail/util/SharedFileInputStream$SharedFile;->in:Ljava/io/RandomAccessFile;
return-object v0
.end method