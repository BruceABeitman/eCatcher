.class public abstract Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;
.super Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;
.source "PGSdcardScanner.java"
.field private mProcessScanResult:Lcom/pinguo/camera360/cloud/upload/model/PGIScanResult;
.field private mRecognizer:Lcom/pinguo/camera360/cloud/upload/model/PGIRecognizer;
.field private mResultCallback:Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner$IScanCallback;
.field private mTimer:Lcom/pinguo/camera360/cloud/upload/model/PGIFileTimer;
.field protected picCount:I
.field protected timeCost:J
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->timeCost:J
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->picCount:I
new-instance v0, Lcom/pinguo/camera360/cloud/upload/model/PGFileNameRecognizer;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/upload/model/PGFileNameRecognizer;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->mRecognizer:Lcom/pinguo/camera360/cloud/upload/model/PGIRecognizer;
new-instance v0, Lcom/pinguo/camera360/cloud/upload/model/PGFileTimerByName;
invoke-direct {v0}, Lcom/pinguo/camera360/cloud/upload/model/PGFileTimerByName;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->mTimer:Lcom/pinguo/camera360/cloud/upload/model/PGIFileTimer;
return-void
.end method
.method protected notify(Ljava/lang/String;I)V
.registers 8
iget-object v2, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->mResultCallback:Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner$IScanCallback;
if-eqz v2, :cond_a
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_b
:cond_a
:goto_a
return-void
:cond_b
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const/4 v2, -0x1
if-eq v2, p2, :cond_16
const/4 v1, 0x0
:goto_14
if-lt v1, p2, :cond_31
:cond_16
iget-object v2, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->mResultCallback:Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner$IScanCallback;
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner$IScanCallback;->notify(Ljava/lang/String;)V
goto :goto_a
:cond_31
const-string/jumbo v2, "-"
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v1, v1, 0x1
goto :goto_14
.end method
.method protected process(Ljava/lang/String;I)V
.registers 9
iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->mRecognizer:Lcom/pinguo/camera360/cloud/upload/model/PGIRecognizer;
invoke-interface {v3, p1}, Lcom/pinguo/camera360/cloud/upload/model/PGIRecognizer;->recognize(Ljava/lang/String;)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_25
const/4 v3, 0x3
if-eq v2, v3, :cond_25
iget v3, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->picCount:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->picCount:I
iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->mTimer:Lcom/pinguo/camera360/cloud/upload/model/PGIFileTimer;
invoke-interface {v3, p1}, Lcom/pinguo/camera360/cloud/upload/model/PGIFileTimer;->getFileTime(Ljava/lang/String;)J
move-result-wide v0
iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->mProcessScanResult:Lcom/pinguo/camera360/cloud/upload/model/PGIScanResult;
if-eqz v3, :cond_25
iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->mProcessScanResult:Lcom/pinguo/camera360/cloud/upload/model/PGIScanResult;
const-wide/16 v4, 0x3e8
div-long v4, v0, v4
invoke-interface {v3, p1, v4, v5, v2}, Lcom/pinguo/camera360/cloud/upload/model/PGIScanResult;->processResult(Ljava/lang/String;JI)V
:cond_25
return-void
.end method
.method protected abstract scan(Ljava/lang/String;I)V
.end method
.method public setScanResult(Lcom/pinguo/camera360/cloud/upload/model/PGIScanResult;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->mProcessScanResult:Lcom/pinguo/camera360/cloud/upload/model/PGIScanResult;
return-void
.end method
.method public setScanResultCallback(Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner$IScanCallback;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;->mResultCallback:Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner$IScanCallback;
return-void
.end method