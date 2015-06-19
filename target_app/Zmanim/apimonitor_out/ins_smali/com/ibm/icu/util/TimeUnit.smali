.class public Lcom/ibm/icu/util/TimeUnit;
.super Lcom/ibm/icu/util/MeasureUnit;
.source "TimeUnit.java"
.field public static DAY:Lcom/ibm/icu/util/TimeUnit;
.field public static HOUR:Lcom/ibm/icu/util/TimeUnit;
.field public static MINUTE:Lcom/ibm/icu/util/TimeUnit;
.field public static MONTH:Lcom/ibm/icu/util/TimeUnit;
.field public static SECOND:Lcom/ibm/icu/util/TimeUnit;
.field public static WEEK:Lcom/ibm/icu/util/TimeUnit;
.field public static YEAR:Lcom/ibm/icu/util/TimeUnit;
.field private static valueCount:I
.field private static values:[Lcom/ibm/icu/util/TimeUnit;
.field private name:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
const/4 v0, 0x7
new-array v0, v0, [Lcom/ibm/icu/util/TimeUnit;
sput-object v0, Lcom/ibm/icu/util/TimeUnit;->values:[Lcom/ibm/icu/util/TimeUnit;
const/4 v0, 0x0
sput v0, Lcom/ibm/icu/util/TimeUnit;->valueCount:I
new-instance v0, Lcom/ibm/icu/util/TimeUnit;
const-string v1, "second"
invoke-direct {v0, v1}, Lcom/ibm/icu/util/TimeUnit;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/TimeUnit;->SECOND:Lcom/ibm/icu/util/TimeUnit;
new-instance v0, Lcom/ibm/icu/util/TimeUnit;
const-string v1, "minute"
invoke-direct {v0, v1}, Lcom/ibm/icu/util/TimeUnit;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/TimeUnit;->MINUTE:Lcom/ibm/icu/util/TimeUnit;
new-instance v0, Lcom/ibm/icu/util/TimeUnit;
const-string v1, "hour"
invoke-direct {v0, v1}, Lcom/ibm/icu/util/TimeUnit;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/TimeUnit;->HOUR:Lcom/ibm/icu/util/TimeUnit;
new-instance v0, Lcom/ibm/icu/util/TimeUnit;
const-string v1, "day"
invoke-direct {v0, v1}, Lcom/ibm/icu/util/TimeUnit;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/TimeUnit;->DAY:Lcom/ibm/icu/util/TimeUnit;
new-instance v0, Lcom/ibm/icu/util/TimeUnit;
const-string v1, "week"
invoke-direct {v0, v1}, Lcom/ibm/icu/util/TimeUnit;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/TimeUnit;->WEEK:Lcom/ibm/icu/util/TimeUnit;
new-instance v0, Lcom/ibm/icu/util/TimeUnit;
const-string v1, "month"
invoke-direct {v0, v1}, Lcom/ibm/icu/util/TimeUnit;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/TimeUnit;->MONTH:Lcom/ibm/icu/util/TimeUnit;
new-instance v0, Lcom/ibm/icu/util/TimeUnit;
const-string v1, "year"
invoke-direct {v0, v1}, Lcom/ibm/icu/util/TimeUnit;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/ibm/icu/util/TimeUnit;->YEAR:Lcom/ibm/icu/util/TimeUnit;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Lcom/ibm/icu/util/MeasureUnit;-><init>()V
iput-object p1, p0, Lcom/ibm/icu/util/TimeUnit;->name:Ljava/lang/String;
sget-object v0, Lcom/ibm/icu/util/TimeUnit;->values:[Lcom/ibm/icu/util/TimeUnit;
sget v1, Lcom/ibm/icu/util/TimeUnit;->valueCount:I
add-int/lit8 v2, v1, 0x1
sput v2, Lcom/ibm/icu/util/TimeUnit;->valueCount:I
aput-object p0, v0, v1
return-void
.end method
.method public static values()[Lcom/ibm/icu/util/TimeUnit;
.registers 1
sget-object v0, Lcom/ibm/icu/util/TimeUnit;->values:[Lcom/ibm/icu/util/TimeUnit;
invoke-virtual {v0}, [Lcom/ibm/icu/util/TimeUnit;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/ibm/icu/util/TimeUnit;
check-cast v0, [Lcom/ibm/icu/util/TimeUnit;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/ibm/icu/util/TimeUnit;->name:Ljava/lang/String;
return-object v0
.end method