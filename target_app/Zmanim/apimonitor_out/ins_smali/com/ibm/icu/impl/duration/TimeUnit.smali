.class public final Lcom/ibm/icu/impl/duration/TimeUnit;
.super Ljava/lang/Object;
.source "TimeUnit.java"
.field public static final DAY:Lcom/ibm/icu/impl/duration/TimeUnit;
.field public static final HOUR:Lcom/ibm/icu/impl/duration/TimeUnit;
.field public static final MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;
.field public static final MINUTE:Lcom/ibm/icu/impl/duration/TimeUnit;
.field public static final MONTH:Lcom/ibm/icu/impl/duration/TimeUnit;
.field public static final SECOND:Lcom/ibm/icu/impl/duration/TimeUnit;
.field public static final WEEK:Lcom/ibm/icu/impl/duration/TimeUnit;
.field public static final YEAR:Lcom/ibm/icu/impl/duration/TimeUnit;
.field static final approxDurations:[J
.field static final units:[Lcom/ibm/icu/impl/duration/TimeUnit;
.field final name:Ljava/lang/String;
.field final ordinal:B
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/ibm/icu/impl/duration/TimeUnit;
const-string v1, "year"
invoke-direct {v0, v1, v3}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->YEAR:Lcom/ibm/icu/impl/duration/TimeUnit;
new-instance v0, Lcom/ibm/icu/impl/duration/TimeUnit;
const-string v1, "month"
invoke-direct {v0, v1, v4}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->MONTH:Lcom/ibm/icu/impl/duration/TimeUnit;
new-instance v0, Lcom/ibm/icu/impl/duration/TimeUnit;
const-string v1, "week"
invoke-direct {v0, v1, v5}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->WEEK:Lcom/ibm/icu/impl/duration/TimeUnit;
new-instance v0, Lcom/ibm/icu/impl/duration/TimeUnit;
const-string v1, "day"
invoke-direct {v0, v1, v6}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->DAY:Lcom/ibm/icu/impl/duration/TimeUnit;
new-instance v0, Lcom/ibm/icu/impl/duration/TimeUnit;
const-string v1, "hour"
invoke-direct {v0, v1, v7}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->HOUR:Lcom/ibm/icu/impl/duration/TimeUnit;
new-instance v0, Lcom/ibm/icu/impl/duration/TimeUnit;
const-string v1, "minute"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->MINUTE:Lcom/ibm/icu/impl/duration/TimeUnit;
new-instance v0, Lcom/ibm/icu/impl/duration/TimeUnit;
const-string v1, "second"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->SECOND:Lcom/ibm/icu/impl/duration/TimeUnit;
new-instance v0, Lcom/ibm/icu/impl/duration/TimeUnit;
const-string v1, "millisecond"
const/4 v2, 0x7
invoke-direct {v0, v1, v2}, Lcom/ibm/icu/impl/duration/TimeUnit;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;
const/16 v0, 0x8
new-array v0, v0, [Lcom/ibm/icu/impl/duration/TimeUnit;
sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->YEAR:Lcom/ibm/icu/impl/duration/TimeUnit;
aput-object v1, v0, v3
sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->MONTH:Lcom/ibm/icu/impl/duration/TimeUnit;
aput-object v1, v0, v4
sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->WEEK:Lcom/ibm/icu/impl/duration/TimeUnit;
aput-object v1, v0, v5
sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->DAY:Lcom/ibm/icu/impl/duration/TimeUnit;
aput-object v1, v0, v6
sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->HOUR:Lcom/ibm/icu/impl/duration/TimeUnit;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/ibm/icu/impl/duration/TimeUnit;->MINUTE:Lcom/ibm/icu/impl/duration/TimeUnit;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/ibm/icu/impl/duration/TimeUnit;->SECOND:Lcom/ibm/icu/impl/duration/TimeUnit;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Lcom/ibm/icu/impl/duration/TimeUnit;->MILLISECOND:Lcom/ibm/icu/impl/duration/TimeUnit;
aput-object v2, v0, v1
sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;
const/16 v0, 0x8
new-array v0, v0, [J
fill-array-data v0, :array_84
sput-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->approxDurations:[J
return-void
nop
:array_84
.array-data 0x8
0x0t 0xc3t 0xfat 0x58t 0x7t 0x0t 0x0t 0x0t
0x0t 0xbt 0xd0t 0x9ct 0x0t 0x0t 0x0t 0x0t
0x0t 0x84t 0xct 0x24t 0x0t 0x0t 0x0t 0x0t
0x0t 0x5ct 0x26t 0x5t 0x0t 0x0t 0x0t 0x0t
0x80t 0xeet 0x36t 0x0t 0x0t 0x0t 0x0t 0x0t
0x60t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;
int-to-byte v0, p2
iput-byte v0, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B
return-void
.end method
.method public larger()Lcom/ibm/icu/impl/duration/TimeUnit;
.registers 4
iget-byte v0, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
sget-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;
iget-byte v1, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B
const/4 v2, 0x1
sub-int/2addr v1, v2
aget-object v0, v0, v1
goto :goto_5
.end method
.method public ordinal()I
.registers 2
iget-byte v0, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B
return v0
.end method
.method public smaller()Lcom/ibm/icu/impl/duration/TimeUnit;
.registers 4
iget-byte v0, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B
sget-object v1, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;
array-length v1, v1
const/4 v2, 0x1
sub-int/2addr v1, v2
if-ne v0, v1, :cond_b
const/4 v0, 0x0
:goto_a
return-object v0
:cond_b
sget-object v0, Lcom/ibm/icu/impl/duration/TimeUnit;->units:[Lcom/ibm/icu/impl/duration/TimeUnit;
iget-byte v1, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->ordinal:B
add-int/lit8 v1, v1, 0x1
aget-object v0, v0, v1
goto :goto_a
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/impl/duration/TimeUnit;->name:Ljava/lang/String;
return-object v0
.end method