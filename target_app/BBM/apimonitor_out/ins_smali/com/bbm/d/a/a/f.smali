.class public final enum Lcom/bbm/d/a/a/f;
.super Ljava/lang/Enum;
.source "LiveList.java"
.field public static final enum a:Lcom/bbm/d/a/a/f;
.field public static final enum b:Lcom/bbm/d/a/a/f;
.field public static final enum c:Lcom/bbm/d/a/a/f;
.field private static final synthetic d:[Lcom/bbm/d/a/a/f;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/d/a/a/f;
const-string v1, "IGNORE"
invoke-direct {v0, v1, v2}, Lcom/bbm/d/a/a/f;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/d/a/a/f;->a:Lcom/bbm/d/a/a/f;
new-instance v0, Lcom/bbm/d/a/a/f;
const-string v1, "REPLACE_ALL"
invoke-direct {v0, v1, v3}, Lcom/bbm/d/a/a/f;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/d/a/a/f;->b:Lcom/bbm/d/a/a/f;
new-instance v0, Lcom/bbm/d/a/a/f;
const-string v1, "REPLACE_ELEMENTS"
invoke-direct {v0, v1, v4}, Lcom/bbm/d/a/a/f;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/d/a/a/f;->c:Lcom/bbm/d/a/a/f;
const/4 v0, 0x3
new-array v0, v0, [Lcom/bbm/d/a/a/f;
sget-object v1, Lcom/bbm/d/a/a/f;->a:Lcom/bbm/d/a/a/f;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/d/a/a/f;->b:Lcom/bbm/d/a/a/f;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/d/a/a/f;->c:Lcom/bbm/d/a/a/f;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/d/a/a/f;->d:[Lcom/bbm/d/a/a/f;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/a/a/f;
.registers 2
const-class v0, Lcom/bbm/d/a/a/f;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a/f;
return-object v0
.end method
.method public static values()[Lcom/bbm/d/a/a/f;
.registers 1
sget-object v0, Lcom/bbm/d/a/a/f;->d:[Lcom/bbm/d/a/a/f;
invoke-virtual {v0}, [Lcom/bbm/d/a/a/f;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/d/a/a/f;
return-object v0
.end method