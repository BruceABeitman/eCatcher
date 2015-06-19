.class  Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;
.super Ljava/lang/Object;
.source "Profile.java"
.field  cycleTime:I
.field  holdingStacks:Ljava/util/ArrayList;
.field  isHolding:Z
.field  thread:Ljava/lang/Thread;
.field  wakeTime:I
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;->holdingStacks:Ljava/util/ArrayList;
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/Profile$WatchEntry;-><init>()V
return-void
.end method