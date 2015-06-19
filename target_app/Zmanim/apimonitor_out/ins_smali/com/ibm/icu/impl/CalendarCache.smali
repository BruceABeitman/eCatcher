.class public Lcom/ibm/icu/impl/CalendarCache;
.super Ljava/lang/Object;
.source "CalendarCache.java"
.field public static EMPTY:J
.field private static final primes:[I
.field private arraySize:I
.field private keys:[J
.field private pIndex:I
.field private size:I
.field private threshold:I
.field private values:[J
.method static constructor <clinit>()V
.registers 2
const/16 v0, 0xc
new-array v0, v0, [I
fill-array-data v0, :array_e
sput-object v0, Lcom/ibm/icu/impl/CalendarCache;->primes:[I
const-wide/high16 v0, -0x8000
sput-wide v0, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J
return-void
:array_e
.array-data 0x4
0x3dt 0x0t 0x0t 0x0t
0x7ft 0x0t 0x0t 0x0t
0xfdt 0x1t 0x0t 0x0t
0xfdt 0x3t 0x0t 0x0t
0xf7t 0x7t 0x0t 0x0t
0xfdt 0xft 0x0t 0x0t
0xfft 0x1ft 0x0t 0x0t
0xfdt 0x3ft 0x0t 0x0t
0xedt 0x7ft 0x0t 0x0t
0xf1t 0xfft 0x0t 0x0t
0xfft 0xfft 0x1t 0x0t
0xfbt 0xfft 0x3t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v0, p0, Lcom/ibm/icu/impl/CalendarCache;->pIndex:I
iput v0, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I
sget-object v0, Lcom/ibm/icu/impl/CalendarCache;->primes:[I
iget v1, p0, Lcom/ibm/icu/impl/CalendarCache;->pIndex:I
aget v0, v0, v1
iput v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
mul-int/lit8 v0, v0, 0x3
div-int/lit8 v0, v0, 0x4
iput v0, p0, Lcom/ibm/icu/impl/CalendarCache;->threshold:I
iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
new-array v0, v0, [J
iput-object v0, p0, Lcom/ibm/icu/impl/CalendarCache;->keys:[J
iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
new-array v0, v0, [J
iput-object v0, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J
iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
invoke-direct {p0, v0}, Lcom/ibm/icu/impl/CalendarCache;->makeArrays(I)V
return-void
.end method
.method private final findIndex(J)I
.registers 9
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/CalendarCache;->hash(J)I
move-result v1
const/4 v0, 0x0
:goto_5
iget-object v2, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J
aget-wide v2, v2, v1
sget-wide v4, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J
cmp-long v2, v2, v4
if-eqz v2, :cond_24
iget-object v2, p0, Lcom/ibm/icu/impl/CalendarCache;->keys:[J
aget-wide v2, v2, v1
cmp-long v2, v2, p1
if-eqz v2, :cond_24
if-nez v0, :cond_1d
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/CalendarCache;->hash2(J)I
move-result v0
:cond_1d
add-int v2, v1, v0
iget v3, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
rem-int v1, v2, v3
goto :goto_5
:cond_24
return v1
.end method
.method private final hash(J)I
.registers 8
const-wide/16 v1, 0x3dcd
mul-long/2addr v1, p1
const-wide/16 v3, 0x1
add-long/2addr v1, v3
iget v3, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
int-to-long v3, v3
rem-long/2addr v1, v3
long-to-int v0, v1
if-gez v0, :cond_10
iget v1, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
add-int/2addr v0, v1
:cond_10
return v0
.end method
.method private final hash2(J)I
.registers 6
const/4 v2, 0x2
iget v0, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
sub-int/2addr v0, v2
iget v1, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
sub-int/2addr v1, v2
int-to-long v1, v1
rem-long v1, p1, v1
long-to-int v1, v1
sub-int/2addr v0, v1
return v0
.end method
.method private makeArrays(I)V
.registers 7
new-array v1, p1, [J
iput-object v1, p0, Lcom/ibm/icu/impl/CalendarCache;->keys:[J
new-array v1, p1, [J
iput-object v1, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J
const/4 v0, 0x0
:goto_9
if-ge v0, p1, :cond_14
iget-object v1, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J
sget-wide v2, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J
aput-wide v2, v1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_14
iput p1, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
iget v1, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
int-to-double v1, v1
const-wide/high16 v3, 0x3fe8
mul-double/2addr v1, v3
double-to-int v1, v1
iput v1, p0, Lcom/ibm/icu/impl/CalendarCache;->threshold:I
const/4 v1, 0x0
iput v1, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I
return-void
.end method
.method private rehash()V
.registers 9
iget v2, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
iget-object v1, p0, Lcom/ibm/icu/impl/CalendarCache;->keys:[J
iget-object v3, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J
iget v4, p0, Lcom/ibm/icu/impl/CalendarCache;->pIndex:I
sget-object v5, Lcom/ibm/icu/impl/CalendarCache;->primes:[I
array-length v5, v5
const/4 v6, 0x1
sub-int/2addr v5, v6
if-ge v4, v5, :cond_38
sget-object v4, Lcom/ibm/icu/impl/CalendarCache;->primes:[I
iget v5, p0, Lcom/ibm/icu/impl/CalendarCache;->pIndex:I
add-int/lit8 v5, v5, 0x1
iput v5, p0, Lcom/ibm/icu/impl/CalendarCache;->pIndex:I
aget v4, v4, v5
iput v4, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
:goto_1b
const/4 v4, 0x0
iput v4, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I
iget v4, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
invoke-direct {p0, v4}, Lcom/ibm/icu/impl/CalendarCache;->makeArrays(I)V
const/4 v0, 0x0
:goto_24
if-ge v0, v2, :cond_41
aget-wide v4, v3, v0
sget-wide v6, Lcom/ibm/icu/impl/CalendarCache;->EMPTY:J
cmp-long v4, v4, v6
if-eqz v4, :cond_35
aget-wide v4, v1, v0
aget-wide v6, v3, v0
invoke-virtual {p0, v4, v5, v6, v7}, Lcom/ibm/icu/impl/CalendarCache;->put(JJ)V
:cond_35
add-int/lit8 v0, v0, 0x1
goto :goto_24
:cond_38
iget v4, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
mul-int/lit8 v4, v4, 0x2
add-int/lit8 v4, v4, 0x1
iput v4, p0, Lcom/ibm/icu/impl/CalendarCache;->arraySize:I
goto :goto_1b
:cond_41
const/4 v3, 0x0
move-object v1, v3
return-void
.end method
.method public declared-synchronized get(J)J
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/CalendarCache;->findIndex(J)I
move-result v1
aget-wide v0, v0, v1
:try_end_9
.catchall {:try_start_1 .. :try_end_9} :catchall_b
monitor-exit p0
return-wide v0
:catchall_b
move-exception v0
monitor-exit p0
throw v0
.end method
.method public declared-synchronized put(JJ)V
.registers 8
monitor-enter p0
:try_start_1
iget v1, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I
iget v2, p0, Lcom/ibm/icu/impl/CalendarCache;->threshold:I
if-lt v1, v2, :cond_a
invoke-direct {p0}, Lcom/ibm/icu/impl/CalendarCache;->rehash()V
:cond_a
invoke-direct {p0, p1, p2}, Lcom/ibm/icu/impl/CalendarCache;->findIndex(J)I
move-result v0
iget-object v1, p0, Lcom/ibm/icu/impl/CalendarCache;->keys:[J
aput-wide p1, v1, v0
iget-object v1, p0, Lcom/ibm/icu/impl/CalendarCache;->values:[J
aput-wide p3, v1, v0
iget v1, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/ibm/icu/impl/CalendarCache;->size:I
:try_end_1c
.catchall {:try_start_1 .. :try_end_1c} :catchall_1e
monitor-exit p0
return-void
:catchall_1e
move-exception v1
monitor-exit p0
throw v1
.end method