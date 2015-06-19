.class public final Lcom/google/zxing/client/android/b/a/b;
.super Lcom/google/zxing/client/android/b/a;
.source "AsyncTaskExecManager.java"
.method public constructor <init>()V
.registers 3
const-class v0, Lcom/google/zxing/client/android/b/a/a;
new-instance v1, Lcom/google/zxing/client/android/b/a/c;
invoke-direct {v1}, Lcom/google/zxing/client/android/b/a/c;-><init>()V
invoke-direct {p0, v0, v1}, Lcom/google/zxing/client/android/b/a;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V
const/16 v0, 0xb
const-string v1, "com.google.zxing.client.android.common.executor.HoneycombAsyncTaskExecInterface"
invoke-virtual {p0, v0, v1}, Lcom/google/zxing/client/android/b/a/b;->a(ILjava/lang/String;)V
return-void
.end method