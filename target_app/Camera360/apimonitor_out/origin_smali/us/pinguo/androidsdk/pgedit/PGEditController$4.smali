.class Lus/pinguo/androidsdk/pgedit/PGEditController$4;
.super Ljava/lang/Object;
.source "PGEditController.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lus/pinguo/androidsdk/pgedit/PGEditController;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;


# direct methods
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
