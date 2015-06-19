.class public final enum Lcom/bbm/util/e/b;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"
.field public static final enum a:Lcom/bbm/util/e/b;
.field public static final enum b:Lcom/bbm/util/e/b;
.field public static final enum c:Lcom/bbm/util/e/b;
.field private static final synthetic d:[Lcom/bbm/util/e/b;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/util/e/b;
const-string v1, "PREVIEW"
invoke-direct {v0, v1, v2}, Lcom/bbm/util/e/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/e/b;->a:Lcom/bbm/util/e/b;
new-instance v0, Lcom/bbm/util/e/b;
const-string v1, "SUCCESS"
invoke-direct {v0, v1, v3}, Lcom/bbm/util/e/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/e/b;->b:Lcom/bbm/util/e/b;
new-instance v0, Lcom/bbm/util/e/b;
const-string v1, "DONE"
invoke-direct {v0, v1, v4}, Lcom/bbm/util/e/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/util/e/b;->c:Lcom/bbm/util/e/b;
const/4 v0, 0x3
new-array v0, v0, [Lcom/bbm/util/e/b;
sget-object v1, Lcom/bbm/util/e/b;->a:Lcom/bbm/util/e/b;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/util/e/b;->b:Lcom/bbm/util/e/b;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/util/e/b;->c:Lcom/bbm/util/e/b;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/util/e/b;->d:[Lcom/bbm/util/e/b;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/util/e/b;
.registers 2
const-class v0, Lcom/bbm/util/e/b;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/util/e/b;
return-object v0
.end method
.method public static values()[Lcom/bbm/util/e/b;
.registers 1
sget-object v0, Lcom/bbm/util/e/b;->d:[Lcom/bbm/util/e/b;
invoke-virtual {v0}, [Lcom/bbm/util/e/b;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/util/e/b;
return-object v0
.end method