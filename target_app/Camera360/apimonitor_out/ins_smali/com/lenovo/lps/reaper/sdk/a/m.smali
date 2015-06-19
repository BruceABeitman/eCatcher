.class final Lcom/lenovo/lps/reaper/sdk/a/m;
.super Ljava/lang/Object;
.implements Lcom/lenovo/lps/reaper/sdk/a/i;
.field private a:J
.field private b:Z
.method constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/32 v0, 0x124f80
iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/a/m;->a:J
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/a/m;->b:Z
return-void
.end method
.method public final a()V
.registers 3
const-wide/32 v0, 0x124f80
iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/a/m;->a:J
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/a/m;->b:Z
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
:try_start_0
const-string/jumbo v0, "MsgEnable"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_30
invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/a/m;->b:Z
const-string/jumbo v0, "MsgTasskConfig"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/a/m;->b:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_2f
:cond_2f
return-void
:cond_30
const-string/jumbo v0, "MsgNeedElapsed"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2f
invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
const-wide/16 v2, 0x3c
mul-long/2addr v0, v2
const-wide/16 v2, 0x3e8
mul-long/2addr v0, v2
iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/a/m;->a:J
const-string/jumbo v0, "MsgTasskConfig"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/a/m;->a:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_65
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_65} :catch_66
goto :goto_2f
:catch_66
move-exception v0
const-string/jumbo v1, "MsgTasskConfig"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Wrong Value: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2f
.end method
.method public final a(Ljava/lang/String;)Z
.registers 3
const-string/jumbo v0, "MsgEnable"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
const-string/jumbo v0, "MsgNeedElapsed"
invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
:cond_12
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/a/m;->b:Z
return v0
.end method
.method public final c()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/a/m;->a:J
return-wide v0
.end method