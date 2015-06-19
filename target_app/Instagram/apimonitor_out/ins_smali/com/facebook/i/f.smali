.class public final Lcom/facebook/i/f;
.super Ljava/lang/Enum;
.source "PhoneNumberUtil.java"
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
sput v3, Lcom/facebook/i/f;->a:I
sput v4, Lcom/facebook/i/f;->b:I
sput v5, Lcom/facebook/i/f;->c:I
sput v0, Lcom/facebook/i/f;->d:I
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Lcom/facebook/i/f;->a:I
aput v2, v0, v1
sget v1, Lcom/facebook/i/f;->b:I
aput v1, v0, v3
sget v1, Lcom/facebook/i/f;->c:I
aput v1, v0, v4
sget v1, Lcom/facebook/i/f;->d:I
aput v1, v0, v5
sput-object v0, Lcom/facebook/i/f;->e:[I
return-void
.end method