.class public final Lcom/spotify/mobile/android/service/c/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/app/Service;
.field private b:Landroid/util/SparseArray;
.field private c:I
.field private final d:Landroid/app/NotificationManager;
.method public constructor <init>(Landroid/app/Service;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/b;->b:Landroid/util/SparseArray;
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/service/c/b;->c:I
iput-object p1, p0, Lcom/spotify/mobile/android/service/c/b;->a:Landroid/app/Service;
const-string v0, "notification"
invoke-virtual {p1, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/NotificationManager;
iput-object v0, p0, Lcom/spotify/mobile/android/service/c/b;->d:Landroid/app/NotificationManager;
return-void
.end method
.method private b(ILandroid/app/Notification;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/b;->a:Landroid/app/Service;
invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
iput p1, p0, Lcom/spotify/mobile/android/service/c/b;->c:I
return-void
.end method
.method public final declared-synchronized a(I)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/b;->b:Landroid/util/SparseArray;
invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
iget v0, p0, Lcom/spotify/mobile/android/service/c/b;->c:I
if-ne v0, p1, :cond_34
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/b;->a:Landroid/app/Service;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/app/Service;->stopForeground(Z)V
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/service/c/b;->c:I
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/b;->b:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->size()I
move-result v0
if-lez v0, :cond_32
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/b;->b:Landroid/util/SparseArray;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I
move-result v1
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/b;->b:Landroid/util/SparseArray;
invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Notification;
iget-object v2, p0, Lcom/spotify/mobile/android/service/c/b;->d:Landroid/app/NotificationManager;
invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V
invoke-direct {p0, v1, v0}, Lcom/spotify/mobile/android/service/c/b;->b(ILandroid/app/Notification;)V
:goto_32
:cond_32
:try_end_32
.catchall {:try_start_1 .. :try_end_32} :catchall_3a
monitor-exit p0
return-void
:cond_34
:try_start_34
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/b;->d:Landroid/app/NotificationManager;
invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
:try_end_39
.catchall {:try_start_34 .. :try_end_39} :catchall_3a
goto :goto_32
:catchall_3a
move-exception v0
monitor-exit p0
throw v0
.end method
.method public final declared-synchronized a(ILandroid/app/Notification;)V
.registers 5
monitor-enter p0
:try_start_1
iget v0, p0, Lcom/spotify/mobile/android/service/c/b;->c:I
const/4 v1, -0x1
if-ne v0, v1, :cond_10
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/service/c/b;->b(ILandroid/app/Notification;)V
:goto_9
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/b;->b:Landroid/util/SparseArray;
invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
:try_end_e
.catchall {:try_start_1 .. :try_end_e} :catchall_16
monitor-exit p0
return-void
:cond_10
:try_start_10
iget-object v0, p0, Lcom/spotify/mobile/android/service/c/b;->d:Landroid/app/NotificationManager;
invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
:try_end_15
.catchall {:try_start_10 .. :try_end_15} :catchall_16
goto :goto_9
:catchall_16
move-exception v0
monitor-exit p0
throw v0
.end method