.class public Lcom/android/volley/VolleyLog;
.super Ljava/lang/Object;
.source "VolleyLog.java"
.field public static DEBUG:Z
.field public static TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const-string/jumbo v0, "Volley"
sput-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;
sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;
const/4 v1, 0x2
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
sput-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static varargs buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
.registers 14
if-nez p1, :cond_39
move-object v4, p0
:goto_3
new-instance v6, Ljava/lang/Throwable;
invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V
invoke-virtual {v6}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;
move-result-object v5
const-string/jumbo v0, "<unknown>"
const/4 v3, 0x2
:goto_14
array-length v6, v5
if-lt v3, v6, :cond_40
:goto_17
sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string/jumbo v7, "[%d] %s: %s"
const/4 v8, 0x3
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/Thread;->getId()J
move-result-wide v10
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v10
aput-object v10, v8, v9
const/4 v9, 0x1
aput-object v0, v8, v9
const/4 v9, 0x2
aput-object v4, v8, v9
invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
return-object v6
:cond_39
sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-static {v6, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
goto :goto_3
:cond_40
aget-object v6, v5, v3
invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
const-class v6, Lcom/android/volley/VolleyLog;
invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_8b
aget-object v6, v5, v3
invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;
move-result-object v1
const/16 v6, 0x2e
invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I
move-result v6
add-int/lit8 v6, v6, 0x1
invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
const/16 v6, 0x24
invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I
move-result v6
add-int/lit8 v6, v6, 0x1
invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
new-instance v6, Ljava/lang/StringBuilder;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "."
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
aget-object v7, v5, v3
invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_17
:cond_8b
add-int/lit8 v3, v3, 0x1
goto :goto_14
.end method
.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;
invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;
invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public static varargs e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;
invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
return-void
.end method
.method public static setTag(Ljava/lang/String;)V
.registers 4
const-string/jumbo v0, "Changing log tag to %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p0, v1, v2
invoke-static {v0, v1}, Lcom/android/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
sput-object p0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;
sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;
const/4 v1, 0x2
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
sput-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z
return-void
.end method
.method public static varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
sget-boolean v0, Lcom/android/volley/VolleyLog;->DEBUG:Z
if-eqz v0, :cond_d
sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;
invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_d
return-void
.end method
.method public static varargs wtf(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;
invoke-static {p0, p1}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public static varargs wtf(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
sget-object v0, Lcom/android/volley/VolleyLog;->TAG:Ljava/lang/String;
invoke-static {p1, p2}, Lcom/android/volley/VolleyLog;->buildMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
return-void
.end method