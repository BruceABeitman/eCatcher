.class public final Lcom/google/android/gms/common/api/Batch;
.super Lcom/google/android/gms/common/api/a$a;
.field private Dw:I
.field private Dx:Z
.field private Dy:Z
.field private final Dz:[Lcom/google/android/gms/common/api/PendingResult;
.field private final lq:Ljava/lang/Object;
.method private constructor <init>(Ljava/util/List;Landroid/os/Looper;)V
.registers 6
new-instance v0, Lcom/google/android/gms/common/api/a$c;
invoke-direct {v0, p2}, Lcom/google/android/gms/common/api/a$c;-><init>(Landroid/os/Looper;)V
invoke-direct {p0, v0}, Lcom/google/android/gms/common/api/a$a;-><init>(Lcom/google/android/gms/common/api/a$c;)V
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/common/api/Batch;->lq:Ljava/lang/Object;
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
iput v0, p0, Lcom/google/android/gms/common/api/Batch;->Dw:I
iget v0, p0, Lcom/google/android/gms/common/api/Batch;->Dw:I
new-array v0, v0, [Lcom/google/android/gms/common/api/PendingResult;
iput-object v0, p0, Lcom/google/android/gms/common/api/Batch;->Dz:[Lcom/google/android/gms/common/api/PendingResult;
const/4 v0, 0x0
move v1, v0
:goto_1d
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_39
invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/api/PendingResult;
iget-object v2, p0, Lcom/google/android/gms/common/api/Batch;->Dz:[Lcom/google/android/gms/common/api/PendingResult;
aput-object v0, v2, v1
new-instance v2, Lcom/google/android/gms/common/api/Batch$1;
invoke-direct {v2, p0}, Lcom/google/android/gms/common/api/Batch$1;-><init>(Lcom/google/android/gms/common/api/Batch;)V
invoke-interface {v0, v2}, Lcom/google/android/gms/common/api/PendingResult;->a(Lcom/google/android/gms/common/api/PendingResult$a;)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1d
:cond_39
return-void
.end method
.method synthetic constructor <init>(Ljava/util/List;Landroid/os/Looper;Lcom/google/android/gms/common/api/Batch$1;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/api/Batch;-><init>(Ljava/util/List;Landroid/os/Looper;)V
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/Batch;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/Batch;->lq:Ljava/lang/Object;
return-object v0
.end method
.method static synthetic a(Lcom/google/android/gms/common/api/Batch;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/common/api/Batch;->Dy:Z
return p1
.end method
.method static synthetic b(Lcom/google/android/gms/common/api/Batch;)I
.registers 3
iget v0, p0, Lcom/google/android/gms/common/api/Batch;->Dw:I
add-int/lit8 v1, v0, -0x1
iput v1, p0, Lcom/google/android/gms/common/api/Batch;->Dw:I
return v0
.end method
.method static synthetic b(Lcom/google/android/gms/common/api/Batch;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/google/android/gms/common/api/Batch;->Dx:Z
return p1
.end method
.method static synthetic c(Lcom/google/android/gms/common/api/Batch;)I
.registers 2
iget v0, p0, Lcom/google/android/gms/common/api/Batch;->Dw:I
return v0
.end method
.method static synthetic d(Lcom/google/android/gms/common/api/Batch;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/common/api/Batch;->Dy:Z
return v0
.end method
.method static synthetic e(Lcom/google/android/gms/common/api/Batch;)V
.registers 1
invoke-super {p0}, Lcom/google/android/gms/common/api/a$a;->cancel()V
return-void
.end method
.method static synthetic f(Lcom/google/android/gms/common/api/Batch;)Z
.registers 2
iget-boolean v0, p0, Lcom/google/android/gms/common/api/Batch;->Dx:Z
return v0
.end method
.method static synthetic g(Lcom/google/android/gms/common/api/Batch;)[Lcom/google/android/gms/common/api/PendingResult;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/common/api/Batch;->Dz:[Lcom/google/android/gms/common/api/PendingResult;
return-object v0
.end method
.method public synthetic c(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/Batch;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;
move-result-object v0
return-object v0
.end method
.method public cancel()V
.registers 5
invoke-super {p0}, Lcom/google/android/gms/common/api/a$a;->cancel()V
iget-object v1, p0, Lcom/google/android/gms/common/api/Batch;->Dz:[Lcom/google/android/gms/common/api/PendingResult;
array-length v2, v1
const/4 v0, 0x0
:goto_7
if-ge v0, v2, :cond_11
aget-object v3, v1, v0
invoke-interface {v3}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_11
return-void
.end method
.method public createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/BatchResult;
.registers 4
new-instance v0, Lcom/google/android/gms/common/api/BatchResult;
iget-object v1, p0, Lcom/google/android/gms/common/api/Batch;->Dz:[Lcom/google/android/gms/common/api/PendingResult;
invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/BatchResult;-><init>(Lcom/google/android/gms/common/api/Status;[Lcom/google/android/gms/common/api/PendingResult;)V
return-object v0
.end method