.class final enum Lcom/bbm/ui/activities/acn;
.super Ljava/lang/Enum;
.source "ProfileIconSourceActivity.java"
.field public static final enum a:Lcom/bbm/ui/activities/acn;
.field public static final enum b:Lcom/bbm/ui/activities/acn;
.field private static final synthetic c:[Lcom/bbm/ui/activities/acn;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/ui/activities/acn;
const-string v1, "PICTURE"
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/activities/acn;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/activities/acn;->a:Lcom/bbm/ui/activities/acn;
new-instance v0, Lcom/bbm/ui/activities/acn;
const-string v1, "SAMPLE_PICTURE"
invoke-direct {v0, v1, v3}, Lcom/bbm/ui/activities/acn;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/activities/acn;->b:Lcom/bbm/ui/activities/acn;
const/4 v0, 0x2
new-array v0, v0, [Lcom/bbm/ui/activities/acn;
sget-object v1, Lcom/bbm/ui/activities/acn;->a:Lcom/bbm/ui/activities/acn;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/ui/activities/acn;->b:Lcom/bbm/ui/activities/acn;
aput-object v1, v0, v3
sput-object v0, Lcom/bbm/ui/activities/acn;->c:[Lcom/bbm/ui/activities/acn;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/activities/acn;
.registers 2
const-class v0, Lcom/bbm/ui/activities/acn;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/acn;
return-object v0
.end method
.method public static values()[Lcom/bbm/ui/activities/acn;
.registers 1
sget-object v0, Lcom/bbm/ui/activities/acn;->c:[Lcom/bbm/ui/activities/acn;
invoke-virtual {v0}, [Lcom/bbm/ui/activities/acn;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/ui/activities/acn;
return-object v0
.end method