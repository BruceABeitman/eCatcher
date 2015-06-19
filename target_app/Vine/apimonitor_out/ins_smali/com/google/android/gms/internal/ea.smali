.class public final Lcom/google/android/gms/internal/ea;
.super Ljava/lang/Object;
.field private lL:Lcom/google/android/gms/internal/ey;
.field private final lq:Ljava/lang/Object;
.field private pH:I
.field public final qA:Lcom/google/android/gms/internal/bd;
.field public final qB:Lcom/google/android/gms/internal/bd;
.field private qy:Ljava/lang/String;
.field private qz:Lcom/google/android/gms/internal/ec;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/internal/ea;->lq:Ljava/lang/Object;
const/4 v0, -0x2
iput v0, p0, Lcom/google/android/gms/internal/ea;->pH:I
new-instance v0, Lcom/google/android/gms/internal/ea$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ea$1;-><init>(Lcom/google/android/gms/internal/ea;)V
iput-object v0, p0, Lcom/google/android/gms/internal/ea;->qA:Lcom/google/android/gms/internal/bd;
new-instance v0, Lcom/google/android/gms/internal/ea$2;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ea$2;-><init>(Lcom/google/android/gms/internal/ea;)V
iput-object v0, p0, Lcom/google/android/gms/internal/ea;->qB:Lcom/google/android/gms/internal/bd;
iput-object p1, p0, Lcom/google/android/gms/internal/ea;->qy:Ljava/lang/String;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ea;I)I
.registers 2
iput p1, p0, Lcom/google/android/gms/internal/ea;->pH:I
return p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ea;Lcom/google/android/gms/internal/ec;)Lcom/google/android/gms/internal/ec;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/ea;->qz:Lcom/google/android/gms/internal/ec;
return-object p1
.end method
.method static synthetic a(Lcom/google/android/gms/internal/ea;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->lq:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic b(Lcom/google/android/gms/internal/ea;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->qy:Ljava/lang/String;
return-object v0
.end method
.method public b(Lcom/google/android/gms/internal/ey;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/ea;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iput-object p1, p0, Lcom/google/android/gms/internal/ea;->lL:Lcom/google/android/gms/internal/ey;
monitor-exit v1
return-void
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method
.method public bs()Lcom/google/android/gms/internal/ec;
.registers 4
iget-object v1, p0, Lcom/google/android/gms/internal/ea;->lq:Ljava/lang/Object;
monitor-enter v1
:goto_3
:try_start_3
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->qz:Lcom/google/android/gms/internal/ec;
if-nez v0, :cond_1b
iget v0, p0, Lcom/google/android/gms/internal/ea;->pH:I
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_1f
const/4 v2, -0x2
if-ne v0, v2, :cond_1b
:try_start_c
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->lq:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->wait()V
:try_end_11
.catchall {:try_start_c .. :try_end_11} :catchall_1f
.catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_11} :catch_12
goto :goto_3
:catch_12
move-exception v0
:try_start_13
const-string v0, "Ad request service was interrupted."
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->D(Ljava/lang/String;)V
const/4 v0, 0x0
monitor-exit v1
:goto_1a
return-object v0
:cond_1b
iget-object v0, p0, Lcom/google/android/gms/internal/ea;->qz:Lcom/google/android/gms/internal/ec;
monitor-exit v1
goto :goto_1a
:catchall_1f
move-exception v0
monitor-exit v1
:try_end_21
.catchall {:try_start_13 .. :try_end_21} :catchall_1f
throw v0
.end method
.method public getErrorCode()I
.registers 3
iget-object v1, p0, Lcom/google/android/gms/internal/ea;->lq:Ljava/lang/Object;
monitor-enter v1
:try_start_3
iget v0, p0, Lcom/google/android/gms/internal/ea;->pH:I
monitor-exit v1
return v0
:catchall_7
move-exception v0
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_7
throw v0
.end method