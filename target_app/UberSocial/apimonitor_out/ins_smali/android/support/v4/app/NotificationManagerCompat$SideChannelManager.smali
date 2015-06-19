.class  Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.implements Landroid/os/Handler$Callback;
.field private static final KEY_BINDER:Ljava/lang/String; = "binder"
.field private static final MSG_QUEUE_TASK:I = 0x0
.field private static final MSG_RETRY_LISTENER_QUEUE:I = 0x3
.field private static final MSG_SERVICE_CONNECTED:I = 0x1
.field private static final MSG_SERVICE_DISCONNECTED:I = 0x2
.field private mCachedEnabledPackages:Ljava/util/Set;
.field private final mContext:Landroid/content/Context;
.field private final mHandler:Landroid/os/Handler;
.field private final mHandlerThread:Landroid/os/HandlerThread;
.field private final mRecordMap:Ljava/util/Map;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;
iput-object p1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;
new-instance v0, Landroid/os/HandlerThread;
const-string v1, "NotificationManagerCompat"
invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandlerThread:Landroid/os/HandlerThread;
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandlerThread:Landroid/os/HandlerThread;
invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V
new-instance v0, Landroid/os/Handler;
iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandlerThread:Landroid/os/HandlerThread;
invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V
iput-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;
return-void
.end method
.method private ensureServiceBound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)Z
.registers 5
iget-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
new-instance v0, Landroid/content/Intent;
const-string v1, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;
invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
move-result-object v0
iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;
invoke-static {}, Landroid/support/v4/app/NotificationManagerCompat;->access$000()I
move-result v2
invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v0
iput-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z
iget-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z
if-eqz v0, :cond_29
const/4 v0, 0x0
iput v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I
:goto_26
iget-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z
goto :goto_5
:cond_29
const-string v0, "NotifManCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unable to bind to listener "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
goto :goto_26
.end method
.method private ensureServiceUnbound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
.registers 3
iget-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
const/4 v0, 0x0
iput-boolean v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->bound:Z
:cond_c
const/4 v0, 0x0
iput-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;
return-void
.end method
.method private handleQueueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V
.registers 5
invoke-direct {p0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->updateListenerMap()V
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
iget-object v2, v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;
invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
goto :goto_d
:cond_22
return-void
.end method
.method private handleRetryListenerQueue(Landroid/content/ComponentName;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
if-eqz v0, :cond_d
invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
:cond_d
return-void
.end method
.method private handleServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
if-eqz v0, :cond_16
invoke-static {p2}, Landroid/support/v4/app/INotificationSideChannel$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/v4/app/INotificationSideChannel;
move-result-object v1
iput-object v1, v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;
const/4 v1, 0x0
iput v1, v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I
invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
:cond_16
return-void
.end method
.method private handleServiceDisconnected(Landroid/content/ComponentName;)V
.registers 3
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
if-eqz v0, :cond_d
invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
:cond_d
return-void
.end method
.method private processListenerQueue(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
.registers 7
const/4 v4, 0x3
const-string v0, "NotifManCompat"
invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_39
const-string v0, "NotifManCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Processing component "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;
invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " queued tasks"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_39
iget-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_42
:goto_41
:cond_41
return-void
:cond_42
invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceBound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;
if-nez v0, :cond_7b
:cond_4c
invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
goto :goto_41
:try_start_50
:cond_50
const-string v1, "NotifManCompat"
const/4 v2, 0x3
invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v1
if-eqz v1, :cond_71
const-string v1, "NotifManCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Sending task "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_71
iget-object v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->service:Landroid/support/v4/app/INotificationSideChannel;
invoke-interface {v0, v1}, Landroid/support/v4/app/NotificationManagerCompat$Task;->send(Landroid/support/v4/app/INotificationSideChannel;)V
iget-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
:cond_7b
:try_end_7b
.catch Landroid/os/DeadObjectException; {:try_start_50 .. :try_end_7b} :catch_91
.catch Landroid/os/RemoteException; {:try_start_50 .. :try_end_7b} :catch_b5
iget-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$Task;
if-nez v0, :cond_50
:cond_85
:goto_85
iget-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_41
invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->scheduleListenerRetry(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
goto :goto_41
:catch_91
move-exception v0
const-string v0, "NotifManCompat"
invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_85
const-string v0, "NotifManCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Remote service has died: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_85
:catch_b5
move-exception v0
const-string v1, "NotifManCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "RemoteException communicating with "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_85
.end method
.method private scheduleListenerRetry(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
.registers 7
const/4 v4, 0x3
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;
iget-object v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;
invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
:goto_b
return-void
:cond_c
iget v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I
add-int/lit8 v0, v0, 0x1
iput v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I
iget v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I
const/4 v1, 0x6
if-le v0, v1, :cond_59
const-string v0, "NotifManCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Giving up on delivering "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;
invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " tasks to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " after "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " retries"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->taskQueue:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
goto :goto_b
:cond_59
const/4 v0, 0x1
iget v1, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->retryCount:I
add-int/lit8 v1, v1, -0x1
shl-int/2addr v0, v1
mul-int/lit16 v0, v0, 0x3e8
const-string v1, "NotifManCompat"
invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v1
if-eqz v1, :cond_87
const-string v1, "NotifManCompat"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Scheduling retry for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " ms"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_87
iget-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;
iget-object v2, p1, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;->componentName:Landroid/content/ComponentName;
invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;
int-to-long v3, v0
invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
goto/16 :goto_b
.end method
.method private updateListenerMap()V
.registers 9
const/4 v7, 0x3
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;
invoke-static {v0}, Landroid/support/v4/app/NotificationManagerCompat;->getEnabledListenerPackages(Landroid/content/Context;)Ljava/util/Set;
move-result-object v1
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;
invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
:cond_f
return-void
:cond_10
iput-object v1, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mCachedEnabledPackages:Ljava/util/Set;
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
new-instance v2, Landroid/content/Intent;
invoke-direct {v2}, Landroid/content/Intent;-><init>()V
const-string v3, "android.support.BIND_NOTIFICATION_SIDE_CHANNEL"
invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v2
const/4 v3, 0x4
invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v0
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_31
:cond_31
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/pm/ResolveInfo;
iget-object v4, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;
invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_31
new-instance v4, Landroid/content/ComponentName;
iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;
iget-object v6, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;
invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;
iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;
if-eqz v0, :cond_79
const-string v0, "NotifManCompat"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "Permission present on component "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ", not adding listener record."
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_31
:cond_79
invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_31
:cond_7d
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_81
:goto_81
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c0
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/ComponentName;
iget-object v3, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;
invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_81
const-string v3, "NotifManCompat"
invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v3
if-eqz v3, :cond_b5
const-string v3, "NotifManCompat"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Adding listener record for "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_b5
iget-object v3, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;
new-instance v4, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
invoke-direct {v4, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;-><init>(Landroid/content/ComponentName;)V
invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_81
:cond_c0
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mRecordMap:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_ca
:cond_ca
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_ca
const-string v3, "NotifManCompat"
invoke-static {v3, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v3
if-eqz v3, :cond_104
const-string v3, "NotifManCompat"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Removing listener record for "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_104
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;
invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->ensureServiceUnbound(Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager$ListenerRecord;)V
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
goto :goto_ca
.end method
.method public handleMessage(Landroid/os/Message;)Z
.registers 5
const/4 v1, 0x1
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_30
const/4 v0, 0x0
:goto_7
return v0
:pswitch_8
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$Task;
invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleQueueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V
move v0, v1
goto :goto_7
:pswitch_11
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;
iget-object v2, v0, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;->componentName:Landroid/content/ComponentName;
iget-object v0, v0, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;->iBinder:Landroid/os/IBinder;
invoke-direct {p0, v2, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
move v0, v1
goto :goto_7
:pswitch_1e
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/content/ComponentName;
invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleServiceDisconnected(Landroid/content/ComponentName;)V
move v0, v1
goto :goto_7
:pswitch_27
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Landroid/content/ComponentName;
invoke-direct {p0, v0}, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->handleRetryListenerQueue(Landroid/content/ComponentName;)V
move v0, v1
goto :goto_7
:pswitch_data_30
.packed-switch 0x0
:pswitch_8
:pswitch_11
:pswitch_1e
:pswitch_27
.end packed-switch
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "NotifManCompat"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_21
const-string v0, "NotifManCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Connected to service "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_21
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;
const/4 v1, 0x1
new-instance v2, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;
invoke-direct {v2, p1, p2}, Landroid/support/v4/app/NotificationManagerCompat$ServiceConnectedEvent;-><init>(Landroid/content/ComponentName;Landroid/os/IBinder;)V
invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
const-string v1, " - Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "NotifManCompat"
const/4 v1, 0x3
invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_21
const-string v0, "NotifManCompat"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Disconnected from service "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_21
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
const-string v1, " - Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public queueTask(Landroid/support/v4/app/NotificationManagerCompat$Task;)V
.registers 4
iget-object v0, p0, Landroid/support/v4/app/NotificationManagerCompat$SideChannelManager;->mHandler:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
return-void
.end method