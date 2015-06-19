.class public Lde/greenrobot/event/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"
.field private static synthetic $SWITCH_TABLE$de$greenrobot$event$ThreadMode:[I
.field public static TAG:Ljava/lang/String;
.field private static volatile defaultInstance:Lde/greenrobot/event/EventBus;
.field private static final eventTypesCache:Ljava/util/Map;
.field static executorService:Ljava/util/concurrent/ExecutorService;
.field private final asyncPoster:Lde/greenrobot/event/AsyncPoster;
.field private final backgroundPoster:Lde/greenrobot/event/BackgroundPoster;
.field private final currentThreadEventQueue:Ljava/lang/ThreadLocal;
.field private final currentThreadIsPosting:Ljava/lang/ThreadLocal;
.field private defaultMethodName:Ljava/lang/String;
.field private logSubscriberExceptions:Z
.field private final mainThreadPoster:Lde/greenrobot/event/HandlerPoster;
.field private final stickyEvents:Ljava/util/Map;
.field private subscribed:Z
.field private final subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;
.field private final subscriptionsByEventType:Ljava/util/Map;
.field private final typesBySubscriber:Ljava/util/Map;
.method static synthetic $SWITCH_TABLE$de$greenrobot$event$ThreadMode()[I
.registers 3
sget-object v0, Lde/greenrobot/event/EventBus;->$SWITCH_TABLE$de$greenrobot$event$ThreadMode:[I
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
invoke-static {}, Lde/greenrobot/event/ThreadMode;->values()[Lde/greenrobot/event/ThreadMode;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
:try_start_c
sget-object v1, Lde/greenrobot/event/ThreadMode;->Async:Lde/greenrobot/event/ThreadMode;
invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_start_15
:try_end_15
.catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_39
:goto_15
sget-object v1, Lde/greenrobot/event/ThreadMode;->BackgroundThread:Lde/greenrobot/event/ThreadMode;
invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_1e
:try_end_1e
.catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_37
:goto_1e
sget-object v1, Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;
invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_27
:try_end_27
.catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_35
:try_start_27
sget-object v1, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;
invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_30
.catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_33
:goto_30
sput-object v0, Lde/greenrobot/event/EventBus;->$SWITCH_TABLE$de$greenrobot$event$ThreadMode:[I
goto :goto_4
:catch_33
move-exception v1
goto :goto_30
:catch_35
move-exception v1
goto :goto_27
:catch_37
move-exception v1
goto :goto_1e
:catch_39
move-exception v1
goto :goto_15
.end method
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
move-result-object v0
sput-object v0, Lde/greenrobot/event/EventBus;->executorService:Ljava/util/concurrent/ExecutorService;
const-string/jumbo v0, "Event"
sput-object v0, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;
return-void
.end method
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lde/greenrobot/event/EventBus$1;
invoke-direct {v0, p0}, Lde/greenrobot/event/EventBus$1;-><init>(Lde/greenrobot/event/EventBus;)V
iput-object v0, p0, Lde/greenrobot/event/EventBus;->currentThreadEventQueue:Ljava/lang/ThreadLocal;
new-instance v0, Lde/greenrobot/event/EventBus$2;
invoke-direct {v0, p0}, Lde/greenrobot/event/EventBus$2;-><init>(Lde/greenrobot/event/EventBus;)V
iput-object v0, p0, Lde/greenrobot/event/EventBus;->currentThreadIsPosting:Ljava/lang/ThreadLocal;
const-string/jumbo v0, "onEvent"
iput-object v0, p0, Lde/greenrobot/event/EventBus;->defaultMethodName:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
new-instance v0, Lde/greenrobot/event/HandlerPoster;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
const/16 v2, 0xa
invoke-direct {v0, p0, v1, v2}, Lde/greenrobot/event/HandlerPoster;-><init>(Lde/greenrobot/event/EventBus;Landroid/os/Looper;I)V
iput-object v0, p0, Lde/greenrobot/event/EventBus;->mainThreadPoster:Lde/greenrobot/event/HandlerPoster;
new-instance v0, Lde/greenrobot/event/BackgroundPoster;
invoke-direct {v0, p0}, Lde/greenrobot/event/BackgroundPoster;-><init>(Lde/greenrobot/event/EventBus;)V
iput-object v0, p0, Lde/greenrobot/event/EventBus;->backgroundPoster:Lde/greenrobot/event/BackgroundPoster;
new-instance v0, Lde/greenrobot/event/AsyncPoster;
invoke-direct {v0, p0}, Lde/greenrobot/event/AsyncPoster;-><init>(Lde/greenrobot/event/EventBus;)V
iput-object v0, p0, Lde/greenrobot/event/EventBus;->asyncPoster:Lde/greenrobot/event/AsyncPoster;
new-instance v0, Lde/greenrobot/event/SubscriberMethodFinder;
invoke-direct {v0}, Lde/greenrobot/event/SubscriberMethodFinder;-><init>()V
iput-object v0, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;
const/4 v0, 0x1
iput-boolean v0, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z
return-void
.end method
.method static addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V
.registers 6
array-length v2, p1
const/4 v1, 0x0
:goto_2
if-lt v1, v2, :cond_5
return-void
:cond_5
aget-object v0, p1, v1
invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_17
invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;
move-result-object v3
invoke-static {p0, v3}, Lde/greenrobot/event/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V
:cond_17
add-int/lit8 v1, v1, 0x1
goto :goto_2
.end method
.method public static clearCaches()V
.registers 1
invoke-static {}, Lde/greenrobot/event/SubscriberMethodFinder;->clearCaches()V
sget-object v0, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method public static clearSkipMethodNameVerifications()V
.registers 0
invoke-static {}, Lde/greenrobot/event/SubscriberMethodFinder;->clearSkipMethodNameVerifications()V
return-void
.end method
.method private findEventTypes(Ljava/lang/Class;)Ljava/util/List;
.registers 6
sget-object v3, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;
monitor-enter v3
:try_start_3
sget-object v2, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;
invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-nez v1, :cond_1a
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
move-object v0, p1
:goto_13
if-nez v0, :cond_1c
sget-object v2, Lde/greenrobot/event/EventBus;->eventTypesCache:Ljava/util/Map;
invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1a
monitor-exit v3
return-object v1
:cond_1c
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;
move-result-object v2
invoke-static {v1, v2}, Lde/greenrobot/event/EventBus;->addInterfaces(Ljava/util/List;[Ljava/lang/Class;)V
invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
move-result-object v0
goto :goto_13
:catchall_2b
move-exception v2
monitor-exit v3
:try_end_2d
.catchall {:try_start_3 .. :try_end_2d} :catchall_2b
throw v2
.end method
.method public static getDefault()Lde/greenrobot/event/EventBus;
.registers 2
sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;
if-nez v0, :cond_13
const-class v1, Lde/greenrobot/event/EventBus;
monitor-enter v1
:try_start_7
sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;
if-nez v0, :cond_12
new-instance v0, Lde/greenrobot/event/EventBus;
invoke-direct {v0}, Lde/greenrobot/event/EventBus;-><init>()V
sput-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;
:cond_12
monitor-exit v1
:cond_13
:try_end_13
.catchall {:try_start_7 .. :try_end_13} :catchall_16
sget-object v0, Lde/greenrobot/event/EventBus;->defaultInstance:Lde/greenrobot/event/EventBus;
return-object v0
:catchall_16
move-exception v0
:try_start_17
monitor-exit v1
:try_end_18
.catchall {:try_start_17 .. :try_end_18} :catchall_16
throw v0
.end method
.method private postSingleEvent(Ljava/lang/Object;Z)V
.registers 14
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-direct {p0, v2}, Lde/greenrobot/event/EventBus;->findEventTypes(Ljava/lang/Class;)Ljava/util/List;
move-result-object v3
const/4 v6, 0x0
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v1
const/4 v4, 0x0
:goto_e
if-lt v4, v1, :cond_38
if-nez v6, :cond_37
sget-object v8, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "No subscripers registered for event "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-class v8, Lde/greenrobot/event/NoSubscriberEvent;
if-eq v2, v8, :cond_37
const-class v8, Lde/greenrobot/event/SubscriberExceptionEvent;
if-eq v2, v8, :cond_37
new-instance v8, Lde/greenrobot/event/NoSubscriberEvent;
invoke-direct {v8, p0, p1}, Lde/greenrobot/event/NoSubscriberEvent;-><init>(Lde/greenrobot/event/EventBus;Ljava/lang/Object;)V
invoke-virtual {p0, v8}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
:cond_37
return-void
:cond_38
invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
monitor-enter p0
:try_start_3f
iget-object v8, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;
invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;
monitor-exit p0
:try_end_48
.catchall {:try_start_3f .. :try_end_48} :catchall_58
if-eqz v7, :cond_55
invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_4e
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_5b
const/4 v6, 0x1
:cond_55
add-int/lit8 v4, v4, 0x1
goto :goto_e
:catchall_58
move-exception v8
:try_start_59
monitor-exit p0
:try_end_5a
.catchall {:try_start_59 .. :try_end_5a} :catchall_58
throw v8
:cond_5b
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lde/greenrobot/event/Subscription;
invoke-direct {p0, v5, p1, p2}, Lde/greenrobot/event/EventBus;->postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V
goto :goto_4e
.end method
.method private postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V
.registers 7
invoke-static {}, Lde/greenrobot/event/EventBus;->$SWITCH_TABLE$de$greenrobot$event$ThreadMode()[I
move-result-object v0
iget-object v1, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;
iget-object v1, v1, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;
invoke-virtual {v1}, Lde/greenrobot/event/ThreadMode;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_4e
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Unknown thread mode: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;
iget-object v2, v2, Lde/greenrobot/event/SubscriberMethod;->threadMode:Lde/greenrobot/event/ThreadMode;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_2b
invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
:goto_2e
return-void
:pswitch_2f
if-eqz p3, :cond_35
invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
goto :goto_2e
:cond_35
iget-object v0, p0, Lde/greenrobot/event/EventBus;->mainThreadPoster:Lde/greenrobot/event/HandlerPoster;
invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/HandlerPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
goto :goto_2e
:pswitch_3b
if-eqz p3, :cond_43
iget-object v0, p0, Lde/greenrobot/event/EventBus;->backgroundPoster:Lde/greenrobot/event/BackgroundPoster;
invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/BackgroundPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
goto :goto_2e
:cond_43
invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
goto :goto_2e
:pswitch_47
iget-object v0, p0, Lde/greenrobot/event/EventBus;->asyncPoster:Lde/greenrobot/event/AsyncPoster;
invoke-virtual {v0, p1, p2}, Lde/greenrobot/event/AsyncPoster;->enqueue(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
goto :goto_2e
nop
:pswitch_data_4e
.packed-switch 0x1
:pswitch_2b
:pswitch_2f
:pswitch_3b
:pswitch_47
.end packed-switch
.end method
.method private register(Ljava/lang/Object;Ljava/lang/String;Z)V
.registers 8
iget-object v2, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v2, v3, p2}, Lde/greenrobot/event/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_15
return-void
:cond_15
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lde/greenrobot/event/SubscriberMethod;
invoke-direct {p0, p1, v0, p3}, Lde/greenrobot/event/EventBus;->subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;Z)V
goto :goto_e
.end method
.method private varargs declared-synchronized register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
.registers 14
monitor-enter p0
:try_start_1
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
iget-object v4, p0, Lde/greenrobot/event/EventBus;->subscriberMethodFinder:Lde/greenrobot/event/SubscriberMethodFinder;
invoke-virtual {v4, v1, p2}, Lde/greenrobot/event/SubscriberMethodFinder;->findSubscriberMethods(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
move-result-object v3
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_f
:goto_f
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_25
move-result v4
if-nez v4, :cond_17
monitor-exit p0
return-void
:cond_17
:try_start_17
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lde/greenrobot/event/SubscriberMethod;
iget-object v4, v2, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;
if-ne p4, v4, :cond_28
invoke-direct {p0, p1, v2, p3}, Lde/greenrobot/event/EventBus;->subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;Z)V
:try_end_24
.catchall {:try_start_17 .. :try_end_24} :catchall_25
goto :goto_f
:catchall_25
move-exception v4
monitor-exit p0
throw v4
:cond_28
if-eqz p5, :cond_f
:try_start_2a
array-length v6, p5
const/4 v4, 0x0
:goto_2c
if-ge v4, v6, :cond_f
aget-object v0, p5, v4
iget-object v7, v2, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;
if-ne v0, v7, :cond_38
invoke-direct {p0, p1, v2, p3}, Lde/greenrobot/event/EventBus;->subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;Z)V
:try_end_37
.catchall {:try_start_2a .. :try_end_37} :catchall_25
goto :goto_f
:cond_38
add-int/lit8 v4, v4, 0x1
goto :goto_2c
.end method
.method public static skipMethodNameVerificationFor(Ljava/lang/Class;)V
.registers 1
invoke-static {p0}, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodNameVerificationFor(Ljava/lang/Class;)V
return-void
.end method
.method private subscribe(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;Z)V
.registers 13
const/4 v6, 0x1
iput-boolean v6, p0, Lde/greenrobot/event/EventBus;->subscribed:Z
iget-object v0, p2, Lde/greenrobot/event/SubscriberMethod;->eventType:Ljava/lang/Class;
iget-object v7, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;
invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;
new-instance v1, Lde/greenrobot/event/Subscription;
invoke-direct {v1, p1, p2}, Lde/greenrobot/event/Subscription;-><init>(Ljava/lang/Object;Lde/greenrobot/event/SubscriberMethod;)V
if-nez v5, :cond_59
new-instance v5, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iget-object v7, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;
invoke-interface {v7, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1e
iget-object v7, p2, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;
invoke-virtual {v7, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V
invoke-virtual {v5, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
iget-object v7, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;
invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/List;
if-nez v3, :cond_3a
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iget-object v7, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;
invoke-interface {v7, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_3a
invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
if-eqz p3, :cond_58
iget-object v7, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
monitor-enter v7
:try_start_42
iget-object v8, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
monitor-exit v7
:try_end_49
.catchall {:try_start_42 .. :try_end_49} :catchall_94
if-eqz v2, :cond_58
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v7
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v8
if-ne v7, v8, :cond_97
:goto_55
invoke-direct {p0, v1, v2, v6}, Lde/greenrobot/event/EventBus;->postToSubscription(Lde/greenrobot/event/Subscription;Ljava/lang/Object;Z)V
:cond_58
return-void
:cond_59
invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_5d
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v8
if-eqz v8, :cond_1e
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lde/greenrobot/event/Subscription;
invoke-virtual {v4, v1}, Lde/greenrobot/event/Subscription;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_5d
new-instance v6, Lde/greenrobot/event/EventBusException;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "Subscriber "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, " already registered to event "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V
throw v6
:catchall_94
move-exception v6
:try_start_95
monitor-exit v7
:try_end_96
.catchall {:try_start_95 .. :try_end_96} :catchall_94
throw v6
:cond_97
const/4 v6, 0x0
goto :goto_55
.end method
.method private unubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
.registers 7
iget-object v3, p0, Lde/greenrobot/event/EventBus;->subscriptionsByEventType:Ljava/util/Map;
invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
if-eqz v2, :cond_11
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
const/4 v0, 0x0
:goto_f
if-lt v0, v1, :cond_12
:cond_11
return-void
:cond_12
invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lde/greenrobot/event/Subscription;
iget-object v3, v3, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;
if-ne v3, p1, :cond_23
invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;
add-int/lit8 v0, v0, -0x1
add-int/lit8 v1, v1, -0x1
:cond_23
add-int/lit8 v0, v0, 0x1
goto :goto_f
.end method
.method public configureLogSubscriberExceptions(Z)V
.registers 4
iget-boolean v0, p0, Lde/greenrobot/event/EventBus;->subscribed:Z
if-eqz v0, :cond_d
new-instance v0, Lde/greenrobot/event/EventBusException;
const-string/jumbo v1, "This method must be called before any registration"
invoke-direct {v0, v1}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-boolean p1, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z
return-void
.end method
.method public getStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
.registers 4
iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
monitor-exit v1
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method  invokeSubscriber(Lde/greenrobot/event/PendingPost;)V
.registers 4
iget-object v0, p1, Lde/greenrobot/event/PendingPost;->event:Ljava/lang/Object;
iget-object v1, p1, Lde/greenrobot/event/PendingPost;->subscription:Lde/greenrobot/event/Subscription;
invoke-static {p1}, Lde/greenrobot/event/PendingPost;->releasePendingPost(Lde/greenrobot/event/PendingPost;)V
invoke-virtual {p0, v1, v0}, Lde/greenrobot/event/EventBus;->invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
return-void
.end method
.method  invokeSubscriber(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)V
.registers 10
:try_start_0
iget-object v3, p1, Lde/greenrobot/event/Subscription;->subscriberMethod:Lde/greenrobot/event/SubscriberMethod;
iget-object v3, v3, Lde/greenrobot/event/SubscriberMethod;->method:Ljava/lang/reflect/Method;
iget-object v4, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object p2, v5, v6
invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_f
:try_end_f
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_f} :catch_10
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_9f
return-void
:catch_10
move-exception v1
invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
move-result-object v0
instance-of v3, p2, Lde/greenrobot/event/SubscriberExceptionEvent;
if-eqz v3, :cond_65
sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "SubscriberExceptionEvent subscriber "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;
invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " threw an exception"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
move-object v2, p2
check-cast v2, Lde/greenrobot/event/SubscriberExceptionEvent;
sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Initial event "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, v2, Lde/greenrobot/event/SubscriberExceptionEvent;->causingEvent:Ljava/lang/Object;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " caused exception in "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, v2, Lde/greenrobot/event/SubscriberExceptionEvent;->causingSubscriber:Ljava/lang/Object;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
iget-object v5, v2, Lde/greenrobot/event/SubscriberExceptionEvent;->throwable:Ljava/lang/Throwable;
invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_f
:cond_65
iget-boolean v3, p0, Lde/greenrobot/event/EventBus;->logSubscriberExceptions:Z
if-eqz v3, :cond_93
sget-object v3, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Could not dispatch event: "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " to subscribing class "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;
invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_93
new-instance v2, Lde/greenrobot/event/SubscriberExceptionEvent;
iget-object v3, p1, Lde/greenrobot/event/Subscription;->subscriber:Ljava/lang/Object;
invoke-direct {v2, p0, v0, p2, v3}, Lde/greenrobot/event/SubscriberExceptionEvent;-><init>(Lde/greenrobot/event/EventBus;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/Object;)V
invoke-virtual {p0, v2}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
goto/16 :goto_f
:catch_9f
move-exception v1
new-instance v3, Ljava/lang/IllegalStateException;
const-string/jumbo v4, "Unexpected exception"
invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v3
.end method
.method public post(Ljava/lang/Object;)V
.registers 9
const/4 v3, 0x1
const/4 v4, 0x0
iget-object v5, p0, Lde/greenrobot/event/EventBus;->currentThreadEventQueue:Ljava/lang/ThreadLocal;
invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v5, p0, Lde/greenrobot/event/EventBus;->currentThreadIsPosting:Ljava/lang/ThreadLocal;
invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lde/greenrobot/event/EventBus$BooleanWrapper;
iget-boolean v5, v2, Lde/greenrobot/event/EventBus$BooleanWrapper;->value:Z
if-eqz v5, :cond_1a
:goto_19
return-void
:cond_1a
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v5
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v6
if-ne v5, v6, :cond_30
move v1, v3
:goto_25
iput-boolean v3, v2, Lde/greenrobot/event/EventBus$BooleanWrapper;->value:Z
:goto_27
:try_start_27
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
:try_end_2a
.catchall {:try_start_27 .. :try_end_2a} :catchall_3b
move-result v3
if-eqz v3, :cond_32
iput-boolean v4, v2, Lde/greenrobot/event/EventBus$BooleanWrapper;->value:Z
goto :goto_19
:cond_30
move v1, v4
goto :goto_25
:cond_32
const/4 v3, 0x0
:try_start_33
invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v3
invoke-direct {p0, v3, v1}, Lde/greenrobot/event/EventBus;->postSingleEvent(Ljava/lang/Object;Z)V
:try_end_3a
.catchall {:try_start_33 .. :try_end_3a} :catchall_3b
goto :goto_27
:catchall_3b
move-exception v3
iput-boolean v4, v2, Lde/greenrobot/event/EventBus$BooleanWrapper;->value:Z
throw v3
.end method
.method public postSticky(Ljava/lang/Object;)V
.registers 5
iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_11
invoke-virtual {p0, p1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V
return-void
:catchall_11
move-exception v0
:try_start_12
monitor-exit v1
:try_end_13
.catchall {:try_start_12 .. :try_end_13} :catchall_11
throw v0
.end method
.method public register(Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lde/greenrobot/event/EventBus;->defaultMethodName:Ljava/lang/String;
const/4 v1, 0x0
invoke-direct {p0, p1, v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Z)V
return-void
.end method
.method public varargs register(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
.registers 10
iget-object v2, p0, Lde/greenrobot/event/EventBus;->defaultMethodName:Ljava/lang/String;
const/4 v3, 0x0
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
return-void
.end method
.method public register(Ljava/lang/Object;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Z)V
return-void
.end method
.method public varargs declared-synchronized register(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
.registers 11
monitor-enter p0
const/4 v3, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v4, p3
move-object v5, p4
:try_start_7
invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
:try_end_a
.catchall {:try_start_7 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public registerSticky(Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lde/greenrobot/event/EventBus;->defaultMethodName:Ljava/lang/String;
const/4 v1, 0x1
invoke-direct {p0, p1, v0, v1}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Z)V
return-void
.end method
.method public varargs registerSticky(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)V
.registers 10
iget-object v2, p0, Lde/greenrobot/event/EventBus;->defaultMethodName:Ljava/lang/String;
const/4 v3, 0x1
move-object v0, p0
move-object v1, p1
move-object v4, p2
move-object v5, p3
invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
return-void
.end method
.method public registerSticky(Ljava/lang/Object;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;Z)V
return-void
.end method
.method public varargs declared-synchronized registerSticky(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)V
.registers 11
monitor-enter p0
const/4 v3, 0x1
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v4, p3
move-object v5, p4
:try_start_7
invoke-direct/range {v0 .. v5}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;Ljava/lang/String;ZLjava/lang/Class;[Ljava/lang/Class;)V
:try_end_a
.catchall {:try_start_7 .. :try_end_a} :catchall_c
monitor-exit p0
return-void
:catchall_c
move-exception v0
monitor-exit p0
throw v0
.end method
.method public removeStickyEvent(Ljava/lang/Class;)Ljava/lang/Object;
.registers 4
iget-object v1, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
monitor-exit v1
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
:try_end_d
.catchall {:try_start_3 .. :try_end_d} :catchall_b
throw v0
.end method
.method public removeStickyEvent(Ljava/lang/Object;)Z
.registers 6
iget-object v3, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
monitor-enter v3
:try_start_3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
iget-object v2, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1b
iget-object v2, p0, Lde/greenrobot/event/EventBus;->stickyEvents:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v3
const/4 v2, 0x1
:goto_1a
return v2
:cond_1b
monitor-exit v3
const/4 v2, 0x0
goto :goto_1a
:catchall_1e
move-exception v2
monitor-exit v3
:try_end_20
.catchall {:try_start_3 .. :try_end_20} :catchall_1e
throw v2
.end method
.method public declared-synchronized unregister(Ljava/lang/Object;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v2, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;
invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-eqz v1, :cond_29
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_1c
iget-object v2, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;
invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:try_end_1a
.catchall {:try_start_1 .. :try_end_1a} :catchall_26
:goto_1a
monitor-exit p0
return-void
:cond_1c
:try_start_1c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-direct {p0, p1, v0}, Lde/greenrobot/event/EventBus;->unubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
:try_end_25
.catchall {:try_start_1c .. :try_end_25} :catchall_26
goto :goto_f
:catchall_26
move-exception v2
monitor-exit p0
throw v2
:cond_29
:try_start_29
sget-object v2, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Subscriber to unregister was not registered before: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:try_end_42
.catchall {:try_start_29 .. :try_end_42} :catchall_26
goto :goto_1a
.end method
.method public varargs declared-synchronized unregister(Ljava/lang/Object;[Ljava/lang/Class;)V
.registers 8
monitor-enter p0
:try_start_1
array-length v2, p2
if-nez v2, :cond_10
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string/jumbo v3, "Provide at least one event class"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:catchall_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_d
move-exception v2
monitor-exit p0
throw v2
:cond_10
:try_start_10
iget-object v2, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;
invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-eqz v1, :cond_36
array-length v3, p2
const/4 v2, 0x0
:goto_1c
if-lt v2, v3, :cond_2b
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v2
if-eqz v2, :cond_29
iget-object v2, p0, Lde/greenrobot/event/EventBus;->typesBySubscriber:Ljava/util/Map;
invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:goto_29
:cond_29
:try_end_29
.catchall {:try_start_10 .. :try_end_29} :catchall_d
monitor-exit p0
return-void
:try_start_2b
:cond_2b
aget-object v0, p2, v2
invoke-direct {p0, p1, v0}, Lde/greenrobot/event/EventBus;->unubscribeByEventType(Ljava/lang/Object;Ljava/lang/Class;)V
invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
add-int/lit8 v2, v2, 0x1
goto :goto_1c
:cond_36
sget-object v2, Lde/greenrobot/event/EventBus;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Subscriber to unregister was not registered before: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:try_end_4f
.catchall {:try_start_2b .. :try_end_4f} :catchall_d
goto :goto_29
.end method