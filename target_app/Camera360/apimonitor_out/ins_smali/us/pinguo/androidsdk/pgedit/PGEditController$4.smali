.class  Lus/pinguo/androidsdk/pgedit/PGEditController$4;
.super Ljava/lang/Object;
.source "PGEditController.java"
.implements Ljava/util/concurrent/ThreadFactory;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
.method constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditController;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditController$4;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditController;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.registers 3
new-instance v0, Ljava/lang/Thread;
invoke-direct {v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
return-object v0
.end method