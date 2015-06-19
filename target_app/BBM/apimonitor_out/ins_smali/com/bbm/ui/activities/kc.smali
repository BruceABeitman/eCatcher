.class final enum Lcom/bbm/ui/activities/kc;
.super Ljava/lang/Enum;
.source "FilePickerActivity.java"
.field public static final enum a:Lcom/bbm/ui/activities/kc;
.field public static final enum b:Lcom/bbm/ui/activities/kc;
.field public static final enum c:Lcom/bbm/ui/activities/kc;
.field public static final enum d:Lcom/bbm/ui/activities/kc;
.field private static final synthetic e:[Lcom/bbm/ui/activities/kc;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/ui/activities/kc;
const-string v1, "SortByName"
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/activities/kc;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/activities/kc;->a:Lcom/bbm/ui/activities/kc;
new-instance v0, Lcom/bbm/ui/activities/kc;
const-string v1, "SortByDate"
invoke-direct {v0, v1, v3}, Lcom/bbm/ui/activities/kc;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/activities/kc;->b:Lcom/bbm/ui/activities/kc;
new-instance v0, Lcom/bbm/ui/activities/kc;
const-string v1, "SortByType"
invoke-direct {v0, v1, v4}, Lcom/bbm/ui/activities/kc;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/activities/kc;->c:Lcom/bbm/ui/activities/kc;
new-instance v0, Lcom/bbm/ui/activities/kc;
const-string v1, "SortBySize"
invoke-direct {v0, v1, v5}, Lcom/bbm/ui/activities/kc;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/activities/kc;->d:Lcom/bbm/ui/activities/kc;
const/4 v0, 0x4
new-array v0, v0, [Lcom/bbm/ui/activities/kc;
sget-object v1, Lcom/bbm/ui/activities/kc;->a:Lcom/bbm/ui/activities/kc;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/ui/activities/kc;->b:Lcom/bbm/ui/activities/kc;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/ui/activities/kc;->c:Lcom/bbm/ui/activities/kc;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/ui/activities/kc;->d:Lcom/bbm/ui/activities/kc;
aput-object v1, v0, v5
sput-object v0, Lcom/bbm/ui/activities/kc;->e:[Lcom/bbm/ui/activities/kc;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/activities/kc;
.registers 2
const-class v0, Lcom/bbm/ui/activities/kc;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/kc;
return-object v0
.end method
.method public static values()[Lcom/bbm/ui/activities/kc;
.registers 1
sget-object v0, Lcom/bbm/ui/activities/kc;->e:[Lcom/bbm/ui/activities/kc;
invoke-virtual {v0}, [Lcom/bbm/ui/activities/kc;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/ui/activities/kc;
return-object v0
.end method