.class public final enum Lcom/facebook/SessionState;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/SessionState;
.field public static final enum b:Lcom/facebook/SessionState;
.field public static final enum c:Lcom/facebook/SessionState;
.field public static final enum d:Lcom/facebook/SessionState;
.field public static final enum e:Lcom/facebook/SessionState;
.field public static final enum f:Lcom/facebook/SessionState;
.field public static final enum g:Lcom/facebook/SessionState;
.field private static final synthetic h:[Lcom/facebook/SessionState;
.field private final category:Lcom/facebook/SessionState$Category;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/facebook/SessionState;
const-string v1, "CREATED"
sget-object v2, Lcom/facebook/SessionState$Category;->a:Lcom/facebook/SessionState$Category;
invoke-direct {v0, v1, v4, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V
sput-object v0, Lcom/facebook/SessionState;->a:Lcom/facebook/SessionState;
new-instance v0, Lcom/facebook/SessionState;
const-string v1, "CREATED_TOKEN_LOADED"
sget-object v2, Lcom/facebook/SessionState$Category;->a:Lcom/facebook/SessionState$Category;
invoke-direct {v0, v1, v5, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V
sput-object v0, Lcom/facebook/SessionState;->b:Lcom/facebook/SessionState;
new-instance v0, Lcom/facebook/SessionState;
const-string v1, "OPENING"
sget-object v2, Lcom/facebook/SessionState$Category;->a:Lcom/facebook/SessionState$Category;
invoke-direct {v0, v1, v6, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V
sput-object v0, Lcom/facebook/SessionState;->c:Lcom/facebook/SessionState;
new-instance v0, Lcom/facebook/SessionState;
const-string v1, "OPENED"
sget-object v2, Lcom/facebook/SessionState$Category;->b:Lcom/facebook/SessionState$Category;
invoke-direct {v0, v1, v7, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V
sput-object v0, Lcom/facebook/SessionState;->d:Lcom/facebook/SessionState;
new-instance v0, Lcom/facebook/SessionState;
const-string v1, "OPENED_TOKEN_UPDATED"
sget-object v2, Lcom/facebook/SessionState$Category;->b:Lcom/facebook/SessionState$Category;
invoke-direct {v0, v1, v8, v2}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V
sput-object v0, Lcom/facebook/SessionState;->e:Lcom/facebook/SessionState;
new-instance v0, Lcom/facebook/SessionState;
const-string v1, "CLOSED_LOGIN_FAILED"
const/4 v2, 0x5
sget-object v3, Lcom/facebook/SessionState$Category;->c:Lcom/facebook/SessionState$Category;
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V
sput-object v0, Lcom/facebook/SessionState;->f:Lcom/facebook/SessionState;
new-instance v0, Lcom/facebook/SessionState;
const-string v1, "CLOSED"
const/4 v2, 0x6
sget-object v3, Lcom/facebook/SessionState$Category;->c:Lcom/facebook/SessionState$Category;
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/SessionState;-><init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V
sput-object v0, Lcom/facebook/SessionState;->g:Lcom/facebook/SessionState;
const/4 v0, 0x7
new-array v0, v0, [Lcom/facebook/SessionState;
sget-object v1, Lcom/facebook/SessionState;->a:Lcom/facebook/SessionState;
aput-object v1, v0, v4
sget-object v1, Lcom/facebook/SessionState;->b:Lcom/facebook/SessionState;
aput-object v1, v0, v5
sget-object v1, Lcom/facebook/SessionState;->c:Lcom/facebook/SessionState;
aput-object v1, v0, v6
sget-object v1, Lcom/facebook/SessionState;->d:Lcom/facebook/SessionState;
aput-object v1, v0, v7
sget-object v1, Lcom/facebook/SessionState;->e:Lcom/facebook/SessionState;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/facebook/SessionState;->f:Lcom/facebook/SessionState;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/facebook/SessionState;->g:Lcom/facebook/SessionState;
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/SessionState;->h:[Lcom/facebook/SessionState;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILcom/facebook/SessionState$Category;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/facebook/SessionState;->category:Lcom/facebook/SessionState$Category;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/SessionState;
.registers 2
const-class v0, Lcom/facebook/SessionState;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/SessionState;
return-object v0
.end method
.method public static values()[Lcom/facebook/SessionState;
.registers 1
sget-object v0, Lcom/facebook/SessionState;->h:[Lcom/facebook/SessionState;
invoke-virtual {v0}, [Lcom/facebook/SessionState;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/SessionState;
return-object v0
.end method
.method public final a()Z
.registers 3
iget-object v0, p0, Lcom/facebook/SessionState;->category:Lcom/facebook/SessionState$Category;
sget-object v1, Lcom/facebook/SessionState$Category;->b:Lcom/facebook/SessionState$Category;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final b()Z
.registers 3
iget-object v0, p0, Lcom/facebook/SessionState;->category:Lcom/facebook/SessionState$Category;
sget-object v1, Lcom/facebook/SessionState$Category;->c:Lcom/facebook/SessionState$Category;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method