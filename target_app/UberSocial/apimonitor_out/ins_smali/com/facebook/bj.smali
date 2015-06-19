.class public final enum Lcom/facebook/bj;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/bj;
.field public static final enum b:Lcom/facebook/bj;
.field public static final enum c:Lcom/facebook/bj;
.field private static final synthetic f:[Lcom/facebook/bj;
.field private final d:Z
.field private final e:Z
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x0
const/4 v2, 0x1
new-instance v0, Lcom/facebook/bj;
const-string v1, "SSO_WITH_FALLBACK"
invoke-direct {v0, v1, v3, v2, v2}, Lcom/facebook/bj;-><init>(Ljava/lang/String;IZZ)V
sput-object v0, Lcom/facebook/bj;->a:Lcom/facebook/bj;
new-instance v0, Lcom/facebook/bj;
const-string v1, "SSO_ONLY"
invoke-direct {v0, v1, v2, v2, v3}, Lcom/facebook/bj;-><init>(Ljava/lang/String;IZZ)V
sput-object v0, Lcom/facebook/bj;->b:Lcom/facebook/bj;
new-instance v0, Lcom/facebook/bj;
const-string v1, "SUPPRESS_SSO"
invoke-direct {v0, v1, v4, v3, v2}, Lcom/facebook/bj;-><init>(Ljava/lang/String;IZZ)V
sput-object v0, Lcom/facebook/bj;->c:Lcom/facebook/bj;
const/4 v0, 0x3
new-array v0, v0, [Lcom/facebook/bj;
sget-object v1, Lcom/facebook/bj;->a:Lcom/facebook/bj;
aput-object v1, v0, v3
sget-object v1, Lcom/facebook/bj;->b:Lcom/facebook/bj;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/bj;->c:Lcom/facebook/bj;
aput-object v1, v0, v4
sput-object v0, Lcom/facebook/bj;->f:[Lcom/facebook/bj;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;IZZ)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-boolean p3, p0, Lcom/facebook/bj;->d:Z
iput-boolean p4, p0, Lcom/facebook/bj;->e:Z
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/bj;
.registers 2
const-class v0, Lcom/facebook/bj;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/bj;
return-object v0
.end method
.method public static values()[Lcom/facebook/bj;
.registers 1
sget-object v0, Lcom/facebook/bj;->f:[Lcom/facebook/bj;
invoke-virtual {v0}, [Lcom/facebook/bj;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/bj;
return-object v0
.end method
.method  a()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/bj;->d:Z
return v0
.end method
.method  b()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/bj;->e:Z
return v0
.end method