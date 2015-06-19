.class public final Lcom/google/zxing/client/android/b/a/c;
.super Ljava/lang/Object;
.source "DefaultAsyncTaskExecInterface.java"
.implements Lcom/google/zxing/client/android/b/a/a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final varargs a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
.registers 3
invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method