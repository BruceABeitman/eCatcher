.class public Lcom/blackberry/ids/RequestId;
.super Ljava/lang/Object;
.source "RequestId.java"
.field private static final a:Ljava/util/concurrent/atomic/AtomicInteger;
.field private final b:I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V
sput-object v0, Lcom/blackberry/ids/RequestId;->a:Ljava/util/concurrent/atomic/AtomicInteger;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/blackberry/ids/RequestId;->a:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
move-result v0
iput v0, p0, Lcom/blackberry/ids/RequestId;->b:I
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/blackberry/ids/RequestId;->b:I
return-void
.end method
.method public getRequestId()I
.registers 2
iget v0, p0, Lcom/blackberry/ids/RequestId;->b:I
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget v0, p0, Lcom/blackberry/ids/RequestId;->b:I
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method