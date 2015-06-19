.class final Lde/greenrobot/event/PendingPost;
.super Ljava/lang/Object;
.source "PendingPost.java"
.field private static final pendingPostPool:Ljava/util/List;
.field  event:Ljava/lang/Object;
.field  next:Lde/greenrobot/event/PendingPost;
.field  subscription:Lde/greenrobot/event/Subscription;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lde/greenrobot/event/PendingPost;->pendingPostPool:Ljava/util/List;
return-void
.end method
.method private constructor <init>(Ljava/lang/Object;Lde/greenrobot/event/Subscription;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lde/greenrobot/event/PendingPost;->event:Ljava/lang/Object;
iput-object p2, p0, Lde/greenrobot/event/PendingPost;->subscription:Lde/greenrobot/event/Subscription;
return-void
.end method
.method static obtainPendingPost(Lde/greenrobot/event/Subscription;Ljava/lang/Object;)Lde/greenrobot/event/PendingPost;
.registers 7
sget-object v3, Lde/greenrobot/event/PendingPost;->pendingPostPool:Ljava/util/List;
monitor-enter v3
:try_start_3
sget-object v2, Lde/greenrobot/event/PendingPost;->pendingPostPool:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_1e
sget-object v2, Lde/greenrobot/event/PendingPost;->pendingPostPool:Ljava/util/List;
add-int/lit8 v4, v1, -0x1
invoke-interface {v2, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lde/greenrobot/event/PendingPost;
iput-object p1, v0, Lde/greenrobot/event/PendingPost;->event:Ljava/lang/Object;
iput-object p0, v0, Lde/greenrobot/event/PendingPost;->subscription:Lde/greenrobot/event/Subscription;
const/4 v2, 0x0
iput-object v2, v0, Lde/greenrobot/event/PendingPost;->next:Lde/greenrobot/event/PendingPost;
monitor-exit v3
:goto_1d
return-object v0
:cond_1e
monitor-exit v3
:try_end_1f
.catchall {:try_start_3 .. :try_end_1f} :catchall_25
new-instance v0, Lde/greenrobot/event/PendingPost;
invoke-direct {v0, p1, p0}, Lde/greenrobot/event/PendingPost;-><init>(Ljava/lang/Object;Lde/greenrobot/event/Subscription;)V
goto :goto_1d
:catchall_25
move-exception v2
:try_start_26
monitor-exit v3
:try_end_27
.catchall {:try_start_26 .. :try_end_27} :catchall_25
throw v2
.end method
.method static releasePendingPost(Lde/greenrobot/event/PendingPost;)V
.registers 4
const/4 v0, 0x0
iput-object v0, p0, Lde/greenrobot/event/PendingPost;->event:Ljava/lang/Object;
iput-object v0, p0, Lde/greenrobot/event/PendingPost;->subscription:Lde/greenrobot/event/Subscription;
iput-object v0, p0, Lde/greenrobot/event/PendingPost;->next:Lde/greenrobot/event/PendingPost;
sget-object v1, Lde/greenrobot/event/PendingPost;->pendingPostPool:Ljava/util/List;
monitor-enter v1
:try_start_a
sget-object v0, Lde/greenrobot/event/PendingPost;->pendingPostPool:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/16 v2, 0x2710
if-ge v0, v2, :cond_19
sget-object v0, Lde/greenrobot/event/PendingPost;->pendingPostPool:Ljava/util/List;
invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_19
monitor-exit v1
return-void
:catchall_1b
move-exception v0
monitor-exit v1
:try_end_1d
.catchall {:try_start_a .. :try_end_1d} :catchall_1b
throw v0
.end method