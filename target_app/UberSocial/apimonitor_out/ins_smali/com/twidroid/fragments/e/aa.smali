.class public final enum Lcom/twidroid/fragments/e/aa;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/twidroid/fragments/e/aa;
.field public static final enum b:Lcom/twidroid/fragments/e/aa;
.field public static final enum c:Lcom/twidroid/fragments/e/aa;
.field private static final synthetic e:[Lcom/twidroid/fragments/e/aa;
.field  d:J
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x2
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v0, Lcom/twidroid/fragments/e/aa;
const-string v1, "RETWEETS_OF_ME"
const-wide/16 v2, 0x0
invoke-direct {v0, v1, v4, v2, v3}, Lcom/twidroid/fragments/e/aa;-><init>(Ljava/lang/String;IJ)V
sput-object v0, Lcom/twidroid/fragments/e/aa;->a:Lcom/twidroid/fragments/e/aa;
new-instance v0, Lcom/twidroid/fragments/e/aa;
const-string v1, "RETWEETS_TO_ME"
const-wide/16 v2, 0x2
invoke-direct {v0, v1, v5, v2, v3}, Lcom/twidroid/fragments/e/aa;-><init>(Ljava/lang/String;IJ)V
sput-object v0, Lcom/twidroid/fragments/e/aa;->b:Lcom/twidroid/fragments/e/aa;
new-instance v0, Lcom/twidroid/fragments/e/aa;
const-string v1, "RETWEETS_OF_USER"
const-wide/16 v2, 0x3
invoke-direct {v0, v1, v6, v2, v3}, Lcom/twidroid/fragments/e/aa;-><init>(Ljava/lang/String;IJ)V
sput-object v0, Lcom/twidroid/fragments/e/aa;->c:Lcom/twidroid/fragments/e/aa;
const/4 v0, 0x3
new-array v0, v0, [Lcom/twidroid/fragments/e/aa;
sget-object v1, Lcom/twidroid/fragments/e/aa;->a:Lcom/twidroid/fragments/e/aa;
aput-object v1, v0, v4
sget-object v1, Lcom/twidroid/fragments/e/aa;->b:Lcom/twidroid/fragments/e/aa;
aput-object v1, v0, v5
sget-object v1, Lcom/twidroid/fragments/e/aa;->c:Lcom/twidroid/fragments/e/aa;
aput-object v1, v0, v6
sput-object v0, Lcom/twidroid/fragments/e/aa;->e:[Lcom/twidroid/fragments/e/aa;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;IJ)V
.registers 5
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-wide p3, p0, Lcom/twidroid/fragments/e/aa;->d:J
return-void
.end method
.method public static a(I)Lcom/twidroid/fragments/e/aa;
.registers 2
invoke-static {}, Lcom/twidroid/fragments/e/aa;->values()[Lcom/twidroid/fragments/e/aa;
move-result-object v0
aget-object v0, v0, p0
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/fragments/e/aa;
.registers 2
const-class v0, Lcom/twidroid/fragments/e/aa;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/aa;
return-object v0
.end method
.method public static values()[Lcom/twidroid/fragments/e/aa;
.registers 1
sget-object v0, Lcom/twidroid/fragments/e/aa;->e:[Lcom/twidroid/fragments/e/aa;
invoke-virtual {v0}, [Lcom/twidroid/fragments/e/aa;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/twidroid/fragments/e/aa;
return-object v0
.end method