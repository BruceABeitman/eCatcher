.class public Lcom/ibm/icu/impl/IllegalIcuArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "IllegalIcuArgumentException.java"


# static fields
.field private static final serialVersionUID:J = 0x3496294bfd718099L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-super {p0, p1}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method
