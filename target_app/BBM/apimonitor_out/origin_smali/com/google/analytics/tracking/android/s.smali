.class public final Lcom/google/analytics/tracking/android/s;
.super Ljava/lang/Object;
.source "ExceptionReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Lcom/google/analytics/tracking/android/be;

.field private final c:Lcom/google/analytics/tracking/android/ba;

.field private d:Lcom/google/analytics/tracking/android/r;


# direct methods
.method public constructor <init>(Lcom/google/analytics/tracking/android/be;Lcom/google/analytics/tracking/android/ba;Ljava/lang/Thread$UncaughtExceptionHandler;Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tracker cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serviceManager cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p3, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    iput-object p1, p0, Lcom/google/analytics/tracking/android/s;->b:Lcom/google/analytics/tracking/android/be;

    iput-object p2, p0, Lcom/google/analytics/tracking/android/s;->c:Lcom/google/analytics/tracking/android/ba;

    new-instance v0, Lcom/google/analytics/tracking/android/bd;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p4, v1}, Lcom/google/analytics/tracking/android/bd;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/s;->d:Lcom/google/analytics/tracking/android/r;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "ExceptionReporter created, original handler is "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_40

    const-string v0, "null"

    :goto_34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    return-void

    :cond_40
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_34
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 10

    const/4 v1, 0x0

    const-string v0, "UncaughtException"

    iget-object v2, p0, Lcom/google/analytics/tracking/android/s;->d:Lcom/google/analytics/tracking/android/r;

    if-eqz v2, :cond_13

    if-eqz p1, :cond_68

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_d
    iget-object v2, p0, Lcom/google/analytics/tracking/android/s;->d:Lcom/google/analytics/tracking/android/r;

    invoke-interface {v2, v0, p2}, Lcom/google/analytics/tracking/android/r;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :cond_13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Tracking Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/analytics/tracking/android/s;->b:Lcom/google/analytics/tracking/android/be;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {}, Lcom/google/analytics/tracking/android/al;->a()Lcom/google/analytics/tracking/android/al;

    move-result-object v4

    sget-object v5, Lcom/google/analytics/tracking/android/am;->H:Lcom/google/analytics/tracking/android/am;

    invoke-virtual {v4, v5}, Lcom/google/analytics/tracking/android/al;->a(Lcom/google/analytics/tracking/android/am;)V

    new-instance v4, Lcom/google/analytics/tracking/android/at;

    invoke-direct {v4}, Lcom/google/analytics/tracking/android/at;-><init>()V

    const-string v5, "&t"

    const-string v6, "exception"

    invoke-virtual {v4, v5, v6}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;

    const-string v5, "&exd"

    invoke-virtual {v4, v5, v0}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;

    const-string v0, "&exf"

    if-nez v3, :cond_6a

    :goto_4a
    invoke-virtual {v4, v0, v1}, Lcom/google/analytics/tracking/android/at;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/analytics/tracking/android/at;

    invoke-virtual {v4}, Lcom/google/analytics/tracking/android/at;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/analytics/tracking/android/be;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->c:Lcom/google/analytics/tracking/android/ba;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/ba;->c()V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_67

    const-string v0, "Passing exception to original handler."

    invoke-static {v0}, Lcom/google/analytics/tracking/android/aq;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/analytics/tracking/android/s;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_67
    return-void

    :cond_68
    move-object v0, v1

    goto :goto_d

    :cond_6a
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "1"

    goto :goto_4a

    :cond_73
    const-string v1, "0"

    goto :goto_4a
.end method
