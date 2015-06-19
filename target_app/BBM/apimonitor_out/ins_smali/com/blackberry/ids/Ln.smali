.class public Lcom/blackberry/ids/Ln;
.super Ljava/lang/Object;
.source "Ln.java"
.field public static final LOGS_ENABLED:Z = true
.field static a:Ljava/text/SimpleDateFormat; = null
.field static b:Ljava/io/BufferedWriter; = null
.field static c:J = 0x0L
.field private static d:Ljava/lang/String; = null
.field public static final logToLogcat:Z = false
.field public static final maxFileSize:J = 0x7a120L
.field public static final maxNumFiles:I = 0x3
.field public static final minPriority:I = 0x4
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "yyyy/MM/dd HH:mm:ss.SSS "
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/blackberry/ids/Ln;->a:Ljava/text/SimpleDateFormat;
const-wide/16 v0, 0x0
sput-wide v0, Lcom/blackberry/ids/Ln;->c:J
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
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
sget-object v2, Lcom/blackberry/ids/Ln;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/ids"
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
.method private static declared-synchronized a(ILjava/lang/String;Ljava/lang/String;)V
.registers 9
const-class v1, Lcom/blackberry/ids/Ln;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/blackberry/ids/Ln;->d:Ljava/lang/String;
:try_end_5
.catchall {:try_start_3 .. :try_end_5} :catchall_10e
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_5} :catch_f6
if-nez v0, :cond_9
:goto_7
monitor-exit v1
return-void
:try_start_9
:cond_9
sget-wide v2, Lcom/blackberry/ids/Ln;->c:J
const-wide/32 v4, 0x7a120
cmp-long v0, v2, v4
if-lez v0, :cond_48
sget-object v0, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
if-eqz v0, :cond_1e
sget-object v0, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
const/4 v0, 0x0
sput-object v0, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
:cond_1e
new-instance v0, Ljava/io/File;
const/4 v2, 0x3
invoke-static {v2}, Lcom/blackberry/ids/Ln;->a(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
const/4 v0, 0x2
:goto_2c
if-lez v0, :cond_48
new-instance v2, Ljava/io/File;
invoke-static {v0}, Lcom/blackberry/ids/Ln;->a(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v3, Ljava/io/File;
add-int/lit8 v4, v0, 0x1
invoke-static {v4}, Lcom/blackberry/ids/Ln;->a(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
add-int/lit8 v0, v0, -0x1
goto :goto_2c
:cond_48
sget-object v0, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
if-nez v0, :cond_72
sget-object v0, Lcom/blackberry/ids/Ln;->d:Ljava/lang/String;
if-eqz v0, :cond_72
const/4 v0, 0x1
invoke-static {v0}, Lcom/blackberry/ids/Ln;->a(I)Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/io/BufferedWriter;
new-instance v3, Ljava/io/OutputStreamWriter;
new-instance v4, Ljava/io/FileOutputStream;
const/4 v5, 0x1
invoke-direct {v4, v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
invoke-direct {v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
sput-object v2, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
new-instance v2, Ljava/io/File;
invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->length()J
move-result-wide v2
sput-wide v2, Lcom/blackberry/ids/Ln;->c:J
:cond_72
sget-object v0, Lcom/blackberry/ids/Ln;->a:Ljava/text/SimpleDateFormat;
new-instance v2, Ljava/util/Date;
invoke-direct {v2}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
packed-switch p0, :pswitch_data_112
const-string v0, "BADPRI "
:goto_82
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, " ["
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Thread;->getId()J
move-result-wide v4
invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "] "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
invoke-virtual {v4, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
sget-object v4, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
invoke-virtual {v4, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
sget-object v4, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
invoke-virtual {v4, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
sget-object v4, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
invoke-virtual {v4, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
sget-object v4, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
invoke-virtual {v4, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
sget-object v4, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
sget-object v4, Lcom/blackberry/ids/Ln;->b:Ljava/io/BufferedWriter;
invoke-virtual {v4}, Ljava/io/BufferedWriter;->flush()V
sget-wide v4, Lcom/blackberry/ids/Ln;->c:J
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
add-int/2addr v0, v2
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v0, v2
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v0, v2
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v2
add-int/2addr v0, v2
add-int/lit8 v0, v0, 0x1
int-to-long v2, v0
add-long/2addr v2, v4
sput-wide v2, Lcom/blackberry/ids/Ln;->c:J
goto/16 :goto_7
:catch_f6
move-exception v0
goto/16 :goto_7
:pswitch_f9
const-string v0, "ASSERT "
goto :goto_82
:pswitch_fc
const-string v0, "ERROR "
goto :goto_82
:pswitch_ff
const-string v0, "WARN  "
goto :goto_82
:pswitch_102
const-string v0, "INFO  "
goto/16 :goto_82
:pswitch_106
const-string v0, "DEBUG "
goto/16 :goto_82
:pswitch_10a
const-string v0, "VERBOSE "
:try_end_10c
.catchall {:try_start_9 .. :try_end_10c} :catchall_10e
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_10c} :catch_f6
goto/16 :goto_82
:catchall_10e
move-exception v0
monitor-exit v1
throw v0
nop
:pswitch_data_112
.packed-switch 0x2
:pswitch_10a
:pswitch_106
:pswitch_102
:pswitch_ff
:pswitch_fc
:pswitch_f9
.end packed-switch
.end method
.method private static a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 7
const-string v1, "com.blackberry.ids"
const/4 v0, 0x4
if-lt p0, v0, :cond_35
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
if-eqz p2, :cond_1a
if-eqz p3, :cond_36
array-length v0, p3
if-lez v0, :cond_36
check-cast p2, Ljava/lang/String;
invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_1a
:cond_1a
if-eqz p1, :cond_2e
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-lez v0, :cond_27
const-string v0, "\n"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_27
invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2e
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v1, v0}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/String;Ljava/lang/String;)V
:cond_35
return-void
:cond_36
if-nez p2, :cond_3e
const-string v0, "(null);"
:goto_3a
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1a
:cond_3e
invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3a
.end method
.method public static varargs d(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x3
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static d(Ljava/lang/Throwable;)V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x3
invoke-static {v0, p0, v1, v1}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs d(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x3
invoke-static {v0, p0, p1, p2}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs e(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x6
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static e(Ljava/lang/Throwable;)V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x6
invoke-static {v0, p0, v1, v1}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x6
invoke-static {v0, p0, p1, p2}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs i(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x4
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static i(Ljava/lang/Throwable;)V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x4
invoke-static {v0, p0, v1, v1}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs i(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x4
invoke-static {v0, p0, p1, p2}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static setLogFileBasePath(Ljava/lang/String;)V
.registers 2
sput-object p0, Lcom/blackberry/ids/Ln;->d:Ljava/lang/String;
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
return-void
.end method
.method public static varargs t(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x4
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs v(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x2
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static v(Ljava/lang/Throwable;)V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x2
invoke-static {v0, p0, v1, v1}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs v(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x2
invoke-static {v0, p0, p1, p2}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs w(Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x5
const/4 v1, 0x0
invoke-static {v0, v1, p0, p1}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static w(Ljava/lang/Throwable;)V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x5
invoke-static {v0, p0, v1, v1}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public static varargs w(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
.registers 4
const/4 v0, 0x5
invoke-static {v0, p0, p1, p2}, Lcom/blackberry/ids/Ln;->a(ILjava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method