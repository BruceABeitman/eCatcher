.class public final Lcom/instagram/common/analytics/an;
.super Ljava/lang/Enum;
.source "TimeSpentBitArray.java"
.field public static final enum a:I
.field public static final enum b:I
.field public static final enum c:I
.field public static final enum d:I
.field public static final enum e:I
.field public static final enum f:I
.field private static final synthetic g:[I
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x5
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
sput v3, Lcom/instagram/common/analytics/an;->a:I
sput v4, Lcom/instagram/common/analytics/an;->b:I
sput v5, Lcom/instagram/common/analytics/an;->c:I
sput v6, Lcom/instagram/common/analytics/an;->d:I
sput v7, Lcom/instagram/common/analytics/an;->e:I
const/4 v0, 0x6
sput v0, Lcom/instagram/common/analytics/an;->f:I
const/4 v0, 0x6
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Lcom/instagram/common/analytics/an;->a:I
aput v2, v0, v1
sget v1, Lcom/instagram/common/analytics/an;->b:I
aput v1, v0, v3
sget v1, Lcom/instagram/common/analytics/an;->c:I
aput v1, v0, v4
sget v1, Lcom/instagram/common/analytics/an;->d:I
aput v1, v0, v5
sget v1, Lcom/instagram/common/analytics/an;->e:I
aput v1, v0, v6
sget v1, Lcom/instagram/common/analytics/an;->f:I
aput v1, v0, v7
sput-object v0, Lcom/instagram/common/analytics/an;->g:[I
return-void
.end method
.method public static a()[I
.registers 1
sget-object v0, Lcom/instagram/common/analytics/an;->g:[I
invoke-virtual {v0}, [I->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
return-object v0
.end method