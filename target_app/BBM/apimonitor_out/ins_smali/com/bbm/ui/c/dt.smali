.class public final enum Lcom/bbm/ui/c/dt;
.super Ljava/lang/Enum;
.source "GroupsFragment.java"
.field public static final enum a:Lcom/bbm/ui/c/dt;
.field public static final enum b:Lcom/bbm/ui/c/dt;
.field private static final synthetic c:[Lcom/bbm/ui/c/dt;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/ui/c/dt;
const-string v1, "GROUP"
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/c/dt;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/dt;->a:Lcom/bbm/ui/c/dt;
new-instance v0, Lcom/bbm/ui/c/dt;
const-string v1, "GROUP_RESTORE"
invoke-direct {v0, v1, v3}, Lcom/bbm/ui/c/dt;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c/dt;->b:Lcom/bbm/ui/c/dt;
const/4 v0, 0x2
new-array v0, v0, [Lcom/bbm/ui/c/dt;
sget-object v1, Lcom/bbm/ui/c/dt;->a:Lcom/bbm/ui/c/dt;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/ui/c/dt;->b:Lcom/bbm/ui/c/dt;
aput-object v1, v0, v3
sput-object v0, Lcom/bbm/ui/c/dt;->c:[Lcom/bbm/ui/c/dt;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/c/dt;
.registers 2
const-class v0, Lcom/bbm/ui/c/dt;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/dt;
return-object v0
.end method
.method public static values()[Lcom/bbm/ui/c/dt;
.registers 1
sget-object v0, Lcom/bbm/ui/c/dt;->c:[Lcom/bbm/ui/c/dt;
invoke-virtual {v0}, [Lcom/bbm/ui/c/dt;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/ui/c/dt;
return-object v0
.end method