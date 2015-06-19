.class public abstract Lcom/crashlytics/android/internal/p;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/content/Context;
.field private b:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected final declared-synchronized a(Landroid/content/Context;)V
.registers 5
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/crashlytics/android/internal/p;->b:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_11
if-eqz v0, :cond_7
:goto_5
monitor-exit p0
return-void
:cond_7
if-nez p1, :cond_14
:try_start_9
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "context cannot be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_11
.catchall {:try_start_9 .. :try_end_11} :catchall_11
:catchall_11
move-exception v0
monitor-exit p0
throw v0
:cond_14
:try_start_14
new-instance v0, Lcom/crashlytics/android/internal/z;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/crashlytics/android/internal/p;->getName()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/internal/z;-><init>(Landroid/content/Context;Ljava/lang/String;)V
iput-object v0, p0, Lcom/crashlytics/android/internal/p;->a:Landroid/content/Context;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/crashlytics/android/internal/p;->b:Z
invoke-virtual {p0}, Lcom/crashlytics/android/internal/p;->c()V
:try_end_29
.catchall {:try_start_14 .. :try_end_29} :catchall_11
goto :goto_5
.end method
.method protected abstract c()V
.end method
.method public getComponentPath()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, ".TwitterSdk/"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/crashlytics/android/internal/p;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getContext()Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/crashlytics/android/internal/p;->a:Landroid/content/Context;
return-object v0
.end method
.method public final getName()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public abstract getVersion()Ljava/lang/String;
.end method
.method public final declared-synchronized isInitialized()Z
.registers 2
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/crashlytics/android/internal/p;->b:Z
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_5
monitor-exit p0
return v0
:catchall_5
move-exception v0
monitor-exit p0
throw v0
.end method