.class public Lcom/googlecode/javacpp/Pointer;
.super Ljava/lang/Object;
.source "Pointer.java"
.field private static final referenceQueue:Ljava/lang/ref/ReferenceQueue;
.field protected address:J
.field protected capacity:I
.field private deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
.field protected limit:I
.field protected position:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/lang/ref/ReferenceQueue;
invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V
sput-object v0, Lcom/googlecode/javacpp/Pointer;->referenceQueue:Ljava/lang/ref/ReferenceQueue;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J
iput v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I
iput v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
iput v2, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
return-void
.end method
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J
iput v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I
iput v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
iput v2, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
if-eqz p1, :cond_2e
iget-wide v0, p1, Lcom/googlecode/javacpp/Pointer;->address:J
iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J
iget v0, p1, Lcom/googlecode/javacpp/Pointer;->position:I
iput v0, p0, Lcom/googlecode/javacpp/Pointer;->position:I
iget v0, p1, Lcom/googlecode/javacpp/Pointer;->limit:I
iput v0, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
iget v0, p1, Lcom/googlecode/javacpp/Pointer;->capacity:I
iput v0, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I
iget-object v0, p1, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
if-eqz v0, :cond_2e
new-instance v0, Lcom/googlecode/javacpp/Pointer$1;
invoke-direct {v0, p0, p1}, Lcom/googlecode/javacpp/Pointer$1;-><init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;)V
iput-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
:cond_2e
return-void
.end method
.method public constructor <init>(Ljava/nio/Buffer;)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J
iput v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I
iput v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
iput v2, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
if-eqz p1, :cond_16
invoke-direct {p0, p1}, Lcom/googlecode/javacpp/Pointer;->allocate(Ljava/nio/Buffer;)V
:cond_16
invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->isNull()Z
move-result v0
if-nez v0, :cond_35
invoke-virtual {p1}, Ljava/nio/Buffer;->position()I
move-result v0
iput v0, p0, Lcom/googlecode/javacpp/Pointer;->position:I
invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I
move-result v0
iput v0, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I
move-result v0
iput v0, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I
new-instance v0, Lcom/googlecode/javacpp/Pointer$2;
invoke-direct {v0, p0, p1}, Lcom/googlecode/javacpp/Pointer$2;-><init>(Lcom/googlecode/javacpp/Pointer;Ljava/nio/Buffer;)V
iput-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
:cond_35
return-void
.end method
.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
.registers 1
sget-object v0, Lcom/googlecode/javacpp/Pointer;->referenceQueue:Ljava/lang/ref/ReferenceQueue;
return-object v0
.end method
.method private native allocate(Ljava/nio/Buffer;)V
.end method
.method private native asDirectBuffer()Ljava/nio/ByteBuffer;
.end method
.method public static deallocateReferences()V
.registers 2
const/4 v0, 0x0
:goto_1
sget-object v1, Lcom/googlecode/javacpp/Pointer;->referenceQueue:Ljava/lang/ref/ReferenceQueue;
invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
move-result-object v0
check-cast v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
if-eqz v0, :cond_12
invoke-virtual {v0}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->clear()V
invoke-virtual {v0}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->remove()V
goto :goto_1
:cond_12
return-void
.end method
.method public static native memchr(Lcom/googlecode/javacpp/Pointer;IJ)Lcom/googlecode/javacpp/Pointer;
.end method
.method public static native memcmp(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;J)I
.end method
.method public static native memcpy(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;J)Lcom/googlecode/javacpp/Pointer;
.end method
.method public static native memmove(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;J)Lcom/googlecode/javacpp/Pointer;
.end method
.method public static native memset(Lcom/googlecode/javacpp/Pointer;IJ)Lcom/googlecode/javacpp/Pointer;
.end method
.method protected static withDeallocator(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;
.registers 2
new-instance v0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;
invoke-direct {v0, p0}, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;-><init>(Lcom/googlecode/javacpp/Pointer;)V
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Pointer;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
return-object v0
.end method
.method public asBuffer()Ljava/nio/Buffer;
.registers 2
invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->asByteBuffer()Ljava/nio/ByteBuffer;
move-result-object v0
return-object v0
.end method
.method public asByteBuffer()Ljava/nio/ByteBuffer;
.registers 8
invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->isNull()Z
move-result v4
if-eqz v4, :cond_8
const/4 v2, 0x0
:goto_7
return-object v2
:cond_8
iget v4, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
if-lez v4, :cond_3f
iget v4, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
iget v5, p0, Lcom/googlecode/javacpp/Pointer;->position:I
if-ge v4, v5, :cond_3f
new-instance v4, Ljava/lang/IllegalArgumentException;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "limit < position: ("
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget v6, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " < "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget v6, p0, Lcom/googlecode/javacpp/Pointer;->position:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ")"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v4
:cond_3f
invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->sizeof()I
move-result v3
iget v1, p0, Lcom/googlecode/javacpp/Pointer;->position:I
iget v0, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
mul-int v4, v3, v1
iput v4, p0, Lcom/googlecode/javacpp/Pointer;->position:I
if-gtz v0, :cond_63
add-int/lit8 v4, v1, 0x1
:goto_4f
mul-int/2addr v4, v3
iput v4, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
invoke-direct {p0}, Lcom/googlecode/javacpp/Pointer;->asDirectBuffer()Ljava/nio/ByteBuffer;
move-result-object v4
invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
move-result-object v2
iput v1, p0, Lcom/googlecode/javacpp/Pointer;->position:I
iput v0, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
goto :goto_7
:cond_63
move v4, v0
goto :goto_4f
.end method
.method public capacity()I
.registers 2
iget v0, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I
return v0
.end method
.method public capacity(I)Lcom/googlecode/javacpp/Pointer;
.registers 2
iput p1, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
iput p1, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I
return-object p0
.end method
.method public deallocate()V
.registers 3
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
invoke-interface {v0}, Lcom/googlecode/javacpp/Pointer$Deallocator;->deallocate()V
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J
return-void
.end method
.method protected deallocator()Lcom/googlecode/javacpp/Pointer$Deallocator;
.registers 2
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
return-object v0
.end method
.method protected deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
.registers 5
const/4 v2, 0x0
iget-object v1, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
if-eqz v1, :cond_c
iget-object v1, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
invoke-interface {v1}, Lcom/googlecode/javacpp/Pointer$Deallocator;->deallocate()V
iput-object v2, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
:cond_c
invoke-static {}, Lcom/googlecode/javacpp/Pointer;->deallocateReferences()V
if-eqz p1, :cond_23
invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_23
iput-object p1, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
instance-of v1, p1, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
if-eqz v1, :cond_24
check-cast p1, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
move-object v0, p1
:goto_20
invoke-virtual {v0}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;->add()V
:cond_23
return-object p0
:cond_24
new-instance v0, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
invoke-direct {v0, p0, p1}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;-><init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer$Deallocator;)V
goto :goto_20
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-nez p1, :cond_c
invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->isNull()Z
move-result v1
goto :goto_4
:cond_c
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_18
move v1, v2
goto :goto_4
:cond_18
move-object v0, p1
check-cast v0, Lcom/googlecode/javacpp/Pointer;
iget-wide v3, p0, Lcom/googlecode/javacpp/Pointer;->address:J
iget-wide v5, v0, Lcom/googlecode/javacpp/Pointer;->address:J
cmp-long v3, v3, v5
if-nez v3, :cond_29
iget v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I
iget v4, v0, Lcom/googlecode/javacpp/Pointer;->position:I
if-eq v3, v4, :cond_4
:cond_29
move v1, v2
goto :goto_4
.end method
.method public fill(I)Lcom/googlecode/javacpp/Pointer;
.registers 7
iget v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
if-lez v2, :cond_37
iget v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
iget v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I
if-ge v2, v3, :cond_37
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "limit < position: ("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " < "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget v4, p0, Lcom/googlecode/javacpp/Pointer;->position:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_37
invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->sizeof()I
move-result v1
iget v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
if-gtz v2, :cond_51
const/4 v2, 0x1
:goto_40
mul-int v0, v1, v2
iget v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I
mul-int/2addr v2, v1
iput v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I
int-to-long v2, v0
invoke-static {p0, p1, v2, v3}, Lcom/googlecode/javacpp/Pointer;->memset(Lcom/googlecode/javacpp/Pointer;IJ)Lcom/googlecode/javacpp/Pointer;
iget v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I
div-int/2addr v2, v1
iput v2, p0, Lcom/googlecode/javacpp/Pointer;->position:I
return-object p0
:cond_51
iget v2, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
iget v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I
sub-int/2addr v2, v3
goto :goto_40
.end method
.method public hashCode()I
.registers 3
iget-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J
long-to-int v0, v0
return v0
.end method
.method  init(JIJ)V
.registers 7
iput-wide p1, p0, Lcom/googlecode/javacpp/Pointer;->address:J
const/4 v0, 0x0
iput v0, p0, Lcom/googlecode/javacpp/Pointer;->position:I
iput p3, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
iput p3, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I
new-instance v0, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;
invoke-direct {v0, p0, p4, p5}, Lcom/googlecode/javacpp/Pointer$NativeDeallocator;-><init>(Lcom/googlecode/javacpp/Pointer;J)V
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Pointer;->deallocator(Lcom/googlecode/javacpp/Pointer$Deallocator;)Lcom/googlecode/javacpp/Pointer;
return-void
.end method
.method public isNull()Z
.registers 5
iget-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public limit()I
.registers 2
iget v0, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
return v0
.end method
.method public limit(I)Lcom/googlecode/javacpp/Pointer;
.registers 2
iput p1, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
return-object p0
.end method
.method public offsetof(Ljava/lang/String;)I
.registers 5
const/4 v1, -0x1
:try_start_1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v2, Lcom/googlecode/javacpp/Pointer;
if-eq v0, v2, :cond_d
invoke-static {v0, p1}, Lcom/googlecode/javacpp/Loader;->offsetof(Ljava/lang/Class;Ljava/lang/String;)I
:try_end_c
.catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_c} :catch_e
move-result v1
:cond_d
:goto_d
return v1
:catch_e
move-exception v2
goto :goto_d
.end method
.method public position()I
.registers 2
iget v0, p0, Lcom/googlecode/javacpp/Pointer;->position:I
return v0
.end method
.method public position(I)Lcom/googlecode/javacpp/Pointer;
.registers 2
iput p1, p0, Lcom/googlecode/javacpp/Pointer;->position:I
return-object p0
.end method
.method public put(Lcom/googlecode/javacpp/Pointer;)Lcom/googlecode/javacpp/Pointer;
.registers 8
iget v3, p1, Lcom/googlecode/javacpp/Pointer;->limit:I
if-lez v3, :cond_37
iget v3, p1, Lcom/googlecode/javacpp/Pointer;->limit:I
iget v4, p1, Lcom/googlecode/javacpp/Pointer;->position:I
if-ge v3, v4, :cond_37
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "limit < position: ("
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, p1, Lcom/googlecode/javacpp/Pointer;->limit:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " < "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget v5, p1, Lcom/googlecode/javacpp/Pointer;->position:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ")"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_37
invoke-virtual {p0}, Lcom/googlecode/javacpp/Pointer;->sizeof()I
move-result v2
invoke-virtual {p1}, Lcom/googlecode/javacpp/Pointer;->sizeof()I
move-result v1
iget v3, p1, Lcom/googlecode/javacpp/Pointer;->limit:I
if-gtz v3, :cond_5f
const/4 v3, 0x1
:goto_44
mul-int v0, v1, v3
iget v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I
mul-int/2addr v3, v2
iput v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I
iget v3, p1, Lcom/googlecode/javacpp/Pointer;->position:I
mul-int/2addr v3, v1
iput v3, p1, Lcom/googlecode/javacpp/Pointer;->position:I
int-to-long v3, v0
invoke-static {p0, p1, v3, v4}, Lcom/googlecode/javacpp/Pointer;->memcpy(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;J)Lcom/googlecode/javacpp/Pointer;
iget v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I
div-int/2addr v3, v2
iput v3, p0, Lcom/googlecode/javacpp/Pointer;->position:I
iget v3, p1, Lcom/googlecode/javacpp/Pointer;->position:I
div-int/2addr v3, v1
iput v3, p1, Lcom/googlecode/javacpp/Pointer;->position:I
return-object p0
:cond_5f
iget v3, p1, Lcom/googlecode/javacpp/Pointer;->limit:I
iget v4, p1, Lcom/googlecode/javacpp/Pointer;->position:I
sub-int/2addr v3, v4
goto :goto_44
.end method
.method public setNull()V
.registers 3
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/googlecode/javacpp/Pointer;->address:J
return-void
.end method
.method public sizeof()I
.registers 3
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/googlecode/javacpp/Pointer;
if-eq v0, v1, :cond_c
const-class v1, Lcom/googlecode/javacpp/BytePointer;
if-ne v0, v1, :cond_e
:cond_c
const/4 v1, 0x1
:goto_d
return v1
:cond_e
const-string v1, "sizeof"
invoke-virtual {p0, v1}, Lcom/googlecode/javacpp/Pointer;->offsetof(Ljava/lang/String;)I
move-result v1
goto :goto_d
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "[address=0x"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/googlecode/javacpp/Pointer;->address:J
invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",position="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/javacpp/Pointer;->position:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",limit="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/javacpp/Pointer;->limit:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",capacity="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/googlecode/javacpp/Pointer;->capacity:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ",deallocator="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/googlecode/javacpp/Pointer;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public zero()Lcom/googlecode/javacpp/Pointer;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/googlecode/javacpp/Pointer;->fill(I)Lcom/googlecode/javacpp/Pointer;
move-result-object v0
return-object v0
.end method