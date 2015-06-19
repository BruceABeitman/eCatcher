.class public final enum Lcom/twidroid/fragments/e/h;
.super Ljava/lang/Enum;
.source "SourceFile"
.field public static final enum a:Lcom/twidroid/fragments/e/h;
.field public static final enum b:Lcom/twidroid/fragments/e/h;
.field public static final enum c:Lcom/twidroid/fragments/e/h;
.field private static final synthetic d:[Lcom/twidroid/fragments/e/h;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/twidroid/fragments/e/h;
const-string v1, "TO_ANOTHER"
invoke-direct {v0, v1, v2}, Lcom/twidroid/fragments/e/h;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/fragments/e/h;->a:Lcom/twidroid/fragments/e/h;
new-instance v0, Lcom/twidroid/fragments/e/h;
const-string v1, "TO_MERGED_VIEW"
invoke-direct {v0, v1, v3}, Lcom/twidroid/fragments/e/h;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/fragments/e/h;->b:Lcom/twidroid/fragments/e/h;
new-instance v0, Lcom/twidroid/fragments/e/h;
const-string v1, "NONE"
invoke-direct {v0, v1, v4}, Lcom/twidroid/fragments/e/h;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/twidroid/fragments/e/h;->c:Lcom/twidroid/fragments/e/h;
const/4 v0, 0x3
new-array v0, v0, [Lcom/twidroid/fragments/e/h;
sget-object v1, Lcom/twidroid/fragments/e/h;->a:Lcom/twidroid/fragments/e/h;
aput-object v1, v0, v2
sget-object v1, Lcom/twidroid/fragments/e/h;->b:Lcom/twidroid/fragments/e/h;
aput-object v1, v0, v3
sget-object v1, Lcom/twidroid/fragments/e/h;->c:Lcom/twidroid/fragments/e/h;
aput-object v1, v0, v4
sput-object v0, Lcom/twidroid/fragments/e/h;->d:[Lcom/twidroid/fragments/e/h;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/twidroid/fragments/e/h;
.registers 2
const-class v0, Lcom/twidroid/fragments/e/h;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/twidroid/fragments/e/h;
return-object v0
.end method
.method public static values()[Lcom/twidroid/fragments/e/h;
.registers 1
sget-object v0, Lcom/twidroid/fragments/e/h;->d:[Lcom/twidroid/fragments/e/h;
invoke-virtual {v0}, [Lcom/twidroid/fragments/e/h;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/twidroid/fragments/e/h;
return-object v0
.end method