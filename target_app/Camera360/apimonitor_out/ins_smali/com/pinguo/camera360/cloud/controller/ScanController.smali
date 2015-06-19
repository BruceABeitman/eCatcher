.class public Lcom/pinguo/camera360/cloud/controller/ScanController;
.super Ljava/lang/Object;
.source "ScanController.java"
.field private static final TAG:Ljava/lang/String; = "CloudServiceManager"
.field private bScan:Z
.field private mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
.field private scanPath:Ljava/util/HashSet;
.method public constructor <init>(Lcom/pinguo/camera360/cloud/controller/AnalysisController;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->bScan:Z
iput-object v1, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->scanPath:Ljava/util/HashSet;
iput-object v1, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->scanPath:Ljava/util/HashSet;
iput-object p1, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
return-void
.end method
.method private getScanPath(Ljava/util/HashSet;)Ljava/util/HashSet;
.registers 9
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_9
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-nez v5, :cond_10
return-object v2
:cond_10
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1a
:cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_9
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_1a
invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v5
const/4 v6, -0x1
if-eq v5, v6, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
goto :goto_1a
.end method
.method public startScanPath()I
.registers 10
const/4 v4, 0x1
iput-boolean v4, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->bScan:Z
invoke-static {}, Lorg/pinguo/cloudshare/support/HelperConsole;->availableSpace()J
move-result-wide v5
const-wide/32 v7, 0xc00000
cmp-long v5, v5, v7
if-gez v5, :cond_f
:goto_e
return v4
:cond_f
iget-object v4, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->mAnalysisController:Lcom/pinguo/camera360/cloud/controller/AnalysisController;
invoke-static {v4}, Lorg/pinguo/cloudshare/support/DataSupport;->setAnalysisController(Lcom/pinguo/camera360/cloud/controller/AnalysisController;)V
iget-object v4, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->scanPath:Ljava/util/HashSet;
invoke-static {v4}, Lorg/pinguo/cloudshare/support/FileSupport;->getCamera360RootPath(Ljava/util/Set;)V
iget-object v4, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->scanPath:Ljava/util/HashSet;
invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1f
:cond_1f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_44
iget-object v4, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->scanPath:Ljava/util/HashSet;
invoke-direct {p0, v4}, Lcom/pinguo/camera360/cloud/controller/ScanController;->getScanPath(Ljava/util/HashSet;)Ljava/util/HashSet;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->scanPath:Ljava/util/HashSet;
iget-object v4, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->scanPath:Ljava/util/HashSet;
invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v0
new-instance v2, Lorg/pinguo/cloudshare/support/scanner/JavaScanner;
invoke-direct {v2}, Lorg/pinguo/cloudshare/support/scanner/JavaScanner;-><init>()V
:goto_38
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_4e
:cond_3e
const/4 v4, 0x0
invoke-static {v4}, Lorg/pinguo/cloudshare/support/DataSupport;->setAnalysisController(Lcom/pinguo/camera360/cloud/controller/AnalysisController;)V
const/4 v4, 0x0
goto :goto_e
:cond_44
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
if-nez v4, :cond_1f
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
goto :goto_1f
:cond_4e
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
iget-boolean v4, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->bScan:Z
if-eqz v4, :cond_3e
const-string/jumbo v4, "CloudServiceManager"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "strPath:"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v4, -0x1
invoke-virtual {v2, v3, v4}, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->scan(Ljava/lang/String;I)V
goto :goto_38
.end method
.method public stopScanPath()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/cloud/controller/ScanController;->bScan:Z
return-void
.end method