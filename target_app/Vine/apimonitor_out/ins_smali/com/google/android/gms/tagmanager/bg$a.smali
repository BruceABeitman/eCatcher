.class public final enum Lcom/google/android/gms/tagmanager/bg$a;
.super Ljava/lang/Enum;
.field public static final enum agd:Lcom/google/android/gms/tagmanager/bg$a;
.field public static final enum age:Lcom/google/android/gms/tagmanager/bg$a;
.field public static final enum agf:Lcom/google/android/gms/tagmanager/bg$a;
.field private static final synthetic agg:[Lcom/google/android/gms/tagmanager/bg$a;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/google/android/gms/tagmanager/bg$a;
const-string v1, "NOT_AVAILABLE"
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/bg$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/gms/tagmanager/bg$a;->agd:Lcom/google/android/gms/tagmanager/bg$a;
new-instance v0, Lcom/google/android/gms/tagmanager/bg$a;
const-string v1, "IO_ERROR"
invoke-direct {v0, v1, v3}, Lcom/google/android/gms/tagmanager/bg$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/gms/tagmanager/bg$a;->age:Lcom/google/android/gms/tagmanager/bg$a;
new-instance v0, Lcom/google/android/gms/tagmanager/bg$a;
const-string v1, "SERVER_ERROR"
invoke-direct {v0, v1, v4}, Lcom/google/android/gms/tagmanager/bg$a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/android/gms/tagmanager/bg$a;->agf:Lcom/google/android/gms/tagmanager/bg$a;
const/4 v0, 0x3
new-array v0, v0, [Lcom/google/android/gms/tagmanager/bg$a;
sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->agd:Lcom/google/android/gms/tagmanager/bg$a;
aput-object v1, v0, v2
sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->age:Lcom/google/android/gms/tagmanager/bg$a;
aput-object v1, v0, v3
sget-object v1, Lcom/google/android/gms/tagmanager/bg$a;->agf:Lcom/google/android/gms/tagmanager/bg$a;
aput-object v1, v0, v4
sput-object v0, Lcom/google/android/gms/tagmanager/bg$a;->agg:[Lcom/google/android/gms/tagmanager/bg$a;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/google/android/gms/tagmanager/bg$a;
.registers 2
const-class v0, Lcom/google/android/gms/tagmanager/bg$a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/google/android/gms/tagmanager/bg$a;
return-object v0
.end method
.method public static values()[Lcom/google/android/gms/tagmanager/bg$a;
.registers 1
sget-object v0, Lcom/google/android/gms/tagmanager/bg$a;->agg:[Lcom/google/android/gms/tagmanager/bg$a;
invoke-virtual {v0}, [Lcom/google/android/gms/tagmanager/bg$a;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/android/gms/tagmanager/bg$a;
return-object v0
.end method