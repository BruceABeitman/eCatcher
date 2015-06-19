.class public final enum Lcom/google/android/gms/tagmanager/az;
.super Ljava/lang/Enum;
.field public static final enum a:Lcom/google/android/gms/tagmanager/az;
.field public static final enum b:Lcom/google/android/gms/tagmanager/az;
.field public static final enum c:Lcom/google/android/gms/tagmanager/az;
.field private static final synthetic d:[Lcom/google/android/gms/tagmanager/az;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/google/android/gms/tagmanager/az;
const-string v1, "NOT_AVAILABLE"
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/az;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/gms/tagmanager/az;->a:Lcom/google/android/gms/tagmanager/az;
new-instance v0, Lcom/google/android/gms/tagmanager/az;
const-string v1, "IO_ERROR"
invoke-direct {v0, v1, v3}, Lcom/google/android/gms/tagmanager/az;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/gms/tagmanager/az;->b:Lcom/google/android/gms/tagmanager/az;
new-instance v0, Lcom/google/android/gms/tagmanager/az;
const-string v1, "SERVER_ERROR"
invoke-direct {v0, v1, v4}, Lcom/google/android/gms/tagmanager/az;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/gms/tagmanager/az;->c:Lcom/google/android/gms/tagmanager/az;
const/4 v0, 0x3
new-array v0, v0, [Lcom/google/android/gms/tagmanager/az;
sget-object v1, Lcom/google/android/gms/tagmanager/az;->a:Lcom/google/android/gms/tagmanager/az;
aput-object v1, v0, v2
sget-object v1, Lcom/google/android/gms/tagmanager/az;->b:Lcom/google/android/gms/tagmanager/az;
aput-object v1, v0, v3
sget-object v1, Lcom/google/android/gms/tagmanager/az;->c:Lcom/google/android/gms/tagmanager/az;
aput-object v1, v0, v4
sput-object v0, Lcom/google/android/gms/tagmanager/az;->d:[Lcom/google/android/gms/tagmanager/az;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/az;
.registers 2
const-class v0, Lcom/google/android/gms/tagmanager/az;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/az;
return-object v0
.end method
.method public static values()[Lcom/google/android/gms/tagmanager/az;
.registers 1
sget-object v0, Lcom/google/android/gms/tagmanager/az;->d:[Lcom/google/android/gms/tagmanager/az;
invoke-virtual {v0}, [Lcom/google/android/gms/tagmanager/az;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/tagmanager/az;
return-object v0
.end method