.class public final Lcom/fasterxml/jackson/a/b/d;
.super Ljava/lang/Enum;
.source "MatchStrength.java"
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
sput v3, Lcom/fasterxml/jackson/a/b/d;->a:I
sput v4, Lcom/fasterxml/jackson/a/b/d;->b:I
sput v5, Lcom/fasterxml/jackson/a/b/d;->c:I
sput v6, Lcom/fasterxml/jackson/a/b/d;->d:I
sput v0, Lcom/fasterxml/jackson/a/b/d;->e:I
new-array v0, v0, [I
const/4 v1, 0x0
sget v2, Lcom/fasterxml/jackson/a/b/d;->a:I
aput v2, v0, v1
sget v1, Lcom/fasterxml/jackson/a/b/d;->b:I
aput v1, v0, v3
sget v1, Lcom/fasterxml/jackson/a/b/d;->c:I
aput v1, v0, v4
sget v1, Lcom/fasterxml/jackson/a/b/d;->d:I
aput v1, v0, v5
sget v1, Lcom/fasterxml/jackson/a/b/d;->e:I
aput v1, v0, v6
sput-object v0, Lcom/fasterxml/jackson/a/b/d;->f:[I
return-void
.end method