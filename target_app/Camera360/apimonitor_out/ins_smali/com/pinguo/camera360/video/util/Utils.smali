.class public Lcom/pinguo/camera360/video/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createName(JLjava/lang/String;)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/util/Date;
invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V
new-instance v1, Ljava/text/SimpleDateFormat;
sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v1, p2, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
return-object v2
.end method
.method public static millisecondToTimeString(JZ)Ljava/lang/String;
.registers 20
const-wide/16 v13, 0x3e8
div-long v10, p0, v13
const-wide/16 v13, 0x3c
div-long v2, v10, v13
const-wide/16 v13, 0x3c
div-long v0, v2, v13
const-wide/16 v13, 0x3c
mul-long/2addr v13, v0
sub-long v6, v2, v13
const-wide/16 v13, 0x3c
mul-long/2addr v13, v2
sub-long v8, v10, v13
new-instance v12, Ljava/lang/StringBuilder;
invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V
const-wide/16 v13, 0x0
cmp-long v13, v0, v13
if-lez v13, :cond_34
const-wide/16 v13, 0xa
cmp-long v13, v0, v13
if-gez v13, :cond_2c
const/16 v13, 0x30
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_2c
invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const/16 v13, 0x3a
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_34
const-wide/16 v13, 0xa
cmp-long v13, v6, v13
if-gez v13, :cond_3f
const/16 v13, 0x30
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_3f
invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const/16 v13, 0x3a
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-wide/16 v13, 0xa
cmp-long v13, v8, v13
if-gez v13, :cond_52
const/16 v13, 0x30
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_52
invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
if-eqz p2, :cond_73
const/16 v13, 0x2e
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const-wide/16 v13, 0x3e8
mul-long/2addr v13, v10
sub-long v13, p0, v13
const-wide/16 v15, 0xa
div-long v4, v13, v15
const-wide/16 v13, 0xa
cmp-long v13, v4, v13
if-gez v13, :cond_70
const/16 v13, 0x30
invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_70
invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
:cond_73
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
return-object v13
.end method