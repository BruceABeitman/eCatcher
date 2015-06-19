.class public final enum Lcom/bbm/k/j;
.super Ljava/lang/Enum;
.source "GroupsCalendarProvider.java"
.field public static final enum a:Lcom/bbm/k/j;
.field public static final enum b:Lcom/bbm/k/j;
.field public static final enum c:Lcom/bbm/k/j;
.field private static final synthetic d:[Lcom/bbm/k/j;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/k/j;
const-string v1, "ActionAdded"
invoke-direct {v0, v1, v2}, Lcom/bbm/k/j;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/k/j;->a:Lcom/bbm/k/j;
new-instance v0, Lcom/bbm/k/j;
const-string v1, "ActionRemoved"
invoke-direct {v0, v1, v3}, Lcom/bbm/k/j;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/k/j;->b:Lcom/bbm/k/j;
new-instance v0, Lcom/bbm/k/j;
const-string v1, "ActionChanged"
invoke-direct {v0, v1, v4}, Lcom/bbm/k/j;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/k/j;->c:Lcom/bbm/k/j;
const/4 v0, 0x3
new-array v0, v0, [Lcom/bbm/k/j;
sget-object v1, Lcom/bbm/k/j;->a:Lcom/bbm/k/j;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/k/j;->b:Lcom/bbm/k/j;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/k/j;->c:Lcom/bbm/k/j;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/k/j;->d:[Lcom/bbm/k/j;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/k/j;
.registers 2
const-class v0, Lcom/bbm/k/j;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/k/j;
return-object v0
.end method
.method public static values()[Lcom/bbm/k/j;
.registers 1
sget-object v0, Lcom/bbm/k/j;->d:[Lcom/bbm/k/j;
invoke-virtual {v0}, [Lcom/bbm/k/j;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/k/j;
return-object v0
.end method