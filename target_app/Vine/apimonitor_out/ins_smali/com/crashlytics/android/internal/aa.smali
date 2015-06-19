.class public abstract Lcom/crashlytics/android/internal/aa;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected abstract a()V
.end method
.method public final run()V
.registers 2
const/16 v0, 0xa
invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
invoke-virtual {p0}, Lcom/crashlytics/android/internal/aa;->a()V
return-void
.end method