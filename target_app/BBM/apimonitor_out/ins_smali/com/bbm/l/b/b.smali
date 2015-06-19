.class public final enum Lcom/bbm/l/b/b;
.super Ljava/lang/Enum;
.source "EnabledCarrierInfo.java"
.field public static final enum a:Lcom/bbm/l/b/b;
.field public static final enum b:Lcom/bbm/l/b/b;
.field public static final enum c:Lcom/bbm/l/b/b;
.field private static final synthetic d:[Lcom/bbm/l/b/b;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/l/b/b;
const-string v1, "UNKW"
invoke-direct {v0, v1, v2}, Lcom/bbm/l/b/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/l/b/b;->a:Lcom/bbm/l/b/b;
new-instance v0, Lcom/bbm/l/b/b;
const-string v1, "GOOG"
invoke-direct {v0, v1, v3}, Lcom/bbm/l/b/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/l/b/b;->b:Lcom/bbm/l/b/b;
new-instance v0, Lcom/bbm/l/b/b;
const-string v1, "AMZN"
invoke-direct {v0, v1, v4}, Lcom/bbm/l/b/b;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/l/b/b;->c:Lcom/bbm/l/b/b;
const/4 v0, 0x3
new-array v0, v0, [Lcom/bbm/l/b/b;
sget-object v1, Lcom/bbm/l/b/b;->a:Lcom/bbm/l/b/b;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/l/b/b;->b:Lcom/bbm/l/b/b;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/l/b/b;->c:Lcom/bbm/l/b/b;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/l/b/b;->d:[Lcom/bbm/l/b/b;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static a(Ljava/lang/String;)Lcom/bbm/l/b/b;
.registers 2
const-string v0, "GOOG"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
sget-object v0, Lcom/bbm/l/b/b;->b:Lcom/bbm/l/b/b;
:goto_a
return-object v0
:cond_b
const-string v0, "AMZN"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
sget-object v0, Lcom/bbm/l/b/b;->c:Lcom/bbm/l/b/b;
goto :goto_a
:cond_16
sget-object v0, Lcom/bbm/l/b/b;->a:Lcom/bbm/l/b/b;
goto :goto_a
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/l/b/b;
.registers 2
const-class v0, Lcom/bbm/l/b/b;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/l/b/b;
return-object v0
.end method
.method public static values()[Lcom/bbm/l/b/b;
.registers 1
sget-object v0, Lcom/bbm/l/b/b;->d:[Lcom/bbm/l/b/b;
invoke-virtual {v0}, [Lcom/bbm/l/b/b;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/l/b/b;
return-object v0
.end method