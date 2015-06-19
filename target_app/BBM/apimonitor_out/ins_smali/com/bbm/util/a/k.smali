.class public final Lcom/bbm/util/a/k;
.super Ljava/lang/Object;
.source "GlympseViewerUtil.java"
.method public static a(Lcom/glympse/android/core/GList;)F
.registers 4
invoke-interface {p0}, Lcom/glympse/android/core/GList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GLocation;
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getBearing()F
move-result v2
invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z
move-result v2
if-nez v2, :cond_4
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getBearing()F
move-result v0
:goto_1e
return v0
:cond_1f
const/high16 v0, 0x7fc0
goto :goto_1e
.end method
.method public static a(Lcom/glympse/android/api/GUser;Ljava/util/List;Lcom/bbm/ui/activities/xo;Lcom/bbm/d/es;)I
.registers 10
invoke-interface {p0}, Lcom/glympse/android/api/GUser;->isSelf()Z
move-result v0
if-eqz v0, :cond_d
invoke-static {}, Lcom/bbm/ui/activities/xo;->a()Lcom/bbm/ui/activities/xp;
move-result-object v0
iget v0, v0, Lcom/bbm/ui/activities/xp;->e:I
:goto_c
return v0
:cond_d
iget-boolean v0, p3, Lcom/bbm/d/es;->k:Z
if-nez v0, :cond_18
invoke-static {}, Lcom/bbm/ui/activities/xo;->b()Lcom/bbm/ui/activities/xp;
move-result-object v0
iget v0, v0, Lcom/bbm/ui/activities/xp;->e:I
goto :goto_c
:cond_18
const/4 v1, 0x0
const/4 v2, -0x1
if-eqz p1, :cond_42
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_20
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_42
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ko;
iget-object v4, v0, Lcom/bbm/ui/activities/ko;->b:Ljava/lang/String;
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v5
iget-object v5, v5, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v5}, Lcom/glympse/android/api/GGlympse;->getUserManager()Lcom/glympse/android/api/GUserManager;
move-result-object v5
invoke-interface {v5, v4}, Lcom/glympse/android/api/GUserManager;->findUserByInviteCode(Ljava/lang/String;)Lcom/glympse/android/api/GUser;
move-result-object v4
if-ne p0, v4, :cond_4d
iget-object v0, v0, Lcom/bbm/ui/activities/ko;->a:Ljava/lang/String;
:goto_40
move-object v1, v0
goto :goto_20
:cond_42
if-eqz v1, :cond_4b
invoke-virtual {p2, v1}, Lcom/bbm/ui/activities/xo;->a(Ljava/lang/String;)Lcom/bbm/ui/activities/xp;
move-result-object v0
iget v0, v0, Lcom/bbm/ui/activities/xp;->e:I
goto :goto_c
:cond_4b
move v0, v2
goto :goto_c
:cond_4d
move-object v0, v1
goto :goto_40
.end method
.method public static a(Lcom/glympse/android/api/GUser;)Lcom/glympse/android/api/GTicket;
.registers 4
const/4 v0, 0x0
const/4 v2, 0x0
invoke-interface {p0}, Lcom/glympse/android/api/GUser;->isSelf()Z
move-result v1
if-eqz v1, :cond_31
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v1
iget-object v1, v1, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v1}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/core/GArray;->length()I
move-result v1
if-lez v1, :cond_30
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v0
iget-object v0, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
:goto_30
:cond_30
return-object v0
:cond_31
invoke-interface {p0}, Lcom/glympse/android/api/GUser;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v1
invoke-interface {v1}, Lcom/glympse/android/core/GArray;->length()I
move-result v1
if-lez v1, :cond_30
invoke-interface {p0}, Lcom/glympse/android/api/GUser;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0, v2}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
goto :goto_30
.end method
.method public static a(J)Ljava/lang/String;
.registers 4
const-wide/16 v0, 0xa
cmp-long v0, p0, v0
if-gez v0, :cond_16
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "0"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_15
return-object v0
:cond_16
invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
goto :goto_15
.end method
.method public static a(Lcom/glympse/android/api/GUser;Landroid/content/Context;)Ljava/lang/String;
.registers 11
const v8, 0x7f0e0380
const/4 v7, 0x1
const/4 v6, 0x0
const-wide/32 v4, 0xea60
invoke-static {p0}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/api/GUser;)Lcom/glympse/android/api/GTicket;
move-result-object v0
if-nez v0, :cond_13
invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_12
return-object v0
:cond_13
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getExpireTime()J
move-result-wide v0
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v2
iget-object v2, v2, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v2}, Lcom/glympse/android/api/GGlympse;->getTime()J
move-result-wide v2
sub-long/2addr v0, v2
rem-long v2, v0, v4
sub-long v2, v4, v2
add-long/2addr v0, v2
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-gtz v2, :cond_32
invoke-virtual {p1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_12
:cond_32
cmp-long v2, v0, v4
if-gtz v2, :cond_3e
const v0, 0x7f0e0384
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_12
:cond_3e
const-wide/32 v2, 0x36ee80
cmp-long v2, v0, v2
if-gtz v2, :cond_5b
const v2, 0x7f0e0385
new-array v3, v7, [Ljava/lang/Object;
sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
aput-object v0, v3, v6
invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_12
:cond_5b
sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toHours(J)J
move-result-wide v2
sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v0
sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v4
sub-long/2addr v0, v4
const v4, 0x7f0e0387
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v5, v6
invoke-static {v0, v1}, Lcom/bbm/util/a/k;->a(J)Ljava/lang/String;
move-result-object v0
aput-object v0, v5, v7
invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_12
.end method