.class public Lcom/pinguo/camera360/cloud/controller/AnalysisController;
.super Ljava/lang/Object;
.source "AnalysisController.java"
.field private mCRC32Data:Ljava/util/HashSet;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
return-void
.end method
.method public checkExists(J)Z
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public cleanCRC32Data()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
:cond_c
return-void
.end method
.method public insertCRC32Recorder(Ljava/lang/String;JLjava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
if-nez v0, :cond_b
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
:cond_b
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_23
iget-object v0, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
invoke-static {p1, p2, p3, p4}, Lorg/pinguo/cloudshare/support/FileSupport;->insertUploadedFileCRC32(Ljava/lang/String;JLjava/lang/String;)V
:cond_23
invoke-static {p1, p2, p3}, Lorg/pinguo/cloudshare/support/FileSupport;->deleteNeedUpload(Ljava/lang/String;J)V
return-void
.end method
.method public insertCRC32Recorder(Ljava/lang/String;Ljava/util/Iterator;)V
.registers 7
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
if-nez v2, :cond_b
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
:cond_b
const-wide/16 v0, 0x0
:cond_d
:goto_d
invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_14
:cond_13
return-void
:cond_14
invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Long;
invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
move-result-wide v0
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
if-eqz v2, :cond_13
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_d
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const-string/jumbo v2, ""
invoke-static {p1, v0, v1, v2}, Lorg/pinguo/cloudshare/support/FileSupport;->insertUploadedFileCRC32(Ljava/lang/String;JLjava/lang/String;)V
goto :goto_d
.end method
.method public reloadRecorder(Ljava/lang/String;)V
.registers 6
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->cleanCRC32Data()V
invoke-static {p1}, Lorg/pinguo/cloudshare/support/FileSupport;->loadUploadedFileCRC32(Ljava/lang/String;)Ljava/util/HashSet;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
invoke-static {}, Lorg/pinguo/cloudshare/support/FileSupport;->loadExistsExclude()Ljava/util/HashSet;
move-result-object v1
if-nez v1, :cond_10
:cond_f
return-void
:cond_10
invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
if-nez v2, :cond_1a
iput-object v1, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
:goto_1a
:cond_1a
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_f
iget-object v3, p0, Lcom/pinguo/camera360/cloud/controller/AnalysisController;->mCRC32Data:Ljava/util/HashSet;
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Long;
invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
goto :goto_1a
.end method