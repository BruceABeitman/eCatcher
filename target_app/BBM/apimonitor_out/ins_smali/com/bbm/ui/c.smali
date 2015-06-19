.class public final enum Lcom/bbm/ui/c;
.super Ljava/lang/Enum;
.source "ActivityTransitionLifeCycleListener.java"
.field public static final enum a:Lcom/bbm/ui/c;
.field public static final enum b:Lcom/bbm/ui/c;
.field public static final enum c:Lcom/bbm/ui/c;
.field public static final enum d:Lcom/bbm/ui/c;
.field private static final synthetic e:[Lcom/bbm/ui/c;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/bbm/ui/c;
const-string v1, "ZOOM_OUT_BOTTOM_TO_UP"
invoke-direct {v0, v1, v2}, Lcom/bbm/ui/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c;->a:Lcom/bbm/ui/c;
new-instance v0, Lcom/bbm/ui/c;
const-string v1, "SLIDE_IN_FROM_RIGHT"
invoke-direct {v0, v1, v3}, Lcom/bbm/ui/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c;->b:Lcom/bbm/ui/c;
new-instance v0, Lcom/bbm/ui/c;
const-string v1, "ANDROID_DEFAULT"
invoke-direct {v0, v1, v4}, Lcom/bbm/ui/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c;->c:Lcom/bbm/ui/c;
new-instance v0, Lcom/bbm/ui/c;
const-string v1, "NONE"
invoke-direct {v0, v1, v5}, Lcom/bbm/ui/c;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/bbm/ui/c;->d:Lcom/bbm/ui/c;
const/4 v0, 0x4
new-array v0, v0, [Lcom/bbm/ui/c;
sget-object v1, Lcom/bbm/ui/c;->a:Lcom/bbm/ui/c;
aput-object v1, v0, v2
sget-object v1, Lcom/bbm/ui/c;->b:Lcom/bbm/ui/c;
aput-object v1, v0, v3
sget-object v1, Lcom/bbm/ui/c;->c:Lcom/bbm/ui/c;
aput-object v1, v0, v4
sget-object v1, Lcom/bbm/ui/c;->d:Lcom/bbm/ui/c;
aput-object v1, v0, v5
sput-object v0, Lcom/bbm/ui/c;->e:[Lcom/bbm/ui/c;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/bbm/ui/c;
.registers 2
const-class v0, Lcom/bbm/ui/c;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c;
return-object v0
.end method
.method public static values()[Lcom/bbm/ui/c;
.registers 1
sget-object v0, Lcom/bbm/ui/c;->e:[Lcom/bbm/ui/c;
invoke-virtual {v0}, [Lcom/bbm/ui/c;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/bbm/ui/c;
return-object v0
.end method