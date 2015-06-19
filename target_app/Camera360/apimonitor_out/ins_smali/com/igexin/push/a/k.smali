.class public Lcom/igexin/push/a/k;
.super Ljava/lang/Object;
.field private static a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "FileConfig"
sput-object v0, Lcom/igexin/push/a/k;->a:Ljava/lang/String;
return-void
.end method
.method public static a()V
.registers 4
const/4 v1, 0x0
new-instance v0, Ljava/io/File;
sget-object v2, Lcom/igexin/push/core/g;->X:Ljava/lang/String;
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_2f
:try_start_e
new-instance v0, Ljava/io/FileInputStream;
sget-object v2, Lcom/igexin/push/core/g;->X:Ljava/lang/String;
invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
:try_start_15
:try_end_15
.catchall {:try_start_e .. :try_end_15} :catchall_28
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_1e
invoke-static {v0}, Lcom/igexin/push/a/k;->a(Ljava/io/InputStream;)V
:try_end_18
.catchall {:try_start_15 .. :try_end_18} :catchall_74
.catch Ljava/lang/Exception; {:try_start_15 .. :try_end_18} :catch_79
if-eqz v0, :cond_1d
:try_start_1a
invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_6e
:goto_1d
:cond_1d
return-void
:catch_1e
move-exception v0
move-object v0, v1
:goto_20
if-eqz v0, :cond_1d
:try_start_22
invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
:try_end_25
.catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26
goto :goto_1d
:catch_26
move-exception v0
goto :goto_1d
:catchall_28
move-exception v0
:goto_29
if-eqz v1, :cond_2e
:try_start_2b
invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
:goto_2e
:cond_2e
:try_end_2e
.catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_70
throw v0
:cond_2f
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/igexin/push/core/g;->g:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ".properties"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sget-object v2, Lcom/igexin/push/core/g;->i:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
move-result-object v2
:try_start_4f
invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v1
invoke-static {v1}, Lcom/igexin/push/a/k;->a(Ljava/io/InputStream;)V
:try_end_56
.catchall {:try_start_4f .. :try_end_56} :catchall_67
.catch Ljava/lang/Exception; {:try_start_4f .. :try_end_56} :catch_5e
if-eqz v1, :cond_1d
:try_start_58
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_5b
.catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5c
goto :goto_1d
:catch_5c
move-exception v0
goto :goto_1d
:catch_5e
move-exception v0
if-eqz v1, :cond_1d
:try_start_61
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_64
.catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65
goto :goto_1d
:catch_65
move-exception v0
goto :goto_1d
:catchall_67
move-exception v0
if-eqz v1, :cond_6d
:try_start_6a
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:goto_6d
:cond_6d
:try_end_6d
.catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6d} :catch_72
throw v0
:catch_6e
move-exception v0
goto :goto_1d
:catch_70
move-exception v1
goto :goto_2e
:catch_72
move-exception v1
goto :goto_6d
:catchall_74
move-exception v1
move-object v3, v1
move-object v1, v0
move-object v0, v3
goto :goto_29
:catch_79
move-exception v1
goto :goto_20
.end method
.method public static a(Ljava/io/InputStream;)V
.registers 5
:try_start_0
new-instance v0, Ljava/io/BufferedReader;
new-instance v1, Ljava/io/InputStreamReader;
const-string/jumbo v2, "UTF-8"
invoke-direct {v1, p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:cond_d
:goto_d
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_16c
const-string/jumbo v2, "#"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_d
const-string/jumbo v2, "="
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
array-length v2, v1
const/4 v3, 0x2
if-lt v2, v3, :cond_d
const/4 v2, 0x0
aget-object v2, v1, v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
aget-object v1, v1, v3
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
const-string/jumbo v3, "sdk.cm_address"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_51
const-string/jumbo v2, ","
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/igexin/push/a/j;->a:[Ljava/lang/String;
sget-object v1, Lcom/igexin/push/a/j;->a:[Ljava/lang/String;
const/4 v2, 0x0
aget-object v1, v1, v2
sput-object v1, Lcom/igexin/push/core/g;->a:Ljava/lang/String;
goto :goto_d
:catch_4f
move-exception v0
:goto_50
return-void
:cond_51
const-string/jumbo v3, "sdk.phone_address"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5d
sput-object v1, Lcom/igexin/push/core/g;->b:Ljava/lang/String;
goto :goto_d
:cond_5d
const-string/jumbo v3, "sdk.cm_address_backup"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_70
const-string/jumbo v2, ","
invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/igexin/push/a/j;->c:[Ljava/lang/String;
goto :goto_d
:cond_70
const-string/jumbo v3, "sdk.phone_address_backup"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_7c
sput-object v1, Lcom/igexin/push/a/j;->d:Ljava/lang/String;
goto :goto_d
:cond_7c
const-string/jumbo v3, "sdk.debug"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_d
const-string/jumbo v3, "sdk.domainbackup.enable"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_9a
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
sput-boolean v1, Lcom/igexin/push/a/j;->j:Z
goto/16 :goto_d
:cond_9a
const-string/jumbo v3, "sdk.readlocalcell.enable"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_af
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
sput-boolean v1, Lcom/igexin/push/a/j;->k:Z
goto/16 :goto_d
:cond_af
const-string/jumbo v3, "sdk.uploadapplist.enable"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_c4
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
sput-boolean v1, Lcom/igexin/push/a/j;->l:Z
goto/16 :goto_d
:cond_c4
const-string/jumbo v3, "sdk.feature.sendmessage.enable"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_d9
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
sput-boolean v1, Lcom/igexin/push/a/j;->m:Z
goto/16 :goto_d
:cond_d9
const-string/jumbo v3, "sdk.feature.settag.enable"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_ee
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
sput-boolean v1, Lcom/igexin/push/a/j;->n:Z
goto/16 :goto_d
:cond_ee
const-string/jumbo v3, "sdk.feature.setsilenttime.enable"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_103
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
sput-boolean v1, Lcom/igexin/push/a/j;->o:Z
goto/16 :goto_d
:cond_103
const-string/jumbo v3, "sdk.ca.enable"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_118
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
sput-boolean v1, Lcom/igexin/push/a/j;->r:Z
goto/16 :goto_d
:cond_118
const-string/jumbo v3, "sdk.snl.enable"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_12d
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
sput-boolean v1, Lcom/igexin/push/a/j;->s:Z
goto/16 :goto_d
:cond_12d
const-string/jumbo v3, "sdk.snl.maxactiveflow"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_142
invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v1
sput-wide v1, Lcom/igexin/push/a/j;->t:J
goto/16 :goto_d
:cond_142
const-string/jumbo v3, "sdk.feature.setheartbeatinterval.enable"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_157
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
sput-boolean v1, Lcom/igexin/push/a/j;->p:Z
goto/16 :goto_d
:cond_157
const-string/jumbo v3, "sdk.feature.setsockettimeout.enable"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_d
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
sput-boolean v1, Lcom/igexin/push/a/j;->q:Z
goto/16 :goto_d
:cond_16c
invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
:try_end_16f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16f} :catch_4f
goto/16 :goto_50
.end method