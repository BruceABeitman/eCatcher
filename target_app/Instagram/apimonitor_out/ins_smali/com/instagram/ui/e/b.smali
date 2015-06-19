.class public final Lcom/instagram/ui/e/b;
.super Ljava/lang/Enum;
.source "UIComponentStateTracker.java"
.field public static final enum a:I
.field public static final enum b:I
.field public static final enum c:I
.field public static final enum d:I
.field public static final enum e:I
.field private static final synthetic f:[I
.method static constructor <clinit>()V
.registers 7
const/4 v0, 0x5
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
sput v3, Lcom/instagram/ui/e/b;->a:I
sput v4, Lcom/instagram/ui/e/b;->b:I
sput v5, Lcom/instagram/ui/e/b;->c:I
sput v6, Lcom/instagram/ui/e/b;->d:I
sput v0, Lcom/instagram/ui/e/b;->e:I
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Lcom/instagram/ui/e/b;->a:I
aput v2, v0, v1
sget v1, Lcom/instagram/ui/e/b;->b:I
aput v1, v0, v3
sget v1, Lcom/instagram/ui/e/b;->c:I
aput v1, v0, v4
sget v1, Lcom/instagram/ui/e/b;->d:I
aput v1, v0, v5
sget v1, Lcom/instagram/ui/e/b;->e:I
aput v1, v0, v6
sput-object v0, Lcom/instagram/ui/e/b;->f:[I
return-void
.end method