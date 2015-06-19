.class public final Lcom/bbm/n;
.super Ljava/lang/Object;
.source "DefaultExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/bbm/n;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/n;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/n;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 4

    invoke-static {p2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/bbm/n;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/bbm/n;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_c
    return-void
.end method
