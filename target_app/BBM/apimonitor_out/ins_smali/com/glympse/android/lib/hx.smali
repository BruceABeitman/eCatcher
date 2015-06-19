.class  Lcom/glympse/android/lib/hx;
.super Ljava/lang/Object;
.source "SystemInfo.java"
.field public static f:Ljava/lang/String;
.field public static gH:Ljava/lang/String;
.field public static gO:Ljava/lang/String;
.field public static iC:Lcom/glympse/android/hal/GContextHolder;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lcom/glympse/android/hal/GContextHolder;JZ)Ljava/lang/String;
.registers 7
const/16 v2, 0x5f
new-instance v1, Ljava/lang/StringBuilder;
const/16 v0, 0x100
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-static {p1, p2}, Lcom/glympse/android/hal/Platform;->timeToString(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getRandom4Hex()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
sget-object v0, Lcom/glympse/android/lib/hx;->gO:Ljava/lang/String;
if-nez v0, :cond_7c
const-string v0, "unknown-device-id"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_27
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
sget-object v0, Lcom/glympse/android/lib/StaticConfig;->BUILD_NAME:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/4 v0, 0x2
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const/16 v0, 0x2e
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v0, 0xd
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v0, 0x44
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
if-eqz p3, :cond_7f
const-string v0, "_R_"
:goto_4f
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getLanguage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getOsVersion()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getDeviceBrand()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getDeviceModel()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_7c
sget-object v0, Lcom/glympse/android/lib/hx;->gO:Ljava/lang/String;
goto :goto_27
:cond_7f
const-string v0, "_D_"
goto :goto_4f
.end method
.method public static a(Lcom/glympse/android/hal/GVector;Z)Ljava/lang/String;
.registers 14
if-eqz p0, :cond_8
invoke-virtual {p0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v0
if-nez v0, :cond_f
:cond_8
const-string v0, "\nNo platforms found"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J
move-result-wide v3
new-instance v5, Ljava/lang/StringBuilder;
const/16 v0, 0x2800
invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-virtual {p0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v6
const/4 v0, 0x0
move v2, v0
:goto_20
if-ge v2, v6, :cond_143
invoke-virtual {p0, v2}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/lib/GGlympsePrivate;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isStarted()Z
move-result v1
if-nez v1, :cond_37
const-string v0, "\nNot started platform found"
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_33
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_20
:cond_37
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;
move-result-object v1
check-cast v1, Lcom/glympse/android/lib/GConfigPrivate;
const-string v7, "\nConfig:            "
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->getContents()Lcom/glympse/android/core/GPrimitive;
move-result-object v7
invoke-static {v7}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v7, "\nDevice Id:         "
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->getDeviceId()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v1}, Lcom/glympse/android/lib/GConfigPrivate;->getAccounts()Lcom/glympse/android/core/GPrimitive;
move-result-object v7
if-eqz v7, :cond_9f
invoke-interface {v7}, Lcom/glympse/android/core/GPrimitive;->size()I
move-result v1
if-eqz v1, :cond_9f
new-instance v8, Lcom/glympse/android/lib/Primitive;
const/4 v1, 0x2
invoke-direct {v8, v1}, Lcom/glympse/android/lib/Primitive;-><init>(I)V
invoke-interface {v7}, Lcom/glympse/android/core/GPrimitive;->getKeys()Ljava/util/Enumeration;
move-result-object v9
:goto_73
:cond_73
invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v1
if-eqz v1, :cond_93
invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v7, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v10
if-eqz v10, :cond_73
const-string v11, "un"
invoke-static {v11}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
invoke-interface {v10, v11}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-interface {v8, v1, v10}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_73
:cond_93
const-string v1, "\nAccounts:          "
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v8}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_9f
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getCorrectedTime()Lcom/glympse/android/lib/GCorrectedTime;
move-result-object v7
if-eqz v7, :cond_e3
const-string v1, "\nLifetime:          "
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v7}, Lcom/glympse/android/lib/GCorrectedTime;->getPlatformStartTime()J
move-result-wide v8
sub-long v8, v3, v8
const-wide/16 v10, 0x3e8
div-long/2addr v8, v10
invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v1, "\nSwitches:          "
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v7}, Lcom/glympse/android/lib/GCorrectedTime;->getStateChangesCount()I
move-result v1
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, "\nState:             "
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->isActive()Z
move-result v1
if-eqz v1, :cond_140
const-string v1, "active"
:goto_cf
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "\nState Duration:    "
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v7}, Lcom/glympse/android/lib/GCorrectedTime;->getLastStateChangeTime()J
move-result-wide v7
sub-long v7, v3, v7
const-wide/16 v9, 0x3e8
div-long/2addr v7, v9
invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
:cond_e3
if-eqz p1, :cond_33
invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
if-eqz v0, :cond_33
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->getTickets()Lcom/glympse/android/core/GArray;
move-result-object v7
if-eqz v7, :cond_33
invoke-interface {v7}, Lcom/glympse/android/core/GArray;->length()I
move-result v0
if-eqz v0, :cond_33
const-string v1, "\nTickets Count:     "
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, "\nTickets:          "
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v1, 0x3
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v8
const/4 v0, 0x0
move v1, v0
:goto_10b
if-ge v1, v8, :cond_33
invoke-interface {v7, v1}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GTicket;
if-eqz v0, :cond_13c
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v0
if-eqz v0, :cond_13c
invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I
move-result v9
if-eqz v9, :cond_13c
const/4 v9, 0x0
invoke-interface {v0, v9}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
if-eqz v0, :cond_13c
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v9
if-nez v9, :cond_13c
const/16 v9, 0x20
invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_13c
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_10b
:cond_140
const-string v1, "passive"
goto :goto_cf
:cond_143
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_e
.end method
.method public static a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 13
const/16 v7, 0x44
const/16 v6, 0xd
const/4 v5, 0x2
const/4 v4, 0x0
const/16 v3, 0x2e
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x2800
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
sget-object v1, Lcom/glympse/android/lib/hx;->gH:Ljava/lang/String;
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x6
invoke-static {v1, v4, v2}, Lcom/glympse/android/hal/Helpers;->substrlen(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v1
const-string v2, "Properties:"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "\nReport Name:       "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "\nBase Url:          "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v2, Lcom/glympse/android/lib/hx;->f:Ljava/lang/String;
invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v2, "\nApplication Key:   "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "..."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "\nApi Version:       "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, "\nApi Version Full:  "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, "\nApp Build Name:    "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v1, Lcom/glympse/android/lib/StaticConfig;->BUILD_NAME:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v1, Lcom/glympse/android/lib/hx;->iC:Lcom/glympse/android/hal/GContextHolder;
invoke-interface {v1}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v0}, Lcom/glympse/android/hal/DebugBase;->appendReport(Landroid/content/Context;Ljava/lang/StringBuilder;)V
invoke-static {p3}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_9d
const-string v1, "\n\nRuntime:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_9d
invoke-static {p4}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_ab
const-string v1, "\n\nError Details:"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_ab
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static b(Lcom/glympse/android/hal/GContextHolder;)Ljava/lang/String;
.registers 13
const-wide/16 v10, 0xa
const/16 v9, 0x30
const/16 v2, 0x2e
const-wide/16 v7, 0x3c
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x200
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
const-string v1, "app="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {p0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Platform;->getAppName(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "&ver="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {p0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Platform;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "&api="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v1, 0xd
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
const/16 v1, 0x44
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
const-string v1, "&os="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getOsName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "&osver="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getOsVersion()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "&device="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getDeviceName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->urlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "&build="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v1, Lcom/glympse/android/lib/StaticConfig;->BUILD_NAME:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "&tz="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->secondsFromGMT()J
move-result-wide v1
div-long v3, v1, v7
div-long v5, v3, v7
invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J
move-result-wide v5
rem-long/2addr v3, v7
invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J
move-result-wide v3
const-wide/16 v7, 0x0
cmp-long v1, v1, v7
if-gez v1, :cond_9f
const/16 v1, 0x2d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_9f
cmp-long v1, v5, v10
if-gez v1, :cond_a6
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_a6
invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const/16 v1, 0x3a
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
cmp-long v1, v3, v10
if-gez v1, :cond_b5
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_b5
invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
const-string v1, "&locale="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getLanguage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "&region="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/glympse/android/hal/Platform;->getRegion()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method