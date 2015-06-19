.class public Lcom/facebook/internal/Logger;
.super Ljava/lang/Object;
.source "Logger.java"
.field public static final LOG_TAG_BASE:Ljava/lang/String; = "FacebookSDK."
.field private static final stringsToReplace:Ljava/util/HashMap;
.field private final behavior:Lcom/facebook/LoggingBehavior;
.field private contents:Ljava/lang/StringBuilder;
.field private priority:I
.field private final tag:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/facebook/internal/Logger;->stringsToReplace:Ljava/util/HashMap;
return-void
.end method
.method public constructor <init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x3
iput v0, p0, Lcom/facebook/internal/Logger;->priority:I
const-string v0, "tag"
invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V
iput-object p1, p0, Lcom/facebook/internal/Logger;->behavior:Lcom/facebook/LoggingBehavior;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "FacebookSDK."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/internal/Logger;->tag:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;
return-void
.end method
.method public static log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-static {p0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
move-result v0
if-eqz v0, :cond_34
invoke-static {p3}, Lcom/facebook/internal/Logger;->replaceStrings(Ljava/lang/String;)Ljava/lang/String;
move-result-object p3
const-string v0, "FacebookSDK."
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_25
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "FacebookSDK."
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p2
:cond_25
invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I
sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;
if-ne p0, v0, :cond_34
new-instance v0, Ljava/lang/Exception;
invoke-direct {v0}, Ljava/lang/Exception;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
:cond_34
return-void
.end method
.method public static log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x3
invoke-static {p0, v0, p1, p2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public static varargs log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
.registers 6
invoke-static {p0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
move-result v1
if-eqz v1, :cond_e
invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x3
invoke-static {p0, v1, p1, v0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
:cond_e
return-void
.end method
.method public static declared-synchronized registerAccessToken(Ljava/lang/String;)V
.registers 3
const-class v1, Lcom/facebook/internal/Logger;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;
invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
move-result v0
if-nez v0, :cond_10
const-string v0, "ACCESS_TOKEN_REMOVED"
invoke-static {p0, v0}, Lcom/facebook/internal/Logger;->registerStringToReplace(Ljava/lang/String;Ljava/lang/String;)V
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
:cond_10
monitor-exit v1
return-void
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized registerStringToReplace(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-class v1, Lcom/facebook/internal/Logger;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/facebook/internal/Logger;->stringsToReplace:Ljava/util/HashMap;
invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_a
monitor-exit v1
return-void
:catchall_a
move-exception v0
monitor-exit v1
throw v0
.end method
.method private static declared-synchronized replaceStrings(Ljava/lang/String;)Ljava/lang/String;
.registers 6
const-class v4, Lcom/facebook/internal/Logger;
monitor-enter v4
:try_start_3
sget-object v2, Lcom/facebook/internal/Logger;->stringsToReplace:Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_2a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/CharSequence;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/CharSequence;
invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
:try_end_28
.catchall {:try_start_3 .. :try_end_28} :catchall_2c
move-result-object p0
goto :goto_d
:cond_2a
monitor-exit v4
return-object p0
:catchall_2c
move-exception v2
monitor-exit v4
throw v2
.end method
.method private shouldLog()Z
.registers 2
iget-object v0, p0, Lcom/facebook/internal/Logger;->behavior:Lcom/facebook/LoggingBehavior;
invoke-static {v0}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z
move-result v0
return v0
.end method
.method public append(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lcom/facebook/internal/Logger;->shouldLog()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_b
return-void
.end method
.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 5
invoke-direct {p0}, Lcom/facebook/internal/Logger;->shouldLog()Z
move-result v0
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;
invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_f
return-void
.end method
.method public append(Ljava/lang/StringBuilder;)V
.registers 3
invoke-direct {p0}, Lcom/facebook/internal/Logger;->shouldLog()Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
:cond_b
return-void
.end method
.method public appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
.registers 6
const-string v0, "  %s:\t%s\n"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-virtual {p0, v0, v1}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
.end method
.method public getContents()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/internal/Logger;->replaceStrings(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getPriority()I
.registers 2
iget v0, p0, Lcom/facebook/internal/Logger;->priority:I
return v0
.end method
.method public log()V
.registers 2
iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/facebook/internal/Logger;->logString(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iput-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;
return-void
.end method
.method public logString(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/facebook/internal/Logger;->behavior:Lcom/facebook/LoggingBehavior;
iget v1, p0, Lcom/facebook/internal/Logger;->priority:I
iget-object v2, p0, Lcom/facebook/internal/Logger;->tag:Ljava/lang/String;
invoke-static {v0, v1, v2, p1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setPriority(I)V
.registers 12
const/4 v9, 0x6
const/4 v8, 0x5
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
const-string v1, "value"
new-array v2, v9, [Ljava/lang/Object;
const/4 v3, 0x0
const/4 v4, 0x7
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
const/4 v3, 0x1
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v5
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v7
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v8
invoke-static {v0, v1, v2}, Lcom/facebook/internal/Validate;->oneOf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
iput p1, p0, Lcom/facebook/internal/Logger;->priority:I
return-void
.end method