.class final enum Lcom/bbm/ui/activities/cx;
.super Ljava/lang/Enum;
.source "ChannelOfficeHoursSettingsActivity.java"
.field public static final enum a:Lcom/bbm/ui/activities/cx;
.field public static final enum b:Lcom/bbm/ui/activities/cx;
.field public static final enum c:Lcom/bbm/ui/activities/cx;
.field private static final synthetic d:[Lcom/bbm/ui/activities/cx;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/ui/activities/cx;
const-string v1, "FROM"
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/activities/cx;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/activities/cx;->a:Lcom/bbm/ui/activities/cx;
new-instance v0, Lcom/bbm/ui/activities/cx;
const-string v1, "TO"
invoke-direct {v0, v1, v3}, Lcom/bbm/ui/activities/cx;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/activities/cx;->b:Lcom/bbm/ui/activities/cx;
new-instance v0, Lcom/bbm/ui/activities/cx;
const-string v1, "AVAILABLE"
invoke-direct {v0, v1, v4}, Lcom/bbm/ui/activities/cx;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/activities/cx;->c:Lcom/bbm/ui/activities/cx;
const/4 v0, 0x3
new-array v0, v0, [Lcom/bbm/ui/activities/cx;
sget-object v1, Lcom/bbm/ui/activities/cx;->a:Lcom/bbm/ui/activities/cx;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/ui/activities/cx;->b:Lcom/bbm/ui/activities/cx;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/ui/activities/cx;->c:Lcom/bbm/ui/activities/cx;
aput-object v1, v0, v4
sput-object v0, Lcom/bbm/ui/activities/cx;->d:[Lcom/bbm/ui/activities/cx;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/activities/cx;
.registers 2
const-class v0, Lcom/bbm/ui/activities/cx;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/cx;
return-object v0
.end method
.method public static values()[Lcom/bbm/ui/activities/cx;
.registers 1
sget-object v0, Lcom/bbm/ui/activities/cx;->d:[Lcom/bbm/ui/activities/cx;
invoke-virtual {v0}, [Lcom/bbm/ui/activities/cx;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/ui/activities/cx;
return-object v0
.end method