.class final Lcom/lenovo/lps/reaper/sdk/a/e;
.super Ljava/lang/Object;
.implements Lcom/lenovo/lps/reaper/sdk/a/i;
.field private static a:Ljava/lang/String;
.field private b:Z
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "SDKEnable"
sput-object v0, Lcom/lenovo/lps/reaper/sdk/a/e;->a:Ljava/lang/String;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/a/e;->b:Z
return-void
.end method
.method public final a()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/a/e;->b:Z
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 6
:try_start_0
invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/a/e;->b:Z
sget-object v0, Lcom/lenovo/lps/reaper/sdk/a/e;->a:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/a/e;->b:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_25
:try_end_25
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_25} :catch_26
return-void
:catch_26
move-exception v0
sget-object v1, Lcom/lenovo/lps/reaper/sdk/a/e;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_25
.end method
.method public final a(Ljava/lang/String;)Z
.registers 3
const-string/jumbo v0, "SDKEnable"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/a/e;->b:Z
return v0
.end method