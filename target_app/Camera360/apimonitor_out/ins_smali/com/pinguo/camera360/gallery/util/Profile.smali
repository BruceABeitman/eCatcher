.class public Lcom/pinguo/camera360/gallery/util/Profile;
.super Ljava/lang/Object;
.source "Profile.java"
.field private static final NS_PER_MS:I = 0xf4240
.field private static final TAG:Ljava/lang/String; = "Profile"
.field private static sWatchdog:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;-><init>()V
sput-object v0, Lcom/pinguo/camera360/gallery/util/Profile;->sWatchdog:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static commit()V
.registers 2
sget-object v0, Lcom/pinguo/camera360/gallery/util/Profile;->sWatchdog:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->commit(Ljava/lang/Thread;)V
return-void
.end method
.method public static disable()V
.registers 2
sget-object v0, Lcom/pinguo/camera360/gallery/util/Profile;->sWatchdog:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->removeWatchEntry(Ljava/lang/Thread;)V
return-void
.end method
.method public static disableAll()V
.registers 1
sget-object v0, Lcom/pinguo/camera360/gallery/util/Profile;->sWatchdog:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->removeAllWatchEntries()V
return-void
.end method
.method public static drop()V
.registers 2
sget-object v0, Lcom/pinguo/camera360/gallery/util/Profile;->sWatchdog:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->drop(Ljava/lang/Thread;)V
return-void
.end method
.method public static dumpToFile(Ljava/lang/String;)V
.registers 2
sget-object v0, Lcom/pinguo/camera360/gallery/util/Profile;->sWatchdog:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
invoke-virtual {v0, p0}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->dumpToFile(Ljava/lang/String;)V
return-void
.end method
.method public static enable(I)V
.registers 3
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/gallery/util/Profile;->sWatchdog:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
invoke-virtual {v1, v0, p0}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->addWatchEntry(Ljava/lang/Thread;I)V
return-void
.end method
.method public static hold()V
.registers 2
sget-object v0, Lcom/pinguo/camera360/gallery/util/Profile;->sWatchdog:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->hold(Ljava/lang/Thread;)V
return-void
.end method
.method public static reset()V
.registers 1
sget-object v0, Lcom/pinguo/camera360/gallery/util/Profile;->sWatchdog:Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/util/Profile$Watchdog;->reset()V
return-void
.end method