.class  Lcom/fsck/k9/service/SleepService$SleepDatum;
.super Ljava/lang/Object;
.source "SleepService.java"
.field  latch:Ljava/util/concurrent/CountDownLatch;
.field  timeout:J
.field  wakeLock:Landroid/os/PowerManager$WakeLock;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/fsck/k9/service/SleepService$1;)V
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/service/SleepService$SleepDatum;-><init>()V
return-void
.end method