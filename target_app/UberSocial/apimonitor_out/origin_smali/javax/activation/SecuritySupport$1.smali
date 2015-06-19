.class Ljavax/activation/SecuritySupport$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    :goto_9
    return-object v0

    :catch_a
    move-exception v1

    goto :goto_9
.end method
