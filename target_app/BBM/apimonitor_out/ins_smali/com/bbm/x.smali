.class public final Lcom/bbm/x;
.super Ljava/lang/Object;
.source "Ln.java"
.field static a:Ljava/text/SimpleDateFormat;
.field static b:Ljava/io/BufferedWriter;
.field static c:J
.field private static d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "yyyy/MM/dd HH:mm:ss.SSS "
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
sput-object v0, Lcom/bbm/x;->a:Ljava/text/SimpleDateFormat;
const-wide/16 v0, 0x0
sput-wide v0, Lcom/bbm/x;->c:J
return-void
.end method
.method private static a(I)Ljava/lang/String;
.registers 4
const-string v0, ""
const/4 v1, 0x1
if-eq p0, v1, :cond_14
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "."
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_14
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/bbm/x;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/bbmui"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".txt"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/bbm/x;->b(Lorg/json/JSONObject;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)V
.registers 10
const-class v1, Lcom/bbm/x;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/bbm/x;->d:Ljava/lang/String;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_da
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_5} :catch_c5
if-nez v0, :cond_9
:goto_7
monitor-exit v1
return-void
:try_start_9
:cond_9
sget-wide v2, Lcom/bbm/x;->c:J
const-wide/32 v4, 0x30d40
cmp-long v0, v2, v4
if-lez v0, :cond_48
sget-object v0, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
if-eqz v0, :cond_1e
sget-object v0, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
const/4 v0, 0x0
sput-object v0, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
:cond_1e
new-instance v0, Ljava/io/File;
const/4 v2, 0x3
invoke-static {v2}, Lcom/bbm/x;->a(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
const/4 v0, 0x2
:goto_2c
if-lez v0, :cond_48
new-instance v2, Ljava/io/File;
invoke-static {v0}, Lcom/bbm/x;->a(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v3, Ljava/io/File;
add-int/lit8 v4, v0, 0x1
invoke-static {v4}, Lcom/bbm/x;->a(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
add-int/lit8 v0, v0, -0x1
goto :goto_2c
:cond_48
sget-object v0, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
if-nez v0, :cond_72
sget-object v0, Lcom/bbm/x;->d:Ljava/lang/String;
if-eqz v0, :cond_72
const/4 v0, 0x1
invoke-static {v0}, Lcom/bbm/x;->a(I)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/io/BufferedWriter;
new-instance v3, Ljava/io/OutputStreamWriter;
new-instance v4, Ljava/io/FileOutputStream;
const/4 v5, 0x1
invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
sput-object v2, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
new-instance v2, Ljava/io/File;
invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->length()J
move-result-wide v2
sput-wide v2, Lcom/bbm/x;->c:J
:cond_72
sget-object v0, Lcom/bbm/x;->a:Ljava/text/SimpleDateFormat;
new-instance v2, Ljava/util/Date;
invoke-direct {v2}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
packed-switch p0, :pswitch_data_de
const-string v0, "BADPRI "
:goto_82
sget-object v3, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
invoke-virtual {v3, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
sget-object v3, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
sget-object v3, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
sget-object v3, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
const-string v4, " "
invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
sget-object v3, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
invoke-virtual {v3, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
sget-object v3, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V
sget-object v3, Lcom/bbm/x;->b:Ljava/io/BufferedWriter;
invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
sget-wide v3, Lcom/bbm/x;->c:J
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
add-int/2addr v0, v2
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v0, v2
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v0, v2
add-int/lit8 v0, v0, 0x2
int-to-long v5, v0
add-long v2, v3, v5
sput-wide v2, Lcom/bbm/x;->c:J
goto/16 :goto_7
:catch_c5
move-exception v0
goto/16 :goto_7
:pswitch_c8
const-string v0, "ASSERT "
goto :goto_82
:pswitch_cb
const-string v0, "ERROR "
goto :goto_82
:pswitch_ce
const-string v0, "WARN  "
goto :goto_82
:pswitch_d1
const-string v0, "INFO  "
goto :goto_82
:pswitch_d4
const-string v0, "DEBUG "
goto :goto_82
:pswitch_d7
const-string v0, "VERBOSE "
:try_end_d9
.catchall {:try_start_9 .. :try_end_d9} :catchall_da
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_d9} :catch_c5
goto :goto_82
:catchall_da
move-exception v0
monitor-exit v1
throw v0
nop
:pswitch_data_de
.packed-switch 0x2
:pswitch_d7
:pswitch_d4
:pswitch_d1
:pswitch_ce
:pswitch_cb
:pswitch_c8
.end packed-switch
.end method
.method private static a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 5
const-string v0, "com.rim.bbm.ui"
invoke-static {p0, p1, p2, p3, v0}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method private static a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
.registers 7
const/4 v0, 0x3
if-lt p0, v0, :cond_33
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
if-eqz p2, :cond_18
if-eqz p3, :cond_34
array-length v0, p3
if-lez v0, :cond_34
check-cast p2, Ljava/lang/String;
invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_18
:goto_18
if-eqz p1, :cond_2c
invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_25
const-string v0, "\n"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_25
invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2c
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, p4, v0}, Lcom/bbm/x;->a(ILjava/lang/String;Ljava/lang/String;)V
:cond_33
return-void
:cond_34
if-nez p2, :cond_3c
const-string v0, "(null);"
:goto_38
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_18
:cond_3c
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_38
.end method
.method public static a(Ljava/lang/Class;Ljava/lang/String;)V
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "available memory in bytes "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
aput-object v0, v1, v2
const/4 v0, 0x1
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v0
const/4 v0, 0x3
const/4 v2, 0x0
const-string v3, "%s in %s"
const-string v4, "com.rim.bbm.ui.memory"
invoke-static {v0, v2, v3, v1, v4}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method private static a(Ljava/lang/Object;)V
.registers 4
const/4 v2, 0x0
const/4 v0, 0x4
const-string v1, "com.rim.bbm.ui.json"
invoke-static {v0, v2, p0, v2, v1}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method public static varargs a(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x6
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static a(Ljava/lang/String;)V
.registers 2
sput-object p0, Lcom/bbm/x;->d:Ljava/lang/String;
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/Class;)V
.registers 7
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->q()Z
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
aput-object p0, v0, v1
const/4 v1, 0x1
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
const/4 v2, 0x0
const-string v3, "%s in %s"
const-string v4, "com.rim.bbm.ui.memory"
invoke-static {v1, v2, v3, v0, v4}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v4, 0x2
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
aput-object p0, v0, v1
const/4 v1, 0x1
aput-object p1, v0, v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
aput-object v1, v0, v4
const/4 v1, 0x0
const-string v2, "%s tag: %s timestamp: %d"
const-string v3, "com.bbm.performance"
invoke-static {v4, v1, v2, v0, v3}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method public static a(Ljava/lang/Throwable;)V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x6
invoke-static {v0, p0, v1, v1}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x6
invoke-static {v0, p0, p1, p2}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)V
.registers 7
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
aput-object p1, v0, v1
const/4 v1, 0x1
invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
const/4 v2, 0x0
const-string v3, "Mixpanel report (Distinct id : %s): %s"
const-string v4, "com.rim.bbm.ui.mixpanel"
invoke-static {v1, v2, v3, v0, v4}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method public static a(ZLjava/lang/String;)V
.registers 4
if-eqz p0, :cond_15
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Incoming: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Object;)V
:goto_14
return-void
:cond_15
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Outgoing: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Object;)V
goto :goto_14
.end method
.method private static b(Lorg/json/JSONObject;)Ljava/lang/String;
.registers 7
const/4 v1, 0x0
const/4 v2, 0x1
:try_start_2
invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;
move-result-object v0
const/4 v3, 0x0
invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v0
const-string v3, "listAdd"
invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_54
:cond_13
:goto_13
if-eqz v2, :cond_fe
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v3
move v2, v1
:goto_1a
invoke-virtual {v3}, Lorg/json/JSONObject;->length()I
move-result v4
if-ge v2, v4, :cond_db
invoke-virtual {v3}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;
move-result-object v4
invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
move-result-object v4
const-string v5, "id"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_86
const-string v4, "id"
const-string v5, "id"
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, ", id="
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
add-int/lit8 v1, v1, 0x1
:cond_51
:goto_51
add-int/lit8 v2, v2, 0x1
goto :goto_1a
:cond_54
const-string v3, "listAll"
invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_13
const-string v3, "listChange"
invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_13
const-string v3, "listChunk"
invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_13
const-string v3, "listElements"
invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_13
const-string v3, "listRemove"
invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_13
const-string v3, "listChunk"
invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_13
move v2, v1
goto :goto_13
:cond_86
const-string v5, "type"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_b0
const-string v4, "type"
const-string v5, "type"
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, ", type="
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
add-int/lit8 v1, v1, 0x1
goto :goto_51
:cond_b0
const-string v5, "cookie"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_51
const-string v4, "cookie"
const-string v5, "cookie"
invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, ", cookie="
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
add-int/lit8 v1, v1, 0x1
goto/16 :goto_51
:cond_db
if-nez v1, :cond_fe
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v3}, Lorg/json/JSONObject;->length()I
move-result v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " element(s)"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_fd
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_fd} :catch_ff
move-result-object v0
:cond_fe
:goto_fe
return-object v0
:catch_ff
move-exception v0
const-string v0, ""
goto :goto_fe
.end method
.method private static b(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 5
const-string v0, "com.rim.bbm.ui.servicelayer"
invoke-static {p0, p1, p2, p3, v0}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method public static b(Ljava/lang/Class;Ljava/lang/String;)V
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "total memory in bytes "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
aput-object v0, v1, v2
const/4 v0, 0x1
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
aput-object v2, v1, v0
const/4 v0, 0x3
const/4 v2, 0x0
const-string v3, "%s in %s"
const-string v4, "com.rim.bbm.ui.memory"
invoke-static {v0, v2, v3, v1, v4}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method public static varargs b(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x5
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static b(Ljava/lang/String;Ljava/lang/Class;)V
.registers 7
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
invoke-static {}, Lcom/bbm/Alaska;->q()Z
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
aput-object p0, v0, v1
const/4 v1, 0x1
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
const/4 v2, 0x0
const-string v3, "%s in %s"
const-string v4, "com.rim.bbm.ui.gesture"
invoke-static {v1, v2, v3, v0, v4}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method public static b(Ljava/lang/Throwable;)V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x5
invoke-static {v0, p0, v1, v1}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x5
invoke-static {v0, p0, p1, p2}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs c(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x4
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static c(Ljava/lang/String;Ljava/lang/Class;)V
.registers 7
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
aput-object p0, v0, v1
const/4 v1, 0x1
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
const/4 v2, 0x0
const-string v3, "%s in %s"
const-string v4, "com.rim.bbm.ui.lifecycle"
invoke-static {v1, v2, v3, v0, v4}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;)V
return-void
.end method
.method public static c(Ljava/lang/Throwable;)V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x4
invoke-static {v0, p0, v1, v1}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs c(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x4
invoke-static {v0, p0, p1, p2}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs d(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x3
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x6
invoke-static {v0, p0, p1, p2}, Lcom/bbm/x;->b(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs e(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x2
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/bbm/x;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs f(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x4
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/bbm/x;->b(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs g(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x2
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/bbm/x;->b(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method