.class public final enum Lcom/tencent/stat/StatReportStrategy;
.super Ljava/lang/Enum;
.field public static final enum APP_LAUNCH:Lcom/tencent/stat/StatReportStrategy;
.field public static final enum BATCH:Lcom/tencent/stat/StatReportStrategy;
.field public static final enum DEVELOPER:Lcom/tencent/stat/StatReportStrategy;
.field public static final enum INSTANT:Lcom/tencent/stat/StatReportStrategy;
.field public static final enum ONLY_WIFI:Lcom/tencent/stat/StatReportStrategy;
.field public static final enum ONLY_WIFI_NO_CACHE:Lcom/tencent/stat/StatReportStrategy;
.field public static final enum PERIOD:Lcom/tencent/stat/StatReportStrategy;
.field private static final synthetic b:[Lcom/tencent/stat/StatReportStrategy;
.field  a:I
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x5
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
new-instance v0, Lcom/tencent/stat/StatReportStrategy;
const-string/jumbo v1, "INSTANT"
const/4 v2, 0x0
invoke-direct {v0, v1, v2, v4}, Lcom/tencent/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/tencent/stat/StatReportStrategy;->INSTANT:Lcom/tencent/stat/StatReportStrategy;
new-instance v0, Lcom/tencent/stat/StatReportStrategy;
const-string/jumbo v1, "ONLY_WIFI"
invoke-direct {v0, v1, v4, v5}, Lcom/tencent/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/tencent/stat/StatReportStrategy;->ONLY_WIFI:Lcom/tencent/stat/StatReportStrategy;
new-instance v0, Lcom/tencent/stat/StatReportStrategy;
const-string/jumbo v1, "BATCH"
invoke-direct {v0, v1, v5, v6}, Lcom/tencent/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/tencent/stat/StatReportStrategy;->BATCH:Lcom/tencent/stat/StatReportStrategy;
new-instance v0, Lcom/tencent/stat/StatReportStrategy;
const-string/jumbo v1, "APP_LAUNCH"
invoke-direct {v0, v1, v6, v7}, Lcom/tencent/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/tencent/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/stat/StatReportStrategy;
new-instance v0, Lcom/tencent/stat/StatReportStrategy;
const-string/jumbo v1, "DEVELOPER"
invoke-direct {v0, v1, v7, v8}, Lcom/tencent/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/tencent/stat/StatReportStrategy;->DEVELOPER:Lcom/tencent/stat/StatReportStrategy;
new-instance v0, Lcom/tencent/stat/StatReportStrategy;
const-string/jumbo v1, "PERIOD"
const/4 v2, 0x6
invoke-direct {v0, v1, v8, v2}, Lcom/tencent/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/tencent/stat/StatReportStrategy;->PERIOD:Lcom/tencent/stat/StatReportStrategy;
new-instance v0, Lcom/tencent/stat/StatReportStrategy;
const-string/jumbo v1, "ONLY_WIFI_NO_CACHE"
const/4 v2, 0x6
const/4 v3, 0x7
invoke-direct {v0, v1, v2, v3}, Lcom/tencent/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V
sput-object v0, Lcom/tencent/stat/StatReportStrategy;->ONLY_WIFI_NO_CACHE:Lcom/tencent/stat/StatReportStrategy;
const/4 v0, 0x7
new-array v0, v0, [Lcom/tencent/stat/StatReportStrategy;
const/4 v1, 0x0
sget-object v2, Lcom/tencent/stat/StatReportStrategy;->INSTANT:Lcom/tencent/stat/StatReportStrategy;
aput-object v2, v0, v1
sget-object v1, Lcom/tencent/stat/StatReportStrategy;->ONLY_WIFI:Lcom/tencent/stat/StatReportStrategy;
aput-object v1, v0, v4
sget-object v1, Lcom/tencent/stat/StatReportStrategy;->BATCH:Lcom/tencent/stat/StatReportStrategy;
aput-object v1, v0, v5
sget-object v1, Lcom/tencent/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/stat/StatReportStrategy;
aput-object v1, v0, v6
sget-object v1, Lcom/tencent/stat/StatReportStrategy;->DEVELOPER:Lcom/tencent/stat/StatReportStrategy;
aput-object v1, v0, v7
sget-object v1, Lcom/tencent/stat/StatReportStrategy;->PERIOD:Lcom/tencent/stat/StatReportStrategy;
aput-object v1, v0, v8
const/4 v1, 0x6
sget-object v2, Lcom/tencent/stat/StatReportStrategy;->ONLY_WIFI_NO_CACHE:Lcom/tencent/stat/StatReportStrategy;
aput-object v2, v0, v1
sput-object v0, Lcom/tencent/stat/StatReportStrategy;->b:[Lcom/tencent/stat/StatReportStrategy;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;II)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput p3, p0, Lcom/tencent/stat/StatReportStrategy;->a:I
return-void
.end method
.method public static getStatReportStrategy(I)Lcom/tencent/stat/StatReportStrategy;
.registers 6
invoke-static {}, Lcom/tencent/stat/StatReportStrategy;->values()[Lcom/tencent/stat/StatReportStrategy;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_7
if-ge v1, v3, :cond_16
aget-object v0, v2, v1
invoke-virtual {v0}, Lcom/tencent/stat/StatReportStrategy;->a()I
move-result v4
if-ne p0, v4, :cond_12
:goto_11
return-object v0
:cond_12
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_16
const/4 v0, 0x0
goto :goto_11
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/tencent/stat/StatReportStrategy;
.registers 2
const-class v0, Lcom/tencent/stat/StatReportStrategy;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/tencent/stat/StatReportStrategy;
return-object v0
.end method
.method public static values()[Lcom/tencent/stat/StatReportStrategy;
.registers 1
sget-object v0, Lcom/tencent/stat/StatReportStrategy;->b:[Lcom/tencent/stat/StatReportStrategy;
invoke-virtual {v0}, [Lcom/tencent/stat/StatReportStrategy;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/tencent/stat/StatReportStrategy;
return-object v0
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/tencent/stat/StatReportStrategy;->a:I
return v0
.end method