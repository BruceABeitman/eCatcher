.class public final enum Lcom/instagram/common/o/b;
.super Ljava/lang/Enum;
.source "BuildInfoUtil.java"
.field public static final enum a:Lcom/instagram/common/o/b;
.field public static final enum b:Lcom/instagram/common/o/b;
.field public static final enum c:Lcom/instagram/common/o/b;
.field private static final synthetic d:[Lcom/instagram/common/o/b;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/instagram/common/o/b;
const-string v1, "DEBUG"
invoke-direct {v0, v1, v2}, Lcom/instagram/common/o/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/common/o/b;->a:Lcom/instagram/common/o/b;
new-instance v0, Lcom/instagram/common/o/b;
const-string v1, "INHOUSE"
invoke-direct {v0, v1, v3}, Lcom/instagram/common/o/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/common/o/b;->b:Lcom/instagram/common/o/b;
new-instance v0, Lcom/instagram/common/o/b;
const-string v1, "PROD"
invoke-direct {v0, v1, v4}, Lcom/instagram/common/o/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/common/o/b;->c:Lcom/instagram/common/o/b;
const/4 v0, 0x3
new-array v0, v0, [Lcom/instagram/common/o/b;
sget-object v1, Lcom/instagram/common/o/b;->a:Lcom/instagram/common/o/b;
aput-object v1, v0, v2
sget-object v1, Lcom/instagram/common/o/b;->b:Lcom/instagram/common/o/b;
aput-object v1, v0, v3
sget-object v1, Lcom/instagram/common/o/b;->c:Lcom/instagram/common/o/b;
aput-object v1, v0, v4
sput-object v0, Lcom/instagram/common/o/b;->d:[Lcom/instagram/common/o/b;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/common/o/b;
.registers 2
const-class v0, Lcom/instagram/common/o/b;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/common/o/b;
return-object v0
.end method
.method public static values()[Lcom/instagram/common/o/b;
.registers 1
sget-object v0, Lcom/instagram/common/o/b;->d:[Lcom/instagram/common/o/b;
invoke-virtual {v0}, [Lcom/instagram/common/o/b;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/common/o/b;
return-object v0
.end method