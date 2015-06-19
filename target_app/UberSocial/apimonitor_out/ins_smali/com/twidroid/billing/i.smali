.class public final enum Lcom/twidroid/billing/i;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/twidroid/billing/i;
.field public static final enum b:Lcom/twidroid/billing/i;
.field public static final enum c:Lcom/twidroid/billing/i;
.field public static final enum d:Lcom/twidroid/billing/i;
.field public static final enum e:Lcom/twidroid/billing/i;
.field public static final enum f:Lcom/twidroid/billing/i;
.field public static final enum g:Lcom/twidroid/billing/i;
.field private static final synthetic h:[Lcom/twidroid/billing/i;
.method static constructor <clinit>()V
.registers 8
const/4 v7, 0x4
const/4 v6, 0x3
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/twidroid/billing/i;
const-string v1, "RESULT_OK"
invoke-direct {v0, v1, v3}, Lcom/twidroid/billing/i;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/billing/i;->a:Lcom/twidroid/billing/i;
new-instance v0, Lcom/twidroid/billing/i;
const-string v1, "RESULT_USER_CANCELED"
invoke-direct {v0, v1, v4}, Lcom/twidroid/billing/i;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/billing/i;->b:Lcom/twidroid/billing/i;
new-instance v0, Lcom/twidroid/billing/i;
const-string v1, "RESULT_SERVICE_UNAVAILABLE"
invoke-direct {v0, v1, v5}, Lcom/twidroid/billing/i;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/billing/i;->c:Lcom/twidroid/billing/i;
new-instance v0, Lcom/twidroid/billing/i;
const-string v1, "RESULT_BILLING_UNAVAILABLE"
invoke-direct {v0, v1, v6}, Lcom/twidroid/billing/i;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/billing/i;->d:Lcom/twidroid/billing/i;
new-instance v0, Lcom/twidroid/billing/i;
const-string v1, "RESULT_ITEM_UNAVAILABLE"
invoke-direct {v0, v1, v7}, Lcom/twidroid/billing/i;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/billing/i;->e:Lcom/twidroid/billing/i;
new-instance v0, Lcom/twidroid/billing/i;
const-string v1, "RESULT_DEVELOPER_ERROR"
const/4 v2, 0x5
invoke-direct {v0, v1, v2}, Lcom/twidroid/billing/i;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/billing/i;->f:Lcom/twidroid/billing/i;
new-instance v0, Lcom/twidroid/billing/i;
const-string v1, "RESULT_ERROR"
const/4 v2, 0x6
invoke-direct {v0, v1, v2}, Lcom/twidroid/billing/i;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/billing/i;->g:Lcom/twidroid/billing/i;
const/4 v0, 0x7
new-array v0, v0, [Lcom/twidroid/billing/i;
sget-object v1, Lcom/twidroid/billing/i;->a:Lcom/twidroid/billing/i;
aput-object v1, v0, v3
sget-object v1, Lcom/twidroid/billing/i;->b:Lcom/twidroid/billing/i;
aput-object v1, v0, v4
sget-object v1, Lcom/twidroid/billing/i;->c:Lcom/twidroid/billing/i;
aput-object v1, v0, v5
sget-object v1, Lcom/twidroid/billing/i;->d:Lcom/twidroid/billing/i;
aput-object v1, v0, v6
sget-object v1, Lcom/twidroid/billing/i;->e:Lcom/twidroid/billing/i;
aput-object v1, v0, v7
const/4 v1, 0x5
sget-object v2, Lcom/twidroid/billing/i;->f:Lcom/twidroid/billing/i;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Lcom/twidroid/billing/i;->g:Lcom/twidroid/billing/i;
aput-object v2, v0, v1
sput-object v0, Lcom/twidroid/billing/i;->h:[Lcom/twidroid/billing/i;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static a(I)Lcom/twidroid/billing/i;
.registers 3
invoke-static {}, Lcom/twidroid/billing/i;->values()[Lcom/twidroid/billing/i;
move-result-object v0
if-ltz p0, :cond_9
array-length v1, v0
if-lt p0, v1, :cond_c
:cond_9
sget-object v0, Lcom/twidroid/billing/i;->g:Lcom/twidroid/billing/i;
:goto_b
return-object v0
:cond_c
aget-object v0, v0, p0
goto :goto_b
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/billing/i;
.registers 2
const-class v0, Lcom/twidroid/billing/i;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/twidroid/billing/i;
return-object v0
.end method
.method public static values()[Lcom/twidroid/billing/i;
.registers 1
sget-object v0, Lcom/twidroid/billing/i;->h:[Lcom/twidroid/billing/i;
invoke-virtual {v0}, [Lcom/twidroid/billing/i;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/twidroid/billing/i;
return-object v0
.end method