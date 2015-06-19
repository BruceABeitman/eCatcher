.class  Lcom/glympse/android/lib/bi;
.super Lcom/glympse/android/hal/ErrorReporterBase;
.source "ErrorReporter.java"
.field private static ku:Lcom/glympse/android/lib/bi;
.field private static kv:Lcom/glympse/android/hal/GMutex;
.field private kw:Lcom/glympse/android/lib/GDiagnosticsManager;
.field private kx:Z
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/glympse/android/hal/HalFactory;->createMutex()Lcom/glympse/android/hal/GMutex;
move-result-object v0
sput-object v0, Lcom/glympse/android/lib/bi;->kv:Lcom/glympse/android/hal/GMutex;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/hal/ErrorReporterBase;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/glympse/android/lib/bi;->kx:Z
return-void
.end method
.method public static a(Lcom/glympse/android/lib/GDiagnosticsManager;)V
.registers 3
sget-object v0, Lcom/glympse/android/lib/bi;->ku:Lcom/glympse/android/lib/bi;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
sget-object v0, Lcom/glympse/android/lib/bi;->kv:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V
:try_start_a
sget-object v0, Lcom/glympse/android/lib/bi;->ku:Lcom/glympse/android/lib/bi;
iget-object v0, v0, Lcom/glympse/android/lib/bi;->kw:Lcom/glympse/android/lib/GDiagnosticsManager;
if-nez v0, :cond_14
sget-object v0, Lcom/glympse/android/lib/bi;->ku:Lcom/glympse/android/lib/bi;
iput-object p0, v0, Lcom/glympse/android/lib/bi;->kw:Lcom/glympse/android/lib/GDiagnosticsManager;
:cond_14
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_14} :catch_1a
sget-object v0, Lcom/glympse/android/lib/bi;->kv:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
goto :goto_4
:catch_1a
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_14
.end method
.method public static b(Lcom/glympse/android/lib/GDiagnosticsManager;)V
.registers 3
sget-object v0, Lcom/glympse/android/lib/bi;->ku:Lcom/glympse/android/lib/bi;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
sget-object v0, Lcom/glympse/android/lib/bi;->kv:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->block()V
:try_start_a
sget-object v0, Lcom/glympse/android/lib/bi;->ku:Lcom/glympse/android/lib/bi;
iget-object v0, v0, Lcom/glympse/android/lib/bi;->kw:Lcom/glympse/android/lib/GDiagnosticsManager;
if-ne v0, p0, :cond_15
sget-object v0, Lcom/glympse/android/lib/bi;->ku:Lcom/glympse/android/lib/bi;
const/4 v1, 0x0
iput-object v1, v0, Lcom/glympse/android/lib/bi;->kw:Lcom/glympse/android/lib/GDiagnosticsManager;
:cond_15
:try_end_15
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_1b
:goto_15
sget-object v0, Lcom/glympse/android/lib/bi;->kv:Lcom/glympse/android/hal/GMutex;
invoke-interface {v0}, Lcom/glympse/android/hal/GMutex;->unblock()V
goto :goto_4
:catch_1b
move-exception v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_15
.end method
.method public static init()V
.registers 1
sget-object v0, Lcom/glympse/android/lib/bi;->ku:Lcom/glympse/android/lib/bi;
if-nez v0, :cond_a
invoke-static {}, Lcom/glympse/android/lib/Debug;->areSignalHandlersEnabled()Z
move-result v0
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
new-instance v0, Lcom/glympse/android/lib/bi;
invoke-direct {v0}, Lcom/glympse/android/lib/bi;-><init>()V
sput-object v0, Lcom/glympse/android/lib/bi;->ku:Lcom/glympse/android/lib/bi;
goto :goto_a
.end method
.method public handle(Ljava/lang/String;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x1
iget-boolean v0, p0, Lcom/glympse/android/lib/bi;->kx:Z
if-eqz v0, :cond_7
:goto_6
return-void
:cond_7
iput-boolean v2, p0, Lcom/glympse/android/lib/bi;->kx:Z
const/4 v0, 0x0
:try_start_a
invoke-static {p1, v0}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/String;Z)V
const-string v0, "err"
invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
invoke-static {p1, v0, v1}, Lcom/glympse/android/lib/Debug;->reportError(Ljava/lang/String;Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/glympse/android/lib/bi;->kw:Lcom/glympse/android/lib/GDiagnosticsManager;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/glympse/android/lib/bi;->kw:Lcom/glympse/android/lib/GDiagnosticsManager;
const-string v1, "crash"
invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GDiagnosticsManager;->logEvent(Ljava/lang/String;)V
:goto_26
:cond_26
:try_end_26
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_26} :catch_29
iput-boolean v3, p0, Lcom/glympse/android/lib/bi;->kx:Z
goto :goto_6
:catch_29
move-exception v0
invoke-static {v0, v2}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V
goto :goto_26
.end method