.class public final enum Lcom/bbm/d/dv;
.super Ljava/lang/Enum;
.source "BbmdsProtocol.java"
.field public static final enum a:Lcom/bbm/d/dv;
.field public static final enum b:Lcom/bbm/d/dv;
.field private static final synthetic d:[Lcom/bbm/d/dv;
.field private final c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/bbm/d/dv;
const-string v1, "Visible"
const-string v2, "Visible"
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/d/dv;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/dv;->a:Lcom/bbm/d/dv;
new-instance v0, Lcom/bbm/d/dv;
const-string v1, "Unspecified"
const-string v2, ""
invoke-direct {v0, v1, v4, v2}, Lcom/bbm/d/dv;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/bbm/d/dv;->b:Lcom/bbm/d/dv;
const/4 v0, 0x2
new-array v0, v0, [Lcom/bbm/d/dv;
sget-object v1, Lcom/bbm/d/dv;->a:Lcom/bbm/d/dv;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/d/dv;->b:Lcom/bbm/d/dv;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/d/dv;->d:[Lcom/bbm/d/dv;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/bbm/d/dv;->c:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/d/dv;
.registers 2
const-class v0, Lcom/bbm/d/dv;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/d/dv;
return-object v0
.end method
.method public static values()[Lcom/bbm/d/dv;
.registers 1
sget-object v0, Lcom/bbm/d/dv;->d:[Lcom/bbm/d/dv;
invoke-virtual {v0}, [Lcom/bbm/d/dv;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/d/dv;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/d/dv;->c:Ljava/lang/String;
return-object v0
.end method