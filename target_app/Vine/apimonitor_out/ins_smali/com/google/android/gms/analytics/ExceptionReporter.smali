.class public Lcom/google/android/gms/analytics/ExceptionReporter;
.super Ljava/lang/Object;
.implements Ljava/lang/Thread$UncaughtExceptionHandler;
.field private final mContext:Landroid/content/Context;
.field private final tL:Ljava/lang/Thread$UncaughtExceptionHandler;
.field private final tM:Lcom/google/android/gms/analytics/Tracker;
.field private tN:Lcom/google/android/gms/analytics/ExceptionParser;
.method public constructor <init>(Lcom/google/android/gms/analytics/Tracker;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "tracker cannot be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
if-nez p3, :cond_17
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "context cannot be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_17
iput-object p2, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tL:Ljava/lang/Thread$UncaughtExceptionHandler;
iput-object p1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tM:Lcom/google/android/gms/analytics/Tracker;
new-instance v0, Lcom/google/android/gms/analytics/StandardExceptionParser;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-direct {v0, p3, v1}, Lcom/google/android/gms/analytics/StandardExceptionParser;-><init>(Landroid/content/Context;Ljava/util/Collection;)V
iput-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tN:Lcom/google/android/gms/analytics/ExceptionParser;
invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->mContext:Landroid/content/Context;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "ExceptionReporter created, original handler is "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
if-nez p2, :cond_48
const-string v0, "null"
:goto_3c
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
return-void
:cond_48
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_3c
.end method
.method  cy()Ljava/lang/Thread$UncaughtExceptionHandler;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tL:Ljava/lang/Thread$UncaughtExceptionHandler;
return-object v0
.end method
.method public getExceptionParser()Lcom/google/android/gms/analytics/ExceptionParser;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tN:Lcom/google/android/gms/analytics/ExceptionParser;
return-object v0
.end method
.method public setExceptionParser(Lcom/google/android/gms/analytics/ExceptionParser;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tN:Lcom/google/android/gms/analytics/ExceptionParser;
return-void
.end method
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.registers 6
const-string v0, "UncaughtException"
iget-object v1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tN:Lcom/google/android/gms/analytics/ExceptionParser;
if-eqz v1, :cond_12
if-eqz p1, :cond_57
invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v0
:goto_c
iget-object v1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tN:Lcom/google/android/gms/analytics/ExceptionParser;
invoke-interface {v1, v0, p2}, Lcom/google/android/gms/analytics/ExceptionParser;->getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
:cond_12
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Tracking Exception: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
iget-object v1, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tM:Lcom/google/android/gms/analytics/Tracker;
new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;-><init>()V
invoke-virtual {v2, v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
move-result-object v0
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->setFatal(Z)Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/analytics/HitBuilders$ExceptionBuilder;->build()Ljava/util/Map;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->mContext:Landroid/content/Context;
invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V
iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tL:Ljava/lang/Thread$UncaughtExceptionHandler;
if-eqz v0, :cond_56
const-string v0, "Passing exception to original handler."
invoke-static {v0}, Lcom/google/android/gms/analytics/aa;->C(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/analytics/ExceptionReporter;->tL:Ljava/lang/Thread$UncaughtExceptionHandler;
invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
:cond_56
return-void
:cond_57
const/4 v0, 0x0
goto :goto_c
.end method