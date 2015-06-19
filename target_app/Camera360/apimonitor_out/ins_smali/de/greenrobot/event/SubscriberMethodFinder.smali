.class  Lde/greenrobot/event/SubscriberMethodFinder;
.super Ljava/lang/Object;
.source "SubscriberMethodFinder.java"
.field private static final methodCache:Ljava/util/Map;
.field private static final skipMethodNameVerificationForClasses:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
sput-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodNameVerificationForClasses:Ljava/util/Map;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static clearCaches()V
.registers 1
sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method public static clearSkipMethodNameVerifications()V
.registers 1
sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodNameVerificationForClasses:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
return-void
.end method
.method static skipMethodNameVerificationFor(Ljava/lang/Class;)V
.registers 3
sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
move-result v0
if-nez v0, :cond_11
new-instance v0, Ljava/lang/IllegalStateException;
const-string/jumbo v1, "This method must be called before registering anything"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11
sget-object v0, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodNameVerificationForClasses:Ljava/util/Map;
invoke-interface {v0, p0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method  findSubscriberMethods(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/List;
.registers 24
new-instance v17, Ljava/lang/StringBuilder;
invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v18
invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v18
invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v18, 0x2e
invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v17
move-object/from16 v0, v17
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
sget-object v18, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;
monitor-enter v18
:try_start_22
sget-object v17, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;
move-object/from16 v0, v17
invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/util/List;
monitor-exit v18
if-eqz v14, :cond_34
move-object v15, v14
:goto_30
return-object v15
:catchall_31
move-exception v17
monitor-exit v18
:try_end_33
.catchall {:try_start_22 .. :try_end_33} :catchall_31
throw v17
:cond_34
new-instance v14, Ljava/util/ArrayList;
invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v2, p1
new-instance v4, Ljava/util/HashSet;
invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
new-instance v8, Ljava/lang/StringBuilder;
invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
:goto_45
if-nez v2, :cond_76
:cond_47
invoke-interface {v14}, Ljava/util/List;->isEmpty()Z
move-result v17
if-eqz v17, :cond_162
new-instance v17, Lde/greenrobot/event/EventBusException;
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "Subscriber "
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v18
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
const-string/jumbo v19, " has no methods called "
invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
move-object/from16 v0, v18
move-object/from16 v1, p2
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-direct/range {v17 .. v18}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V
throw v17
:cond_76
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v12
const-string/jumbo v17, "java."
move-object/from16 v0, v17
invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v17
if-nez v17, :cond_47
const-string/jumbo v17, "javax."
move-object/from16 v0, v17
invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v17
if-nez v17, :cond_47
const-string/jumbo v17, "android."
move-object/from16 v0, v17
invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v17
if-nez v17, :cond_47
invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v10
array-length v0, v10
move/from16 v18, v0
const/16 v17, 0x0
:goto_a4
move/from16 v0, v17
move/from16 v1, v18
if-lt v0, v1, :cond_af
invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
move-result-object v2
goto :goto_45
:cond_af
aget-object v6, v10, v17
invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v9
move-object/from16 v0, p2
invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v19
if-eqz v19, :cond_113
invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v13
array-length v0, v13
move/from16 v19, v0
const/16 v20, 0x1
move/from16 v0, v19
move/from16 v1, v20
if-ne v0, v1, :cond_113
invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I
move-result v19
move/from16 v0, v19
invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/String;->length()I
move-result v19
if-nez v19, :cond_116
sget-object v16, Lde/greenrobot/event/ThreadMode;->PostThread:Lde/greenrobot/event/ThreadMode;
:goto_de
const/16 v19, 0x0
aget-object v3, v13, v19
const/16 v19, 0x0
move/from16 v0, v19
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->setLength(I)V
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v19, 0x3e
move/from16 v0, v19
invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v19
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v20
invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_113
new-instance v19, Lde/greenrobot/event/SubscriberMethod;
move-object/from16 v0, v19
move-object/from16 v1, v16
invoke-direct {v0, v6, v1, v3}, Lde/greenrobot/event/SubscriberMethod;-><init>(Ljava/lang/reflect/Method;Lde/greenrobot/event/ThreadMode;Ljava/lang/Class;)V
move-object/from16 v0, v19
invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_113
add-int/lit8 v17, v17, 0x1
goto :goto_a4
:cond_116
const-string/jumbo v19, "MainThread"
move-object/from16 v0, v19
invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_124
sget-object v16, Lde/greenrobot/event/ThreadMode;->MainThread:Lde/greenrobot/event/ThreadMode;
goto :goto_de
:cond_124
const-string/jumbo v19, "BackgroundThread"
move-object/from16 v0, v19
invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_132
sget-object v16, Lde/greenrobot/event/ThreadMode;->BackgroundThread:Lde/greenrobot/event/ThreadMode;
goto :goto_de
:cond_132
const-string/jumbo v19, "Async"
move-object/from16 v0, v19
invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v19
if-eqz v19, :cond_140
sget-object v16, Lde/greenrobot/event/ThreadMode;->Async:Lde/greenrobot/event/ThreadMode;
goto :goto_de
:cond_140
sget-object v19, Lde/greenrobot/event/SubscriberMethodFinder;->skipMethodNameVerificationForClasses:Ljava/util/Map;
move-object/from16 v0, v19
invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v19
if-nez v19, :cond_113
new-instance v17, Lde/greenrobot/event/EventBusException;
new-instance v18, Ljava/lang/StringBuilder;
const-string/jumbo v19, "Illegal onEvent method, check for typos: "
invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, v18
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v18
invoke-direct/range {v17 .. v18}, Lde/greenrobot/event/EventBusException;-><init>(Ljava/lang/String;)V
throw v17
:cond_162
sget-object v18, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;
monitor-enter v18
:try_start_165
sget-object v17, Lde/greenrobot/event/SubscriberMethodFinder;->methodCache:Ljava/util/Map;
move-object/from16 v0, v17
invoke-interface {v0, v5, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit v18
move-object v15, v14
goto/16 :goto_30
:catchall_170
move-exception v17
monitor-exit v18
:try_end_172
.catchall {:try_start_165 .. :try_end_172} :catchall_170
throw v17
.end method