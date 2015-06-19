.class public final enum Lcom/facebook/bk;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/facebook/bk;
.field public static final enum b:Lcom/facebook/bk;
.field public static final enum c:Lcom/facebook/bk;
.field public static final enum d:Lcom/facebook/bk;
.field public static final enum e:Lcom/facebook/bk;
.field public static final enum f:Lcom/facebook/bk;
.field public static final enum g:Lcom/facebook/bk;
.field private static final synthetic i:[Lcom/facebook/bk;
.field private final h:Lcom/facebook/bl;
.method static constructor <clinit>()V
.registers 9
const/4 v8, 0x4
const/4 v7, 0x3
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/facebook/bk;
const-string v1, "CREATED"
sget-object v2, Lcom/facebook/bl;->a:Lcom/facebook/bl;
invoke-direct {v0, v1, v4, v2}, Lcom/facebook/bk;-><init>(Ljava/lang/String;ILcom/facebook/bl;)V
sput-object v0, Lcom/facebook/bk;->a:Lcom/facebook/bk;
new-instance v0, Lcom/facebook/bk;
const-string v1, "CREATED_TOKEN_LOADED"
sget-object v2, Lcom/facebook/bl;->a:Lcom/facebook/bl;
invoke-direct {v0, v1, v5, v2}, Lcom/facebook/bk;-><init>(Ljava/lang/String;ILcom/facebook/bl;)V
sput-object v0, Lcom/facebook/bk;->b:Lcom/facebook/bk;
new-instance v0, Lcom/facebook/bk;
const-string v1, "OPENING"
sget-object v2, Lcom/facebook/bl;->a:Lcom/facebook/bl;
invoke-direct {v0, v1, v6, v2}, Lcom/facebook/bk;-><init>(Ljava/lang/String;ILcom/facebook/bl;)V
sput-object v0, Lcom/facebook/bk;->c:Lcom/facebook/bk;
new-instance v0, Lcom/facebook/bk;
const-string v1, "OPENED"
sget-object v2, Lcom/facebook/bl;->b:Lcom/facebook/bl;
invoke-direct {v0, v1, v7, v2}, Lcom/facebook/bk;-><init>(Ljava/lang/String;ILcom/facebook/bl;)V
sput-object v0, Lcom/facebook/bk;->d:Lcom/facebook/bk;
new-instance v0, Lcom/facebook/bk;
const-string v1, "OPENED_TOKEN_UPDATED"
sget-object v2, Lcom/facebook/bl;->b:Lcom/facebook/bl;
invoke-direct {v0, v1, v8, v2}, Lcom/facebook/bk;-><init>(Ljava/lang/String;ILcom/facebook/bl;)V
sput-object v0, Lcom/facebook/bk;->e:Lcom/facebook/bk;
new-instance v0, Lcom/facebook/bk;
const-string v1, "CLOSED_LOGIN_FAILED"
const/4 v2, 0x5
sget-object v3, Lcom/facebook/bl;->c:Lcom/facebook/bl;
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/bk;-><init>(Ljava/lang/String;ILcom/facebook/bl;)V
sput-object v0, Lcom/facebook/bk;->f:Lcom/facebook/bk;
new-instance v0, Lcom/facebook/bk;
const-string v1, "CLOSED"
const/4 v2, 0x6
sget-object v3, Lcom/facebook/bl;->c:Lcom/facebook/bl;
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/bk;-><init>(Ljava/lang/String;ILcom/facebook/bl;)V
sput-object v0, Lcom/facebook/bk;->g:Lcom/facebook/bk;
const/4 v0, 0x7
new-array v0, v0, [Lcom/facebook/bk;
sget-object v1, Lcom/facebook/bk;->a:Lcom/facebook/bk;
aput-object v1, v0, v4
sget-object v1, Lcom/facebook/bk;->b:Lcom/facebook/bk;
aput-object v1, v0, v5
sget-object v1, Lcom/facebook/bk;->c:Lcom/facebook/bk;
aput-object v1, v0, v6
sget-object v1, Lcom/facebook/bk;->d:Lcom/facebook/bk;
aput-object v1, v0, v7
sget-object v1, Lcom/facebook/bk;->e:Lcom/facebook/bk;
aput-object v1, v0, v8
const/4 v1, 0x5
sget-object v2, Lcom/facebook/bk;->f:Lcom/facebook/bk;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/facebook/bk;->g:Lcom/facebook/bk;
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/bk;->i:[Lcom/facebook/bk;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILcom/facebook/bl;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/facebook/bk;->h:Lcom/facebook/bl;
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/facebook/bk;
.registers 2
const-class v0, Lcom/facebook/bk;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/facebook/bk;
return-object v0
.end method
.method public static values()[Lcom/facebook/bk;
.registers 1
sget-object v0, Lcom/facebook/bk;->i:[Lcom/facebook/bk;
invoke-virtual {v0}, [Lcom/facebook/bk;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/facebook/bk;
return-object v0
.end method
.method public a()Z
.registers 3
iget-object v0, p0, Lcom/facebook/bk;->h:Lcom/facebook/bl;
sget-object v1, Lcom/facebook/bl;->b:Lcom/facebook/bl;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public b()Z
.registers 3
iget-object v0, p0, Lcom/facebook/bk;->h:Lcom/facebook/bl;
sget-object v1, Lcom/facebook/bl;->c:Lcom/facebook/bl;
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method