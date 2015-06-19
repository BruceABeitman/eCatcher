.class public Lcom/fsck/k9/activity/SizeFormatter;
.super Ljava/lang/Object;
.source "SizeFormatter.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static formatSize(Landroid/content/Context;J)Ljava/lang/String;
.registers 7
const/high16 v3, 0x4120
const-wide/32 v0, 0x3d090000
cmp-long v0, p1, v0
if-lez v0, :cond_29
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-wide/32 v1, 0x61a8000
div-long v1, p1, v1
long-to-float v1, v1
div-float/2addr v1, v3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const v1, 0x7f080060
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_28
return-object v0
:cond_29
const-wide/32 v0, 0xfa000
cmp-long v0, p1, v0
if-lez v0, :cond_50
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-wide/32 v1, 0x19000
div-long v1, p1, v1
long-to-float v1, v1
div-float/2addr v1, v3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const v1, 0x7f080061
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_28
:cond_50
const-wide/16 v0, 0x400
cmp-long v0, p1, v0
if-lez v0, :cond_75
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-wide/16 v1, 0x66
div-long v1, p1, v1
long-to-float v1, v1
div-float/2addr v1, v3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const v1, 0x7f080062
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_28
:cond_75
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const v1, 0x7f080063
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_28
.end method