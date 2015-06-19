.class  Lcom/glympse/android/lib/fq;
.super Lcom/glympse/android/lib/j;
.source "LocationAppend.java"
.field private _glympse:Lcom/glympse/android/lib/GGlympsePrivate;
.field private gI:Ljava/lang/String;
.field private ir:J
.field private jv:Ljava/lang/String;
.field private kZ:Z
.field private pM:Lcom/glympse/android/hal/GLinkedList;
.field private pN:Z
.field private pO:Lcom/glympse/android/lib/jq;
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GTicketPrivate;Lcom/glympse/android/hal/GLinkedList;)V
.registers 8
const/4 v1, 0x0
invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/fq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
if-nez p2, :cond_3c
move-object v0, v1
:goto_9
iput-object v0, p0, Lcom/glympse/android/lib/fq;->jv:Ljava/lang/String;
iput-object p3, p0, Lcom/glympse/android/lib/fq;->pM:Lcom/glympse/android/hal/GLinkedList;
iget-object v0, p0, Lcom/glympse/android/lib/fq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->areSiblingTicketsAllowed()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/fq;->kZ:Z
iget-object v0, p0, Lcom/glympse/android/lib/fq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;
move-result-object v0
const/4 v2, 0x1
invoke-interface {v0, v2}, Lcom/glympse/android/lib/GCorrectedTime;->getInvitesLastRefresh(Z)J
move-result-wide v2
iput-wide v2, p0, Lcom/glympse/android/lib/fq;->ir:J
iget-object v0, p0, Lcom/glympse/android/lib/fq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GConfig;->isSharingSpeed()Z
move-result v0
iput-boolean v0, p0, Lcom/glympse/android/lib/fq;->pN:Z
iput-object v1, p0, Lcom/glympse/android/lib/fq;->gI:Ljava/lang/String;
new-instance v0, Lcom/glympse/android/lib/jq;
invoke-direct {v0}, Lcom/glympse/android/lib/jq;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/fq;->pO:Lcom/glympse/android/lib/jq;
iget-object v0, p0, Lcom/glympse/android/lib/fq;->pO:Lcom/glympse/android/lib/jq;
iput-object v0, p0, Lcom/glympse/android/lib/fq;->hc:Lcom/glympse/android/lib/k;
return-void
:cond_3c
invoke-interface {p2}, Lcom/glympse/android/lib/GTicketPrivate;->getId()Ljava/lang/String;
move-result-object v0
goto :goto_9
.end method
.method public cancel()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/fq;->gI:Ljava/lang/String;
new-instance v0, Lcom/glympse/android/lib/jq;
invoke-direct {v0}, Lcom/glympse/android/lib/jq;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/fq;->pO:Lcom/glympse/android/lib/jq;
iget-object v0, p0, Lcom/glympse/android/lib/fq;->pO:Lcom/glympse/android/lib/jq;
iput-object v0, p0, Lcom/glympse/android/lib/fq;->hc:Lcom/glympse/android/lib/k;
return-void
.end method
.method public post()Ljava/lang/String;
.registers 14
iget-object v0, p0, Lcom/glympse/android/lib/fq;->gI:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_b
iget-object v0, p0, Lcom/glympse/android/lib/fq;->gI:Ljava/lang/String;
:goto_a
return-object v0
:cond_b
const/16 v0, 0x8
new-array v4, v0, [J
const/16 v0, 0x8
new-array v5, v0, [J
const/4 v0, 0x0
:goto_14
const/16 v1, 0x8
if-ge v0, v1, :cond_1f
const-wide/16 v1, 0x0
aput-wide v1, v4, v0
add-int/lit8 v0, v0, 0x1
goto :goto_14
:cond_1f
new-instance v6, Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/fq;->pM:Lcom/glympse/android/hal/GLinkedList;
invoke-virtual {v0}, Lcom/glympse/android/hal/GLinkedList;->size()I
move-result v0
mul-int/lit8 v0, v0, 0x64
invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const/16 v0, 0x5b
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v0, 0x0
iget-object v1, p0, Lcom/glympse/android/lib/fq;->pM:Lcom/glympse/android/hal/GLinkedList;
invoke-virtual {v1}, Lcom/glympse/android/hal/GLinkedList;->size()I
move-result v7
iget-object v1, p0, Lcom/glympse/android/lib/fq;->pM:Lcom/glympse/android/hal/GLinkedList;
invoke-virtual {v1}, Lcom/glympse/android/hal/GLinkedList;->elements()Ljava/util/Enumeration;
move-result-object v8
move v1, v0
:goto_3f
invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_152
invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GLocation;
const/4 v2, 0x0
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getTime()J
move-result-wide v9
aput-wide v9, v5, v2
const/4 v2, 0x1
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLatitude()D
move-result-wide v9
const-wide v11, 0x412e848000000000L
mul-double/2addr v9, v11
double-to-long v9, v9
aput-wide v9, v5, v2
const/4 v2, 0x2
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getLongitude()D
move-result-wide v9
const-wide v11, 0x412e848000000000L
mul-double/2addr v9, v11
double-to-long v9, v9
aput-wide v9, v5, v2
const/4 v9, 0x3
iget-boolean v2, p0, Lcom/glympse/android/lib/fq;->pN:Z
if-eqz v2, :cond_e4
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->hasSpeed()Z
move-result v2
if-eqz v2, :cond_e4
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getSpeed()F
move-result v2
const/high16 v3, 0x42c8
mul-float/2addr v2, v3
float-to-long v2, v2
:goto_81
aput-wide v2, v5, v9
const/4 v9, 0x4
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->hasBearing()Z
move-result v2
if-eqz v2, :cond_e8
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getBearing()F
move-result v2
float-to-long v2, v2
:goto_8f
aput-wide v2, v5, v9
const/4 v9, 0x5
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->hasAltitude()Z
move-result v2
if-eqz v2, :cond_ec
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getAltitude()F
move-result v2
float-to-long v2, v2
:goto_9d
aput-wide v2, v5, v9
const/4 v9, 0x6
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->hasHAccuracy()Z
move-result v2
if-eqz v2, :cond_f0
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getHAccuracy()F
move-result v2
float-to-long v2, v2
:goto_ab
aput-wide v2, v5, v9
const/4 v9, 0x7
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->hasVAccuracy()Z
move-result v2
if-eqz v2, :cond_f4
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getVAccuracy()F
move-result v0
float-to-long v2, v0
:goto_b9
aput-wide v2, v5, v9
const/4 v0, 0x1
if-eqz v1, :cond_d1
add-int/lit8 v2, v7, -0x1
if-eq v2, v1, :cond_d1
const/4 v0, 0x0
const/4 v2, 0x1
:goto_c4
const/16 v3, 0x8
if-ge v2, v3, :cond_d1
aget-wide v9, v4, v2
aget-wide v11, v5, v2
cmp-long v3, v9, v11
if-eqz v3, :cond_f8
const/4 v0, 0x1
:cond_d1
if-eqz v0, :cond_14d
const/4 v0, 0x7
move v2, v0
:goto_d5
if-ltz v2, :cond_fb
const-wide/32 v9, 0xfffffff
aget-wide v11, v5, v2
cmp-long v0, v9, v11
if-nez v0, :cond_fb
add-int/lit8 v0, v2, -0x1
move v2, v0
goto :goto_d5
:cond_e4
const-wide/32 v2, 0xfffffff
goto :goto_81
:cond_e8
const-wide/32 v2, 0xfffffff
goto :goto_8f
:cond_ec
const-wide/32 v2, 0xfffffff
goto :goto_9d
:cond_f0
const-wide/32 v2, 0xfffffff
goto :goto_ab
:cond_f4
const-wide/32 v2, 0xfffffff
goto :goto_b9
:cond_f8
add-int/lit8 v2, v2, 0x1
goto :goto_c4
:cond_fb
const/16 v0, 0x5b
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v0, 0x0
:goto_101
if-gt v0, v2, :cond_133
const-wide/32 v9, 0xfffffff
aget-wide v11, v5, v0
cmp-long v3, v9, v11
if-eqz v3, :cond_12d
const-wide/32 v9, 0xfffffff
aget-wide v11, v4, v0
cmp-long v3, v9, v11
if-eqz v3, :cond_127
aget-wide v9, v5, v0
aget-wide v11, v4, v0
sub-long/2addr v9, v11
invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
:goto_11d
if-eq v2, v0, :cond_124
const/16 v3, 0x2c
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_124
add-int/lit8 v0, v0, 0x1
goto :goto_101
:cond_127
aget-wide v9, v5, v0
invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
goto :goto_11d
:cond_12d
const-string v3, "null"
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_11d
:cond_133
const/16 v0, 0x5d
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v0, v7, -0x1
if-eq v1, v0, :cond_141
const/16 v0, 0x2c
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_141
const/4 v0, 0x0
:goto_142
const/16 v2, 0x8
if-ge v0, v2, :cond_14d
aget-wide v2, v5, v0
aput-wide v2, v4, v0
add-int/lit8 v0, v0, 0x1
goto :goto_142
:cond_14d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto/16 :goto_3f
:cond_152
const/16 v0, 0x5d
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/fq;->gI:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/fq;->gI:Ljava/lang/String;
goto/16 :goto_a
.end method
.method public process()Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/fq;->pO:Lcom/glympse/android/lib/jq;
iget-object v0, v0, Lcom/glympse/android/lib/jq;->hf:Ljava/lang/String;
const-string v1, "ok"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/glympse/android/lib/fq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
iget-object v1, p0, Lcom/glympse/android/lib/fq;->pO:Lcom/glympse/android/lib/jq;
invoke-static {v0, v1}, Lcom/glympse/android/lib/jp;->a(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/jq;)V
iget-object v0, p0, Lcom/glympse/android/lib/fq;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
const/16 v1, 0x800
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GServerPost;->rememberEvents(I)V
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method
.method public url(Ljava/lang/StringBuilder;)Z
.registers 6
const-string v0, "tickets/append_location?since="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-wide v0, p0, Lcom/glympse/android/lib/fq;->ir:J
invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-wide/16 v0, 0x0
iget-wide v2, p0, Lcom/glympse/android/lib/fq;->ir:J
cmp-long v0, v0, v2
if-eqz v0, :cond_17
const-string v0, "&expired=true"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_17
iget-object v0, p0, Lcom/glympse/android/lib/fq;->jv:Ljava/lang/String;
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_29
const-string v0, "&ids="
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
iget-object v0, p0, Lcom/glympse/android/lib/fq;->jv:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_29
iget-boolean v0, p0, Lcom/glympse/android/lib/fq;->kZ:Z
if-eqz v0, :cond_32
const-string v0, "&siblings=true"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_32
const/4 v0, 0x1
return v0
.end method