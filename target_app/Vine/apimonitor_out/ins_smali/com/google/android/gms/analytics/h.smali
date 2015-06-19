.class  Lcom/google/android/gms/analytics/h;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/analytics/m;
.field private static tE:Lcom/google/android/gms/analytics/h;
.field private static final tn:Ljava/lang/Object;
.field private final mContext:Landroid/content/Context;
.field private tF:Ljava/lang/String;
.field private tG:Z
.field private final tH:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/google/android/gms/analytics/h;->tn:Ljava/lang/Object;
return-void
.end method
.method protected constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/analytics/h;->tG:Z
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/analytics/h;->tH:Ljava/lang/Object;
iput-object p1, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;
invoke-direct {p0}, Lcom/google/android/gms/analytics/h;->cu()V
return-void
.end method
.method private K(Ljava/lang/String;)Z
.registers 6
const/4 v0, 0x0
:try_start_1
const-string v1, "Storing clientId."
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;
const-string v2, "gaClientId"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_19
.catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_19} :catch_1b
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_22
const/4 v0, 0x1
:goto_1a
return v0
:catch_1b
move-exception v1
const-string v1, "Error creating clientId file."
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
goto :goto_1a
:catch_22
move-exception v1
const-string v1, "Error writing to clientId file."
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
goto :goto_1a
.end method
.method static synthetic a(Lcom/google/android/gms/analytics/h;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/h;->tH:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/analytics/h;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/h;->tF:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/analytics/h;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/analytics/h;->tG:Z
return p1
.end method
.method public static cq()Lcom/google/android/gms/analytics/h;
.registers 2
sget-object v1, Lcom/google/android/gms/analytics/h;->tn:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/analytics/h;->tE:Lcom/google/android/gms/analytics/h;
monitor-exit v1
return-object v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method private cs()Ljava/lang/String;
.registers 5
iget-boolean v0, p0, Lcom/google/android/gms/analytics/h;->tG:Z
if-nez v0, :cond_1a
iget-object v1, p0, Lcom/google/android/gms/analytics/h;->tH:Ljava/lang/Object;
monitor-enter v1
:try_start_7
iget-boolean v0, p0, Lcom/google/android/gms/analytics/h;->tG:Z
if-nez v0, :cond_19
const-string v0, "Waiting for clientId to load"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:cond_10
:try_start_10
:try_end_10
.catchall {:try_start_7 .. :try_end_10} :catchall_3a
iget-object v0, p0, Lcom/google/android/gms/analytics/h;->tH:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->wait()V
:try_start_15
:try_end_15
.catchall {:try_start_10 .. :try_end_15} :catchall_3a
.catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_15} :catch_22
:goto_15
iget-boolean v0, p0, Lcom/google/android/gms/analytics/h;->tG:Z
if-eqz v0, :cond_10
:cond_19
monitor-exit v1
:try_end_1a
.catchall {:try_start_15 .. :try_end_1a} :catchall_3a
:cond_1a
const-string v0, "Loaded clientId"
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/h;->tF:Ljava/lang/String;
return-object v0
:catch_22
move-exception v0
:try_start_23
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Exception while waiting for clientId: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
goto :goto_15
:catchall_3a
move-exception v0
monitor-exit v1
:try_end_3c
.catchall {:try_start_23 .. :try_end_3c} :catchall_3a
throw v0
.end method
.method private cu()V
.registers 3
new-instance v0, Lcom/google/android/gms/analytics/h$1;
const-string v1, "client_id_fetcher"
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/analytics/h$1;-><init>(Lcom/google/android/gms/analytics/h;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method
.method public static r(Landroid/content/Context;)V
.registers 3
sget-object v1, Lcom/google/android/gms/analytics/h;->tn:Ljava/lang/Object;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/google/android/gms/analytics/h;->tE:Lcom/google/android/gms/analytics/h;
if-nez v0, :cond_e
new-instance v0, Lcom/google/android/gms/analytics/h;
invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/h;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/google/android/gms/analytics/h;->tE:Lcom/google/android/gms/analytics/h;
:cond_e
monitor-exit v1
return-void
:catchall_10
move-exception v0
monitor-exit v1
:try_end_12
.catchall {:try_start_3 .. :try_end_12} :catchall_10
throw v0
.end method
.method public J(Ljava/lang/String;)Z
.registers 3
const-string v0, "&cid"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method  cr()Ljava/lang/String;
.registers 3
iget-object v1, p0, Lcom/google/android/gms/analytics/h;->tH:Ljava/lang/Object;
monitor-enter v1
:try_start_3
invoke-virtual {p0}, Lcom/google/android/gms/analytics/h;->ct()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/h;->tF:Ljava/lang/String;
iget-object v0, p0, Lcom/google/android/gms/analytics/h;->tF:Ljava/lang/String;
monitor-exit v1
return-object v0
:catchall_d
move-exception v0
monitor-exit v1
:try_end_f
.catchall {:try_start_3 .. :try_end_f} :catchall_d
throw v0
.end method
.method protected ct()Ljava/lang/String;
.registers 3
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v0
invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
:try_start_c
invoke-direct {p0, v0}, Lcom/google/android/gms/analytics/h;->K(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_14
const-string v0, "0"
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_c .. :try_end_14} :catch_15
:cond_14
return-object v0
:catch_15
move-exception v0
const/4 v0, 0x0
goto :goto_14
.end method
.method  cv()Ljava/lang/String;
.registers 7
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;
const-string v2, "gaClientId"
invoke-virtual {v1, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
move-result-object v2
const/16 v1, 0x80
new-array v3, v1, [B
const/4 v1, 0x0
const/16 v4, 0x80
invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I
move-result v4
invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
move-result v1
if-lez v1, :cond_30
const-string v1, "clientId file seems corrupted, deleting it."
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
iget-object v1, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;
const-string v2, "gaClientId"
invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
:goto_29
:try_end_29
.catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_29} :catch_42
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_29} :catch_54
if-nez v0, :cond_2f
invoke-virtual {p0}, Lcom/google/android/gms/analytics/h;->ct()Ljava/lang/String;
move-result-object v0
:cond_2f
return-object v0
:cond_30
if-gtz v4, :cond_44
:try_start_32
const-string v1, "clientId file seems empty, deleting it."
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
iget-object v1, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;
const-string v2, "gaClientId"
invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
goto :goto_29
:catch_42
move-exception v1
goto :goto_29
:cond_44
new-instance v1, Ljava/lang/String;
const/4 v5, 0x0
invoke-direct {v1, v3, v5, v4}, Ljava/lang/String;-><init>([BII)V
:try_end_4a
.catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_4a} :catch_42
.catch Ljava/io/IOException; {:try_start_32 .. :try_end_4a} :catch_54
:try_start_4a
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
const-string v0, "Loaded client id from disk."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
:try_end_52
.catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_52} :catch_65
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_52} :catch_62
move-object v0, v1
goto :goto_29
:catch_54
move-exception v1
:goto_55
const-string v1, "Error reading clientId file, deleting it."
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->A(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/analytics/h;->mContext:Landroid/content/Context;
const-string v2, "gaClientId"
invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
goto :goto_29
:catch_62
move-exception v0
move-object v0, v1
goto :goto_55
:catch_65
move-exception v0
move-object v0, v1
goto :goto_29
.end method
.method public getValue(Ljava/lang/String;)Ljava/lang/String;
.registers 3
const-string v0, "&cid"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
invoke-direct {p0}, Lcom/google/android/gms/analytics/h;->cs()Ljava/lang/String;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method