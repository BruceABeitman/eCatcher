.class public Lcom/instagram/realtimeclient/RealtimePatchRange;
.super Ljava/lang/Object;
.source "RealtimePatchRange.java"
.field private mEnd:Ljava/lang/String;
.field private mStart:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mStart:Ljava/lang/String;
iput-object p2, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mEnd:Ljava/lang/String;
return-void
.end method
.method public contains(Ljava/lang/String;)Z
.registers 5
const/4 v1, 0x0
if-nez p1, :cond_4
:goto_3
:cond_3
return v1
:cond_4
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mStart:Ljava/lang/String;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mStart:Ljava/lang/String;
invoke-static {v0, p1}, Lcom/instagram/realtimeclient/RealtimePatchEvent;->compareSequences(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
:goto_e
iget-object v2, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mEnd:Ljava/lang/String;
if-eqz v2, :cond_20
iget-object v2, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mEnd:Ljava/lang/String;
invoke-static {p1, v2}, Lcom/instagram/realtimeclient/RealtimePatchEvent;->compareSequences(Ljava/lang/String;Ljava/lang/String;)I
move-result v2
:goto_18
if-gtz v0, :cond_3
if-ltz v2, :cond_3
const/4 v1, 0x1
goto :goto_3
:cond_1e
move v0, v1
goto :goto_e
:cond_20
move v2, v1
goto :goto_18
.end method
.method public getEnd()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mEnd:Ljava/lang/String;
return-object v0
.end method
.method public getStart()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mStart:Ljava/lang/String;
return-object v0
.end method
.method public union(Lcom/instagram/realtimeclient/RealtimePatchRange;)Lcom/instagram/realtimeclient/RealtimePatchRange;
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mStart:Ljava/lang/String;
if-eqz v0, :cond_41
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimePatchRange;->getStart()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mStart:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimePatchRange;->getStart()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/instagram/realtimeclient/RealtimePatchEvent;->compareSequences(Ljava/lang/String;Ljava/lang/String;)I
move-result v0
if-lez v0, :cond_39
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimePatchRange;->getStart()Ljava/lang/String;
move-result-object v0
:goto_1b
iget-object v2, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mEnd:Ljava/lang/String;
if-eqz v2, :cond_33
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimePatchRange;->getEnd()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_33
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mEnd:Ljava/lang/String;
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimePatchRange;->getEnd()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/instagram/realtimeclient/RealtimePatchEvent;->compareSequences(Ljava/lang/String;Ljava/lang/String;)I
move-result v1
if-lez v1, :cond_3c
iget-object v1, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mEnd:Ljava/lang/String;
:goto_33
:cond_33
new-instance v2, Lcom/instagram/realtimeclient/RealtimePatchRange;
invoke-direct {v2, v0, v1}, Lcom/instagram/realtimeclient/RealtimePatchRange;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v2
:cond_39
iget-object v0, p0, Lcom/instagram/realtimeclient/RealtimePatchRange;->mStart:Ljava/lang/String;
goto :goto_1b
:cond_3c
invoke-virtual {p1}, Lcom/instagram/realtimeclient/RealtimePatchRange;->getEnd()Ljava/lang/String;
move-result-object v1
goto :goto_33
:cond_41
move-object v0, v1
goto :goto_1b
.end method