.class public Lcom/fsck/k9/K9Activity;
.super Landroid/app/Activity;
.source "K9Activity.java"
.field private mDateFormat:Ljava/text/DateFormat;
.field private mTimeFormat:Ljava/text/DateFormat;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method private setupFormats()V
.registers 2
invoke-static {p0}, Lcom/fsck/k9/activity/DateFormatter;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/K9Activity;->mDateFormat:Ljava/text/DateFormat;
invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/K9Activity;->mTimeFormat:Ljava/text/DateFormat;
return-void
.end method
.method public getDateFormat()Ljava/text/DateFormat;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/K9Activity;->mDateFormat:Ljava/text/DateFormat;
return-object v0
.end method
.method public getTimeFormat()Ljava/text/DateFormat;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/K9Activity;->mTimeFormat:Ljava/text/DateFormat;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/fsck/k9/K9Activity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/fsck/k9/K9;->getK9Theme()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fsck/k9/K9Activity;->setTheme(I)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-direct {p0}, Lcom/fsck/k9/K9Activity;->setupFormats()V
const-string v1, " - Lcom/fsck/k9/K9Activity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/fsck/k9/K9Activity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
invoke-direct {p0}, Lcom/fsck/k9/K9Activity;->setupFormats()V
const-string v1, " - Lcom/fsck/k9/K9Activity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method