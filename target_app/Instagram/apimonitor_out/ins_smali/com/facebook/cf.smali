.class public final enum Lcom/facebook/cf;
.super Ljava/lang/Enum;
.source "SessionDefaultAudience.java"
.field public static final enum a:Lcom/facebook/cf;
.field public static final enum b:Lcom/facebook/cf;
.field public static final enum c:Lcom/facebook/cf;
.field public static final enum d:Lcom/facebook/cf;
.field private static final synthetic f:[Lcom/facebook/cf;
.field private final e:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/facebook/cf;
const-string v1, "NONE"
const/4 v2, 0x0
invoke-direct {v0, v1, v3, v2}, Lcom/facebook/cf;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/facebook/cf;->a:Lcom/facebook/cf;
new-instance v0, Lcom/facebook/cf;
const-string v1, "ONLY_ME"
const-string v2, "SELF"
invoke-direct {v0, v1, v4, v2}, Lcom/facebook/cf;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/facebook/cf;->b:Lcom/facebook/cf;
new-instance v0, Lcom/facebook/cf;
const-string v1, "FRIENDS"
const-string v2, "ALL_FRIENDS"
invoke-direct {v0, v1, v5, v2}, Lcom/facebook/cf;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/facebook/cf;->c:Lcom/facebook/cf;
new-instance v0, Lcom/facebook/cf;
const-string v1, "EVERYONE"
const-string v2, "EVERYONE"
invoke-direct {v0, v1, v6, v2}, Lcom/facebook/cf;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/facebook/cf;->d:Lcom/facebook/cf;
const/4 v0, 0x4
new-array v0, v0, [Lcom/facebook/cf;
sget-object v1, Lcom/facebook/cf;->a:Lcom/facebook/cf;
aput-object v1, v0, v3
sget-object v1, Lcom/facebook/cf;->b:Lcom/facebook/cf;
aput-object v1, v0, v4
sget-object v1, Lcom/facebook/cf;->c:Lcom/facebook/cf;
aput-object v1, v0, v5
sget-object v1, Lcom/facebook/cf;->d:Lcom/facebook/cf;
aput-object v1, v0, v6
sput-object v0, Lcom/facebook/cf;->f:[Lcom/facebook/cf;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/facebook/cf;->e:Ljava/lang/String;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/cf;
.registers 2
const-class v0, Lcom/facebook/cf;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/cf;
return-object v0
.end method
.method public static values()[Lcom/facebook/cf;
.registers 1
sget-object v0, Lcom/facebook/cf;->f:[Lcom/facebook/cf;
invoke-virtual {v0}, [Lcom/facebook/cf;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/cf;
return-object v0
.end method
.method final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/cf;->e:Ljava/lang/String;
return-object v0
.end method