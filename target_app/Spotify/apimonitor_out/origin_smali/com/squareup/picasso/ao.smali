.class final Lcom/squareup/picasso/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Lcom/squareup/picasso/an;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/an;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
