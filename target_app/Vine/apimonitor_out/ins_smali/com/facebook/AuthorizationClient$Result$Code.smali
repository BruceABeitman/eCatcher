.class final enum Lcom/facebook/AuthorizationClient$Result$Code;
.super Ljava/lang/Enum;
.source "AuthorizationClient.java"
.field private static final synthetic $VALUES:[Lcom/facebook/AuthorizationClient$Result$Code;
.field public static final enum CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;
.field public static final enum ERROR:Lcom/facebook/AuthorizationClient$Result$Code;
.field public static final enum SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;
const-string v1, "SUCCESS"
invoke-direct {v0, v1, v2}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;
new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;
const-string v1, "CANCEL"
invoke-direct {v0, v1, v3}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;
new-instance v0, Lcom/facebook/AuthorizationClient$Result$Code;
const-string v1, "ERROR"
invoke-direct {v0, v1, v4}, Lcom/facebook/AuthorizationClient$Result$Code;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;
const/4 v0, 0x3
new-array v0, v0, [Lcom/facebook/AuthorizationClient$Result$Code;
sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/facebook/AuthorizationClient$Result$Code;
aput-object v1, v0, v2
sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;
aput-object v1, v0, v3
sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/facebook/AuthorizationClient$Result$Code;
aput-object v1, v0, v4
sput-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->$VALUES:[Lcom/facebook/AuthorizationClient$Result$Code;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result$Code;
.registers 2
const-class v0, Lcom/facebook/AuthorizationClient$Result$Code;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/AuthorizationClient$Result$Code;
return-object v0
.end method
.method public static values()[Lcom/facebook/AuthorizationClient$Result$Code;
.registers 1
sget-object v0, Lcom/facebook/AuthorizationClient$Result$Code;->$VALUES:[Lcom/facebook/AuthorizationClient$Result$Code;
invoke-virtual {v0}, [Lcom/facebook/AuthorizationClient$Result$Code;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/AuthorizationClient$Result$Code;
return-object v0
.end method