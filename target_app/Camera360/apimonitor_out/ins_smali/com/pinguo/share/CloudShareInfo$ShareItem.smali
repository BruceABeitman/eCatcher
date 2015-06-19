.class public Lcom/pinguo/share/CloudShareInfo$ShareItem;
.super Ljava/lang/Object;
.source "CloudShareInfo.java"
.implements Ljava/io/Serializable;
.field public aid:Ljava/lang/String;
.field public date:Ljava/lang/String;
.field public dateTime:J
.field public h:I
.field public hasAudio:I
.field public key:Ljava/lang/String;
.field public location:Ljava/lang/String;
.field public pid:Ljava/lang/String;
.field public w:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public isHasAudio()Z
.registers 2
iget v0, p0, Lcom/pinguo/share/CloudShareInfo$ShareItem;->hasAudio:I
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method