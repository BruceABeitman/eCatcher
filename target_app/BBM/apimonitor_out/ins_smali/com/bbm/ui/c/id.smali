.class final enum Lcom/bbm/ui/c/id;
.super Ljava/lang/Enum;
.source "UpdatesFragment.java"
.field public static final enum a:Lcom/bbm/ui/c/id;
.field public static final enum b:Lcom/bbm/ui/c/id;
.field public static final enum c:Lcom/bbm/ui/c/id;
.field private static final synthetic d:[Lcom/bbm/ui/c/id;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/ui/c/id;
const-string v1, "REQUEST_SENT"
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/c/id;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/id;->a:Lcom/bbm/ui/c/id;
new-instance v0, Lcom/bbm/ui/c/id;
const-string v1, "REQUEST_NOT_SENT"
invoke-direct {v0, v1, v3}, Lcom/bbm/ui/c/id;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/id;->b:Lcom/bbm/ui/c/id;
new-instance v0, Lcom/bbm/ui/c/id;
const-string v1, "TRY_AGAIN"
invoke-direct {v0, v1, v4}, Lcom/bbm/ui/c/id;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/id;->c:Lcom/bbm/ui/c/id;
const/4 v0, 0x3
new-array v0, v0, [Lcom/bbm/ui/c/id;
sget-object v1, Lcom/bbm/ui/c/id;->a:Lcom/bbm/ui/c/id;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/ui/c/id;->b:Lcom/bbm/ui/c/id;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/ui/c/id;->c:Lcom/bbm/ui/c/id;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/ui/c/id;->d:[Lcom/bbm/ui/c/id;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/c/id;
.registers 2
const-class v0, Lcom/bbm/ui/c/id;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/id;
return-object v0
.end method
.method public static values()[Lcom/bbm/ui/c/id;
.registers 1
sget-object v0, Lcom/bbm/ui/c/id;->d:[Lcom/bbm/ui/c/id;
invoke-virtual {v0}, [Lcom/bbm/ui/c/id;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/ui/c/id;
return-object v0
.end method