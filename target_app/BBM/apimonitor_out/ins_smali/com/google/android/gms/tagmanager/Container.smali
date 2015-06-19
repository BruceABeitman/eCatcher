.class public Lcom/google/android/gms/tagmanager/Container;
.super Ljava/lang/Object;
.field private final TM:Ljava/lang/String;
.field private final TN:Lcom/google/android/gms/tagmanager/DataLayer;
.field private TO:Lcom/google/android/gms/tagmanager/ct;
.field private TP:Ljava/util/Map;
.field private TQ:Ljava/util/Map;
.field private volatile TR:J
.field private volatile TS:Ljava/lang/String;
.field private final mContext:Landroid/content/Context;
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/internal/c$j;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TP:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TQ:Ljava/util/Map;
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TS:Ljava/lang/String;
iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->TN:Lcom/google/android/gms/tagmanager/DataLayer;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->TM:Ljava/lang/String;
iput-wide p4, p0, Lcom/google/android/gms/tagmanager/Container;->TR:J
iget-object v0, p6, Lcom/google/android/gms/internal/c$j;->fV:Lcom/google/android/gms/internal/c$f;
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/internal/c$f;)V
iget-object v0, p6, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
if-eqz v0, :cond_2b
iget-object v0, p6, Lcom/google/android/gms/internal/c$j;->fU:[Lcom/google/android/gms/internal/c$i;
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a([Lcom/google/android/gms/internal/c$i;)V
:cond_2b
return-void
.end method
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/DataLayer;Ljava/lang/String;JLcom/google/android/gms/tagmanager/cr$c;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TP:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TQ:Ljava/util/Map;
const-string v0, ""
iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TS:Ljava/lang/String;
iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/google/android/gms/tagmanager/Container;->TN:Lcom/google/android/gms/tagmanager/DataLayer;
iput-object p3, p0, Lcom/google/android/gms/tagmanager/Container;->TM:Ljava/lang/String;
iput-wide p4, p0, Lcom/google/android/gms/tagmanager/Container;->TR:J
invoke-direct {p0, p6}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/tagmanager/cr$c;)V
return-void
.end method
.method private a(Lcom/google/android/gms/internal/c$f;)V
.registers 5
if-nez p1, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:try_start_8
:cond_8
invoke-static {p1}, Lcom/google/android/gms/tagmanager/cr;->b(Lcom/google/android/gms/internal/c$f;)Lcom/google/android/gms/tagmanager/cr$c;
:try_end_b
.catch Lcom/google/android/gms/tagmanager/cr$g; {:try_start_8 .. :try_end_b} :catch_10
move-result-object v0
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/tagmanager/cr$c;)V
:goto_f
return-void
:catch_10
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Not loading resource: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " because it is invalid: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/cr$g;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
goto :goto_f
.end method
.method private a(Lcom/google/android/gms/tagmanager/cr$c;)V
.registers 9
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/cr$c;->getVersion()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TS:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TS:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->bb(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/ag;
move-result-object v6
new-instance v0, Lcom/google/android/gms/tagmanager/ct;
iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->mContext:Landroid/content/Context;
iget-object v3, p0, Lcom/google/android/gms/tagmanager/Container;->TN:Lcom/google/android/gms/tagmanager/DataLayer;
new-instance v4, Lcom/google/android/gms/tagmanager/Container$a;
invoke-direct {v4, p0, v2}, Lcom/google/android/gms/tagmanager/Container$a;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/Container$1;)V
new-instance v5, Lcom/google/android/gms/tagmanager/Container$b;
invoke-direct {v5, p0, v2}, Lcom/google/android/gms/tagmanager/Container$b;-><init>(Lcom/google/android/gms/tagmanager/Container;Lcom/google/android/gms/tagmanager/Container$1;)V
move-object v2, p1
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/ct;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/cr$c;Lcom/google/android/gms/tagmanager/DataLayer;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/s$a;Lcom/google/android/gms/tagmanager/ag;)V
invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/Container;->a(Lcom/google/android/gms/tagmanager/ct;)V
return-void
.end method
.method private declared-synchronized a(Lcom/google/android/gms/tagmanager/ct;)V
.registers 3
monitor-enter p0
:try_start_1
iput-object p1, p0, Lcom/google/android/gms/tagmanager/Container;->TO:Lcom/google/android/gms/tagmanager/ct;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-void
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method private a([Lcom/google/android/gms/internal/c$i;)V
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
array-length v2, p1
const/4 v0, 0x0
:goto_7
if-ge v0, v2, :cond_11
aget-object v3, p1, v0
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_11
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->iE()Lcom/google/android/gms/tagmanager/ct;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/ct;->f(Ljava/util/List;)V
return-void
.end method
.method private declared-synchronized iE()Lcom/google/android/gms/tagmanager/ct;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TO:Lcom/google/android/gms/tagmanager/ct;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return-object v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method
.method  aY(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
.registers 4
iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->TP:Ljava/util/Map;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TP:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_d
return-object v0
:catchall_d
move-exception v0
monitor-exit v1
throw v0
.end method
.method  aZ(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;
.registers 4
iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->TQ:Ljava/util/Map;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TQ:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;
monitor-exit v1
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_d
return-object v0
:catchall_d
move-exception v0
monitor-exit v1
throw v0
.end method
.method  ba(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->iE()Lcom/google/android/gms/tagmanager/ct;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/ct;->ba(Ljava/lang/String;)V
return-void
.end method
.method  bb(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/ag;
.registers 4
invoke-static {}, Lcom/google/android/gms/tagmanager/ce;->ju()Lcom/google/android/gms/tagmanager/ce;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ce;->jv()Lcom/google/android/gms/tagmanager/ce$a;
move-result-object v0
sget-object v1, Lcom/google/android/gms/tagmanager/ce$a;->VY:Lcom/google/android/gms/tagmanager/ce$a;
invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/ce$a;->equals(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/android/gms/tagmanager/bq;
invoke-direct {v0}, Lcom/google/android/gms/tagmanager/bq;-><init>()V
return-object v0
.end method
.method public getBoolean(Ljava/lang/String;)Z
.registers 5
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->iE()Lcom/google/android/gms/tagmanager/ct;
move-result-object v0
if-nez v0, :cond_14
const-string v0, "getBoolean called for closed container."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->kr()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
:goto_13
return v0
:cond_14
:try_start_14
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/ct;->bC(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->n(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_25
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_27
move-result v0
goto :goto_13
:catch_27
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Calling getBoolean() threw an exception: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " Returning default value."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->kr()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_13
.end method
.method public getContainerId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TM:Ljava/lang/String;
return-object v0
.end method
.method public getDouble(Ljava/lang/String;)D
.registers 5
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->iE()Lcom/google/android/gms/tagmanager/ct;
move-result-object v0
if-nez v0, :cond_14
const-string v0, "getDouble called for closed container."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->kq()Ljava/lang/Double;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v0
:goto_13
return-wide v0
:cond_14
:try_start_14
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/ct;->bC(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->m(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Double;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
:try_end_25
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_27
move-result-wide v0
goto :goto_13
:catch_27
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Calling getDouble() threw an exception: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " Returning default value."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->kq()Ljava/lang/Double;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v0
goto :goto_13
.end method
.method public getLastRefreshTime()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/tagmanager/Container;->TR:J
return-wide v0
.end method
.method public getLong(Ljava/lang/String;)J
.registers 5
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->iE()Lcom/google/android/gms/tagmanager/ct;
move-result-object v0
if-nez v0, :cond_14
const-string v0, "getLong called for closed container."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->kp()Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
:goto_13
return-wide v0
:cond_14
:try_start_14
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/ct;->bC(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->l(Lcom/google/android/gms/internal/d$a;)Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
:try_end_25
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_25} :catch_27
move-result-wide v0
goto :goto_13
:catch_27
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Calling getLong() threw an exception: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " Returning default value."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->kp()Ljava/lang/Long;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v0
goto :goto_13
.end method
.method public getString(Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-direct {p0}, Lcom/google/android/gms/tagmanager/Container;->iE()Lcom/google/android/gms/tagmanager/ct;
move-result-object v0
if-nez v0, :cond_10
const-string v0, "getString called for closed container."
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->kt()Ljava/lang/String;
move-result-object v0
:goto_f
return-object v0
:cond_10
:try_start_10
invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/ct;->bC(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/by;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/by;->getObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/internal/d$a;
invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->j(Lcom/google/android/gms/internal/d$a;)Ljava/lang/String;
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_1d} :catch_1f
move-result-object v0
goto :goto_f
:catch_1f
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Calling getString() threw an exception: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " Returning default value."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/tagmanager/bh;->t(Ljava/lang/String;)V
invoke-static {}, Lcom/google/android/gms/tagmanager/di;->kt()Ljava/lang/String;
move-result-object v0
goto :goto_f
.end method
.method  iD()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TS:Ljava/lang/String;
return-object v0
.end method
.method public isDefault()Z
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public registerFunctionCallMacroCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallMacroCallback;)V
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Macro handler must be non-null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->TP:Ljava/util/Map;
monitor-enter v1
:try_start_d
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TP:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
:try_end_13
.catchall {:try_start_d .. :try_end_13} :catchall_14
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public registerFunctionCallTagCallback(Ljava/lang/String;Lcom/google/android/gms/tagmanager/Container$FunctionCallTagCallback;)V
.registers 5
if-nez p2, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Tag callback must be non-null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->TQ:Ljava/util/Map;
monitor-enter v1
:try_start_d
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TQ:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
:try_end_13
.catchall {:try_start_d .. :try_end_13} :catchall_14
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method  release()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TO:Lcom/google/android/gms/tagmanager/ct;
return-void
.end method
.method public unregisterFunctionCallMacroCallback(Ljava/lang/String;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->TP:Ljava/util/Map;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TP:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_a
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method public unregisterFunctionCallTagCallback(Ljava/lang/String;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/tagmanager/Container;->TQ:Ljava/util/Map;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/tagmanager/Container;->TQ:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_a
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method