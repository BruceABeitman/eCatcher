.class final Lcom/facebook/f/a/e;
.super Ljava/lang/Enum;
.source "AdvancedDragDetector.java"
.field public static final enum a:I
.field public static final enum b:I
.field public static final enum c:I
.field public static final enum d:I
.field private static final synthetic e:[I
.method static constructor <clinit>()V
.registers 6
const/4 v0, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
sput v3, Lcom/facebook/f/a/e;->a:I
sput v4, Lcom/facebook/f/a/e;->b:I
sput v5, Lcom/facebook/f/a/e;->c:I
sput v0, Lcom/facebook/f/a/e;->d:I
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Lcom/facebook/f/a/e;->a:I
aput v2, v0, v1
sget v1, Lcom/facebook/f/a/e;->b:I
aput v1, v0, v3
sget v1, Lcom/facebook/f/a/e;->c:I
aput v1, v0, v4
sget v1, Lcom/facebook/f/a/e;->d:I
aput v1, v0, v5
sput-object v0, Lcom/facebook/f/a/e;->e:[I
return-void
.end method
.method public static a()[I
.registers 1
sget-object v0, Lcom/facebook/f/a/e;->e:[I
invoke-virtual {v0}, [I->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [I
return-object v0
.end method