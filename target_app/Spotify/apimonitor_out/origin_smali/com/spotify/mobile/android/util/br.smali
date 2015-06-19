.class public final Lcom/spotify/mobile/android/util/br;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/util/br$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/br$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/util/br;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 4

    const/4 v3, 0x3

    sget-object v0, Lcom/spotify/mobile/android/util/br;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    aget-object v0, v1, v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    const-string v0, "com.spotify.music."

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    const/16 v0, 0x12

    :goto_21
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_55
    const-string v0, "com.spotify.mobile.android."

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    const/16 v0, 0x1b

    goto :goto_21

    :cond_60
    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_21
.end method

.method private static varargs a(Lcom/spotify/mobile/android/util/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/LogLevel;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/spotify/mobile/android/util/br;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/spotify/mobile/android/util/br;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/spotify/mobile/android/util/LogLevel;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method private static varargs a(Lcom/spotify/mobile/android/util/LogLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p0}, Lcom/spotify/mobile/android/util/LogLevel;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/spotify/mobile/android/util/br;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3}, Lcom/spotify/mobile/android/util/br;->f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/spotify/mobile/android/util/LogLevel;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->b:Lcom/spotify/mobile/android/util/LogLevel;

    invoke-static {v0, p0, p1}, Lcom/spotify/mobile/android/util/br;->a(Lcom/spotify/mobile/android/util/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->a:Lcom/spotify/mobile/android/util/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/spotify/mobile/android/util/br;->a(Lcom/spotify/mobile/android/util/LogLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->a:Lcom/spotify/mobile/android/util/LogLevel;

    invoke-static {v0, p0, p1}, Lcom/spotify/mobile/android/util/br;->a(Lcom/spotify/mobile/android/util/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs b(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->d:Lcom/spotify/mobile/android/util/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/spotify/mobile/android/util/br;->a(Lcom/spotify/mobile/android/util/LogLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->c:Lcom/spotify/mobile/android/util/LogLevel;

    invoke-static {v0, p0, p1}, Lcom/spotify/mobile/android/util/br;->a(Lcom/spotify/mobile/android/util/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->e:Lcom/spotify/mobile/android/util/LogLevel;

    invoke-static {v0, p0, p1, p2}, Lcom/spotify/mobile/android/util/br;->a(Lcom/spotify/mobile/android/util/LogLevel;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->d:Lcom/spotify/mobile/android/util/LogLevel;

    invoke-static {v0, p0, p1}, Lcom/spotify/mobile/android/util/br;->a(Lcom/spotify/mobile/android/util/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/util/LogLevel;->e:Lcom/spotify/mobile/android/util/LogLevel;

    invoke-static {v0, p0, p1}, Lcom/spotify/mobile/android/util/br;->a(Lcom/spotify/mobile/android/util/LogLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs f(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_5
.end method
