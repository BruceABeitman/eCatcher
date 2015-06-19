.class public final enum Lcom/facebook/internal/SessionAuthorizationType;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/internal/SessionAuthorizationType;
.field public static final enum b:Lcom/facebook/internal/SessionAuthorizationType;
.field private static final synthetic c:[Lcom/facebook/internal/SessionAuthorizationType;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/facebook/internal/SessionAuthorizationType;
const-string v1, "READ"
invoke-direct {v0, v1, v2}, Lcom/facebook/internal/SessionAuthorizationType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/internal/SessionAuthorizationType;->a:Lcom/facebook/internal/SessionAuthorizationType;
new-instance v0, Lcom/facebook/internal/SessionAuthorizationType;
const-string v1, "PUBLISH"
invoke-direct {v0, v1, v3}, Lcom/facebook/internal/SessionAuthorizationType;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/internal/SessionAuthorizationType;->b:Lcom/facebook/internal/SessionAuthorizationType;
const/4 v0, 0x2
new-array v0, v0, [Lcom/facebook/internal/SessionAuthorizationType;
sget-object v1, Lcom/facebook/internal/SessionAuthorizationType;->a:Lcom/facebook/internal/SessionAuthorizationType;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/internal/SessionAuthorizationType;->b:Lcom/facebook/internal/SessionAuthorizationType;
aput-object v1, v0, v3
sput-object v0, Lcom/facebook/internal/SessionAuthorizationType;->c:[Lcom/facebook/internal/SessionAuthorizationType;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/internal/SessionAuthorizationType;
.registers 2
const-class v0, Lcom/facebook/internal/SessionAuthorizationType;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/internal/SessionAuthorizationType;
return-object v0
.end method
.method public static values()[Lcom/facebook/internal/SessionAuthorizationType;
.registers 1
sget-object v0, Lcom/facebook/internal/SessionAuthorizationType;->c:[Lcom/facebook/internal/SessionAuthorizationType;
invoke-virtual {v0}, [Lcom/facebook/internal/SessionAuthorizationType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/internal/SessionAuthorizationType;
return-object v0
.end method