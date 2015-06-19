.class public Lorg/pinguo/cloudshare/support/scanner/JavaScanner;
.super Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;
.source "JavaScanner.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/pinguo/cloudshare/support/scanner/SDCardScanner;-><init>()V
return-void
.end method
.method public scan(Ljava/lang/String;I)V
.registers 15
const/4 v5, -0x1
if-ne p2, v5, :cond_c
const/4 v5, 0x0
iput v5, p0, Lorg/pinguo/cloudshare/support/scanner/JavaScanner;->picCount:I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
iput-wide v5, p0, Lorg/pinguo/cloudshare/support/scanner/JavaScanner;->timeCost:J
:cond_c
new-instance v4, Ljava/io/File;
invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v4}, Lorg/pinguo/cloudshare/support/scanner/FileUtils;->isAccessAble(Ljava/io/File;)Z
move-result v5
if-nez v5, :cond_18
:cond_17
:goto_17
return-void
:cond_18
invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v1
if-eqz v1, :cond_17
array-length v5, v1
if-lez v5, :cond_17
array-length v6, v1
const/4 v5, 0x0
:goto_23
if-lt v5, v6, :cond_4d
const/4 v5, -0x1
if-ne p2, v5, :cond_17
const-string/jumbo v5, "\u641c\u7d22\u5230\uff1a%d\u5f20\uff0c\u8017\u65f6\uff1a%d"
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
iget v8, p0, Lorg/pinguo/cloudshare/support/scanner/JavaScanner;->picCount:I
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v6, v7
const/4 v7, 0x1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v8
iget-wide v10, p0, Lorg/pinguo/cloudshare/support/scanner/JavaScanner;->timeCost:J
sub-long/2addr v8, v10
invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v3, p2}, Lorg/pinguo/cloudshare/support/scanner/JavaScanner;->notify(Ljava/lang/String;I)V
goto :goto_17
:cond_4d
aget-object v0, v1, v5
invoke-static {v0}, Lorg/pinguo/cloudshare/support/scanner/FileUtils;->isAccessAble(Ljava/io/File;)Z
move-result v7
if-nez v7, :cond_58
:goto_55
:cond_55
add-int/lit8 v5, v5, 0x1
goto :goto_23
:cond_58
invoke-static {v0}, Lorg/pinguo/cloudshare/support/scanner/FileUtils;->isNoMedia(Ljava/io/File;)Z
move-result v7
if-nez v7, :cond_17
invoke-static {v0}, Lorg/pinguo/cloudshare/support/scanner/FileUtils;->isInValid(Ljava/io/File;)Z
move-result v7
if-nez v7, :cond_55
const-string/jumbo v7, "%s/%s"
const/4 v8, 0x2
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
aput-object p1, v8, v9
const/4 v9, 0x1
invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v10
aput-object v10, v8, v9
invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v7
if-eqz v7, :cond_84
add-int/lit8 v7, p2, 0x1
invoke-virtual {p0, v2, v7}, Lorg/pinguo/cloudshare/support/scanner/JavaScanner;->scan(Ljava/lang/String;I)V
goto :goto_55
:cond_84
add-int/lit8 v7, p2, 0x1
invoke-virtual {p0, v2, v7}, Lorg/pinguo/cloudshare/support/scanner/JavaScanner;->process(Ljava/lang/String;I)V
goto :goto_55
.end method