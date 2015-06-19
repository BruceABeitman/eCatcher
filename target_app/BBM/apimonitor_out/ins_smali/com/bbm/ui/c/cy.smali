.class public final enum Lcom/bbm/ui/c/cy;
.super Ljava/lang/Enum;
.source "GroupMembersFragment.java"
.field public static final enum a:Lcom/bbm/ui/c/cy;
.field public static final enum b:Lcom/bbm/ui/c/cy;
.field private static final synthetic c:[Lcom/bbm/ui/c/cy;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/ui/c/cy;
const-string v1, "ACTIVE_MEMBER"
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/c/cy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/cy;->a:Lcom/bbm/ui/c/cy;
new-instance v0, Lcom/bbm/ui/c/cy;
const-string v1, "INACTIVE_MEMBER"
invoke-direct {v0, v1, v3}, Lcom/bbm/ui/c/cy;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/cy;->b:Lcom/bbm/ui/c/cy;
const/4 v0, 0x2
new-array v0, v0, [Lcom/bbm/ui/c/cy;
sget-object v1, Lcom/bbm/ui/c/cy;->a:Lcom/bbm/ui/c/cy;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/ui/c/cy;->b:Lcom/bbm/ui/c/cy;
aput-object v1, v0, v3
sput-object v0, Lcom/bbm/ui/c/cy;->c:[Lcom/bbm/ui/c/cy;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/c/cy;
.registers 2
const-class v0, Lcom/bbm/ui/c/cy;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/cy;
return-object v0
.end method
.method public static values()[Lcom/bbm/ui/c/cy;
.registers 1
sget-object v0, Lcom/bbm/ui/c/cy;->c:[Lcom/bbm/ui/c/cy;
invoke-virtual {v0}, [Lcom/bbm/ui/c/cy;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/ui/c/cy;
return-object v0
.end method