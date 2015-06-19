.class public final Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
.super Ljava/lang/Object;
.source "LocaleData.java"
.field public static final SI:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
.field public static final US:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
.field private systemID:I
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;-><init>(I)V
sput-object v0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->SI:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
new-instance v0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
const/4 v1, 0x1
invoke-direct {v0, v1}, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;-><init>(I)V
sput-object v0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->US:Lcom/ibm/icu/util/LocaleData$MeasurementSystem;
return-void
.end method
.method private constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->systemID:I
return-void
.end method
.method static synthetic access$000(Lcom/ibm/icu/util/LocaleData$MeasurementSystem;I)Z
.registers 3
invoke-direct {p0, p1}, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->equals(I)Z
move-result v0
return v0
.end method
.method private equals(I)Z
.registers 3
iget v0, p0, Lcom/ibm/icu/util/LocaleData$MeasurementSystem;->systemID:I
if-ne v0, p1, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method