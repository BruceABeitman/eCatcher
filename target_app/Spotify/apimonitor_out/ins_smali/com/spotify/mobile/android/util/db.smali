.class public final Lcom/spotify/mobile/android/util/db;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/os/StatFs;
.method public constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
:try_start_3
new-instance v0, Landroid/os/StatFs;
invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/db;->a:Landroid/os/StatFs;
:try_end_a
.catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_a} :catch_b
return-void
:catch_b
move-exception v0
new-instance v1, Ljava/io/IOException;
invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public final a()J
.registers 3
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->g:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/util/db;->a:Landroid/os/StatFs;
invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J
move-result-wide v0
:goto_a
return-wide v0
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/util/db;->a:Landroid/os/StatFs;
invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I
move-result v0
int-to-long v0, v0
goto :goto_a
.end method
.method public final b()J
.registers 3
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->g:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/util/db;->a:Landroid/os/StatFs;
invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocksLong()J
move-result-wide v0
:goto_a
return-wide v0
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/util/db;->a:Landroid/os/StatFs;
invoke-virtual {v0}, Landroid/os/StatFs;->getFreeBlocks()I
move-result v0
int-to-long v0, v0
goto :goto_a
.end method
.method public final c()J
.registers 3
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->g:Z
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/util/db;->a:Landroid/os/StatFs;
invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J
move-result-wide v0
:goto_a
return-wide v0
:cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/util/db;->a:Landroid/os/StatFs;
invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I
move-result v0
int-to-long v0, v0
goto :goto_a
.end method
.method public final d()J
.registers 5
sget-boolean v0, Lcom/spotify/mobile/android/util/ab;->g:Z
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/util/db;->a:Landroid/os/StatFs;
invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J
move-result-wide v0
:goto_a
invoke-virtual {p0}, Lcom/spotify/mobile/android/util/db;->a()J
move-result-wide v2
mul-long/2addr v0, v2
return-wide v0
:cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/util/db;->a:Landroid/os/StatFs;
invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v0
int-to-long v0, v0
goto :goto_a
.end method