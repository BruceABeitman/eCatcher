.class public final Lcom/lenovo/lps/reaper/sdk/g/c;
.super Ljava/lang/Object;
.field private a:Ljava/lang/String;
.field private b:I
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Z
.field private f:[I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v0, "All"
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:Ljava/lang/String;
const/4 v0, 0x2
new-array v0, v0, [I
fill-array-data v0, :array_12
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->f:[I
return-void
nop
:array_12
.array-data 0x4
0x58t 0x2t 0x0t 0x0t
0x58t 0x2t 0x0t 0x0t
.end array-data
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->a:Ljava/lang/String;
return-object v0
.end method
.method public final a(I)V
.registers 2
iput p1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:I
return-void
.end method
.method public final a(Landroid/content/Context;)V
.registers 6
:try_start_0
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
const/16 v2, 0x80
invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->a:Ljava/lang/String;
iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
iput v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:I
iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
if-eqz v0, :cond_76
iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string/jumbo v1, "lenovo:applicationToken"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:Ljava/lang/String;
iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string/jumbo v1, "lenovo:channel"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_3b
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:Ljava/lang/String;
:cond_3b
iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string/jumbo v1, "lenovo:autoDispatchData"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Z
iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string/jumbo v1, "lenovo:level0EventNum"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
const-string/jumbo v2, "lenovo:level1EventNum"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
:try_end_57
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_df
move-result-object v1
if-eqz v0, :cond_67
:try_start_5a
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->f:[I
const/4 v3, 0x0
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
aput v0, v2, v3
:cond_67
if-eqz v1, :cond_76
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->f:[I
const/4 v2, 0x1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
aput v1, v0, v2
:goto_76
:cond_76
:try_start_76
:try_end_76
.catch Ljava/lang/Exception; {:try_start_5a .. :try_end_76} :catch_d4
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:Ljava/lang/String;
if-nez v0, :cond_eb
const-string/jumbo v0, ""
:goto_7d
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:Ljava/lang/String;
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->a:Ljava/lang/String;
if-nez v0, :cond_f2
const-string/jumbo v0, ""
:goto_86
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:Ljava/lang/String;
if-nez v0, :cond_f9
const-string/jumbo v0, ""
:goto_8f
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:Ljava/lang/String;
invoke-static {}, Lcom/lenovo/lps/reaper/sdk/b/m;->a()Z
move-result v0
if-eqz v0, :cond_d3
const-string/jumbo v0, "AppConfig"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "; "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "; "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "; "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_d3
:goto_d3
return-void
:catch_d4
move-exception v0
const-string/jumbo v1, "AppConfig"
const-string/jumbo v2, "event num error"
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_de
.catch Ljava/lang/Exception; {:try_start_76 .. :try_end_de} :catch_df
goto :goto_76
:catch_df
move-exception v0
const-string/jumbo v1, "AppConfig"
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_d3
:cond_eb
:try_start_eb
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:Ljava/lang/String;
invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_7d
:cond_f2
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->a:Ljava/lang/String;
invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_86
:cond_f9
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:Ljava/lang/String;
invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;
:try_end_fe
.catch Ljava/lang/Exception; {:try_start_eb .. :try_end_fe} :catch_df
move-result-object v0
goto :goto_8f
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
if-eqz p1, :cond_c
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:Ljava/lang/String;
goto :goto_c
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->b:I
return v0
.end method
.method public final b(Ljava/lang/String;)V
.registers 3
if-eqz p1, :cond_c
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->a:Ljava/lang/String;
goto :goto_c
.end method
.method public final c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->c:Ljava/lang/String;
return-object v0
.end method
.method public final c(Ljava/lang/String;)V
.registers 3
if-eqz p1, :cond_c
invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/b/h;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:Ljava/lang/String;
goto :goto_c
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->d:Ljava/lang/String;
return-object v0
.end method
.method public final e()[I
.registers 2
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->f:[I
return-object v0
.end method
.method public final f()Z
.registers 2
iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/g/c;->e:Z
return v0
.end method