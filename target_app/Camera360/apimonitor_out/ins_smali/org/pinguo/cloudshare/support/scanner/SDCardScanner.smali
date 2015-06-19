.class public abstract Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;
.super Ljava/lang/Object;
.source "SDCardScanner.java"
.field private static final TAG:Ljava/lang/String; = "SDCardScanner"
.field private mCallback:Lorg/pinguo/cloudshare/support/scanner/SDCardScanner$IScanCallback;
.field private mRecognizer:Lorg/pinguo/cloudshare/support/scanner/FileNameRecognizer;
.field private mTimer:Lorg/pinguo/cloudshare/support/scanner/FileTimerByName;
.field protected picCount:I
.field protected timeCost:J
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->timeCost:J
const/4 v0, 0x0
iput v0, p0, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->picCount:I
new-instance v0, Lorg/pinguo/cloudshare/support/scanner/FileNameRecognizer;
invoke-direct {v0}, Lorg/pinguo/cloudshare/support/scanner/FileNameRecognizer;-><init>()V
iput-object v0, p0, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->mRecognizer:Lorg/pinguo/cloudshare/support/scanner/FileNameRecognizer;
new-instance v0, Lorg/pinguo/cloudshare/support/scanner/FileTimerByName;
invoke-direct {v0}, Lorg/pinguo/cloudshare/support/scanner/FileTimerByName;-><init>()V
iput-object v0, p0, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->mTimer:Lorg/pinguo/cloudshare/support/scanner/FileTimerByName;
return-void
.end method
.method protected notify(Ljava/lang/String;I)V
.registers 8
iget-object v2, p0, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->mCallback:Lorg/pinguo/cloudshare/support/scanner/SDCardScanner$IScanCallback;
if-eqz v2, :cond_a
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_b
:cond_a
:goto_a
return-void
:cond_b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const/4 v2, -0x1
if-eq v2, p2, :cond_16
const/4 v1, 0x0
:goto_14
if-lt v1, p2, :cond_31
:cond_16
iget-object v2, p0, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->mCallback:Lorg/pinguo/cloudshare/support/scanner/SDCardScanner$IScanCallback;
new-instance v3, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v2, v3}, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner$IScanCallback;->notify(Ljava/lang/String;)V
goto :goto_a
:cond_31
const-string/jumbo v2, "-"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_14
.end method
.method protected process(Ljava/lang/String;I)V
.registers 11
const/4 v5, 0x3
iget-object v4, p0, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->mRecognizer:Lorg/pinguo/cloudshare/support/scanner/FileNameRecognizer;
invoke-virtual {v4, p1}, Lorg/pinguo/cloudshare/support/scanner/FileNameRecognizer;->recognize(Ljava/lang/String;)I
move-result v3
const/4 v4, -0x1
if-eq v3, v4, :cond_3f
if-eq v3, v5, :cond_3f
iget v4, p0, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->picCount:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->picCount:I
iget-object v4, p0, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->mTimer:Lorg/pinguo/cloudshare/support/scanner/FileTimerByName;
invoke-virtual {v4, p1}, Lorg/pinguo/cloudshare/support/scanner/FileTimerByName;->getFileTime(Ljava/lang/String;)J
move-result-wide v1
const-string/jumbo v4, "path:%s, time:%d, type:%d"
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object p1, v5, v6
const/4 v6, 0x1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x2
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v4, "SDCardScanner"
invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v4, 0x3e8
div-long v4, v1, v4
invoke-static {p1, v4, v5, v3}, Lorg/pinguo/cloudshare/support/FileSupport;->scanFunction(Ljava/lang/String;JI)V
:cond_3f
return-void
.end method
.method public abstract scan(Ljava/lang/String;I)V
.end method
.method public setCallback(Lorg/pinguo/cloudshare/support/scanner/SDCardScanner$IScanCallback;)V
.registers 2
iput-object p1, p0, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;->mCallback:Lorg/pinguo/cloudshare/support/scanner/SDCardScanner$IScanCallback;
return-void
.end method