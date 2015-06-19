.class public Lcom/flurry/sdk/dk;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String;
.field private static b:Lcom/flurry/sdk/dk;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/flurry/sdk/dk;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/flurry/sdk/dk;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized a()Lcom/flurry/sdk/dk;
.registers 2
const-class v1, Lcom/flurry/sdk/dk;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/flurry/sdk/dk;->b:Lcom/flurry/sdk/dk;
if-nez v0, :cond_e
new-instance v0, Lcom/flurry/sdk/dk;
invoke-direct {v0}, Lcom/flurry/sdk/dk;-><init>()V
sput-object v0, Lcom/flurry/sdk/dk;->b:Lcom/flurry/sdk/dk;
:cond_e
sget-object v0, Lcom/flurry/sdk/dk;->b:Lcom/flurry/sdk/dk;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public b()I
.registers 6
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v0
const-string v1, "AgentVersion"
invoke-virtual {v0, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
const/4 v1, 0x4
sget-object v2, Lcom/flurry/sdk/dk;->a:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "getAgentVersion() = "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
return v0
.end method
.method  c()I
.registers 3
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v0
const-string v1, "ReleaseMajorVersion"
invoke-virtual {v0, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method  d()I
.registers 3
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v0
const-string v1, "ReleaseMinorVersion"
invoke-virtual {v0, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method  e()I
.registers 3
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v0
const-string v1, "ReleasePatchVersion"
invoke-virtual {v0, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method  f()Ljava/lang/String;
.registers 3
invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;
move-result-object v0
const-string v1, "ReleaseBetaVersion"
invoke-virtual {v0, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public g()Ljava/lang/String;
.registers 7
invoke-virtual {p0}, Lcom/flurry/sdk/dk;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_50
const-string v0, "."
:goto_c
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v1
const-string v2, "Flurry_Android_%d_%d.%d.%d%s%s"
const/4 v3, 0x6
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-virtual {p0}, Lcom/flurry/sdk/dk;->b()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
invoke-virtual {p0}, Lcom/flurry/sdk/dk;->c()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x2
invoke-virtual {p0}, Lcom/flurry/sdk/dk;->d()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x3
invoke-virtual {p0}, Lcom/flurry/sdk/dk;->e()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x4
aput-object v0, v3, v4
const/4 v0, 0x5
invoke-virtual {p0}, Lcom/flurry/sdk/dk;->f()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v0
invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_50
const-string v0, ""
goto :goto_c
.end method
.method public h()Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;
move-result-object v1
invoke-virtual {v1}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;
move-result-object v1
if-eqz v1, :cond_f
invoke-virtual {v1}, Lcom/flurry/sdk/dg;->j()Ljava/lang/String;
move-result-object v0
:cond_f
return-object v0
.end method
.method public i()Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;
move-result-object v1
invoke-virtual {v1}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;
move-result-object v1
if-eqz v1, :cond_f
invoke-virtual {v1}, Lcom/flurry/sdk/dg;->k()Ljava/lang/String;
move-result-object v0
:cond_f
return-object v0
.end method
.method public j()Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;
move-result-object v1
invoke-virtual {v1}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;
move-result-object v1
if-eqz v1, :cond_f
invoke-virtual {v1}, Lcom/flurry/sdk/dg;->l()Ljava/lang/String;
move-result-object v0
:cond_f
return-object v0
.end method
.method public k()Z
.registers 2
invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0}, Lcom/flurry/sdk/dg;->o()Z
move-result v0
:goto_e
return v0
:cond_f
const/4 v0, 0x1
goto :goto_e
.end method
.method public l()Ljava/util/Map;
.registers 2
invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;
move-result-object v0
invoke-virtual {v0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0}, Lcom/flurry/sdk/dg;->p()Ljava/util/Map;
move-result-object v0
:goto_e
return-object v0
:cond_f
invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
move-result-object v0
goto :goto_e
.end method