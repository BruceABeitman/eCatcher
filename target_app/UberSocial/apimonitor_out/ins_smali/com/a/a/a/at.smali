.class public final Lcom/a/a/a/at;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Ljava/util/concurrent/atomic/AtomicReference;
.field private b:Lcom/a/a/a/ax;
.field private c:Z
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V
iput-object v0, p0, Lcom/a/a/a/at;->a:Ljava/util/concurrent/atomic/AtomicReference;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/a/a/a/at;->c:Z
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/a/a/a/at;-><init>()V
return-void
.end method
.method public static a()Lcom/a/a/a/at;
.registers 1
invoke-static {}, Lcom/a/a/a/au;->a()Lcom/a/a/a/at;
move-result-object v0
return-object v0
.end method
.method private static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
.registers 13
:try_start_0
new-instance v0, Ljava/lang/StringBuffer;
new-instance v1, Ljava/lang/String;
const/4 v2, 0x3
new-array v2, v2, [C
fill-array-data v2, :array_12c
invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V
invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
const-string v1, "\\."
invoke-virtual {v0}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/a/a/a/bc;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/a/a/a/bc;->b(ILjava/lang/String;)Ljavax/crypto/Cipher;
:try_end_37
.catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_37} :catch_a9
move-result-object v2
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
new-instance v4, Lcom/a/a/a/bp;
invoke-direct {v4, p2}, Lcom/a/a/a/bp;-><init>(Landroid/content/Context;)V
:try_start_42
const-string v0, "APPLICATION_INSTALLATION_UUID"
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v4}, Lcom/a/a/a/bp;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:goto_51
:try_end_51
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_51} :catch_bc
invoke-virtual {v4}, Lcom/a/a/a/bp;->f()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_5d
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_cd
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
:try_start_69
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/a/a/a/bq;
invoke-virtual {v1}, Lcom/a/a/a/bq;->name()Ljava/lang/String;
move-result-object v1
sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v6
invoke-virtual {v3, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_80
.catch Ljava/lang/Exception; {:try_start_69 .. :try_end_80} :catch_81
goto :goto_5d
:catch_81
move-exception v1
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v6
invoke-virtual {v6}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v6
const-string v7, "Crashlytics"
new-instance v8, Ljava/lang/StringBuilder;
const-string v9, "Could not write value to JSON: "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/a/a/a/bq;
invoke-virtual {v0}, Lcom/a/a/a/bq;->name()Ljava/lang/String;
move-result-object v0
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-interface {v6, v7, v0, v1}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5d
:catch_a9
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Could not create cipher to encrypt headers."
invoke-interface {v1, v2, v3, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const-string v0, ""
:goto_bb
:cond_bb
return-object v0
:catch_bc
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v5, "Crashlytics"
const-string v6, "Could not write application id to JSON"
invoke-interface {v1, v5, v6, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_51
:cond_cd
:try_start_cd
const-string v0, "os_version"
invoke-virtual {v4}, Lcom/a/a/a/bp;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_d6
.catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d6} :catch_f8
:goto_d6
:try_start_d6
const-string v0, "model"
invoke-virtual {v4}, Lcom/a/a/a/bp;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_df
.catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_df} :catch_109
:goto_df
const-string v0, ""
invoke-virtual {v3}, Lorg/json/JSONObject;->length()I
move-result v1
if-lez v1, :cond_bb
:try_start_e7
invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-virtual {v2, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
move-result-object v1
invoke-static {v1}, Lcom/a/a/a/bc;->a([B)Ljava/lang/String;
:try_end_f6
.catch Ljava/security/GeneralSecurityException; {:try_start_e7 .. :try_end_f6} :catch_11a
move-result-object v0
goto :goto_bb
:catch_f8
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v5, "Crashlytics"
const-string v6, "Could not write OS version to JSON"
invoke-interface {v1, v5, v6, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_d6
:catch_109
move-exception v0
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v4, "Crashlytics"
const-string v5, "Could not write model to JSON"
invoke-interface {v1, v4, v5, v0}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_df
:catch_11a
move-exception v1
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v2
invoke-virtual {v2}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v2
const-string v3, "Crashlytics"
const-string v4, "Could not encrypt IDs"
invoke-interface {v2, v3, v4, v1}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_bb
nop
:array_12c
.array-data 0x2
0x73t 0x0t
0x6ct 0x0t
0x63t 0x0t
.end array-data
.end method
.method public final declared-synchronized a(Landroid/content/Context;Lcom/a/a/a/bw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/a/a/a/at;
.registers 19
monitor-enter p0
:try_start_1
iget-boolean v1, p0, Lcom/a/a/a/at;->c:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_79
if-eqz v1, :cond_8
move-object v1, p0
:goto_6
monitor-exit p0
return-object v1
:try_start_8
:cond_8
iget-object v1, p0, Lcom/a/a/a/at;->b:Lcom/a/a/a/ax;
if-nez v1, :cond_74
const/4 v1, 0x0
invoke-static {p1, v1}, Lcom/a/a/a/cs;->a(Landroid/content/Context;Z)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
new-instance v9, Lcom/a/a/a/bi;
invoke-direct {v9}, Lcom/a/a/a/bi;-><init>()V
new-instance v10, Lcom/a/a/a/az;
invoke-direct {v10}, Lcom/a/a/a/az;-><init>()V
new-instance v11, Lcom/a/a/a/ao;
invoke-direct {v11}, Lcom/a/a/a/ao;-><init>()V
invoke-static {p1}, Lcom/a/a/a/bc;->g(Landroid/content/Context;)Ljava/lang/String;
move-result-object v8
sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v4, "https://settings.crashlytics.com/spi/v2/platforms/android/apps/%s/settings"
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
aput-object v1, v6, v7
invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
new-instance v12, Lcom/a/a/a/ap;
move-object/from16 v0, p5
invoke-direct {v12, v0, v3, p2}, Lcom/a/a/a/ap;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/a/a/a/bw;)V
invoke-static {v2, v1, p1}, Lcom/a/a/a/at;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v4, 0x0
invoke-static {p1}, Lcom/a/a/a/bc;->i(Landroid/content/Context;)Ljava/lang/String;
move-result-object v6
aput-object v6, v1, v4
invoke-static {v1}, Lcom/a/a/a/bc;->a([Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v5}, Lcom/a/a/a/bj;->a(Ljava/lang/String;)Lcom/a/a/a/bj;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/bj;->a()I
move-result v7
new-instance v1, Lcom/a/a/a/ba;
move-object/from16 v5, p4
move-object/from16 v6, p3
invoke-direct/range {v1 .. v8}, Lcom/a/a/a/ba;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
new-instance v2, Lcom/a/a/a/ax;
move-object v3, v1
move-object v4, v9
move-object v5, v10
move-object v6, v11
move-object v7, v12
invoke-direct/range {v2 .. v7}, Lcom/a/a/a/ax;-><init>(Lcom/a/a/a/ba;Lcom/a/a/a/bi;Lcom/a/a/a/az;Lcom/a/a/a/ao;Lcom/a/a/a/cc;)V
iput-object v2, p0, Lcom/a/a/a/at;->b:Lcom/a/a/a/ax;
:cond_74
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/a/a/a/at;->c:Z
:try_end_77
.catchall {:try_start_8 .. :try_end_77} :catchall_79
move-object v1, p0
goto :goto_6
:catchall_79
move-exception v1
monitor-exit p0
throw v1
.end method
.method public final a(Lcom/a/a/a/av;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/a/a/a/at;->a:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/a/a/a/ay;
if-nez v0, :cond_b
:goto_a
return-object p2
:cond_b
invoke-interface {p1, v0}, Lcom/a/a/a/av;->a(Lcom/a/a/a/ay;)Ljava/lang/Object;
move-result-object p2
goto :goto_a
.end method
.method public final b()Lcom/a/a/a/ay;
.registers 2
iget-object v0, p0, Lcom/a/a/a/at;->a:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/a/a/a/ay;
return-object v0
.end method
.method public final declared-synchronized c()Z
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/a/a/a/at;->b:Lcom/a/a/a/ax;
invoke-virtual {v0}, Lcom/a/a/a/ax;->a()Lcom/a/a/a/ay;
move-result-object v0
iget-object v1, p0, Lcom/a/a/a/at;->a:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_13
if-eqz v0, :cond_11
const/4 v0, 0x1
:goto_f
monitor-exit p0
return v0
:cond_11
const/4 v0, 0x0
goto :goto_f
:catchall_13
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized d()Z
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/a/a/a/at;->b:Lcom/a/a/a/ax;
sget-object v1, Lcom/a/a/a/aw;->b:Lcom/a/a/a/aw;
invoke-virtual {v0, v1}, Lcom/a/a/a/ax;->a(Lcom/a/a/a/aw;)Lcom/a/a/a/ay;
move-result-object v0
iget-object v1, p0, Lcom/a/a/a/at;->a:Ljava/util/concurrent/atomic/AtomicReference;
invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
if-nez v0, :cond_20
invoke-static {}, Lcom/a/a/a/cw;->a()Lcom/a/a/a/cw;
move-result-object v1
invoke-virtual {v1}, Lcom/a/a/a/cw;->b()Lcom/a/a/a/cr;
move-result-object v1
const-string v2, "Crashlytics"
const-string v3, "Failed to force reload of settings from Crashlytics."
const/4 v4, 0x0
invoke-interface {v1, v2, v3, v4}, Lcom/a/a/a/cr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:cond_20
:try_end_20
.catchall {:try_start_1 .. :try_end_20} :catchall_27
if-eqz v0, :cond_25
const/4 v0, 0x1
:goto_23
monitor-exit p0
return v0
:cond_25
const/4 v0, 0x0
goto :goto_23
:catchall_27
move-exception v0
monitor-exit p0
throw v0
.end method