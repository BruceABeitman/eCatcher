.class public final enum Lcom/google/zxing/client/android/m;
.super Ljava/lang/Enum;
.source "HttpHelper.java"
.field public static final enum a:Lcom/google/zxing/client/android/m;
.field public static final enum b:Lcom/google/zxing/client/android/m;
.field public static final enum c:Lcom/google/zxing/client/android/m;
.field private static final synthetic d:[Lcom/google/zxing/client/android/m;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/google/zxing/client/android/m;
const-string v1, "HTML"
invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/m;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/zxing/client/android/m;->a:Lcom/google/zxing/client/android/m;
new-instance v0, Lcom/google/zxing/client/android/m;
const-string v1, "JSON"
invoke-direct {v0, v1, v3}, Lcom/google/zxing/client/android/m;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/zxing/client/android/m;->b:Lcom/google/zxing/client/android/m;
new-instance v0, Lcom/google/zxing/client/android/m;
const-string v1, "TEXT"
invoke-direct {v0, v1, v4}, Lcom/google/zxing/client/android/m;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/zxing/client/android/m;->c:Lcom/google/zxing/client/android/m;
const/4 v0, 0x3
new-array v0, v0, [Lcom/google/zxing/client/android/m;
sget-object v1, Lcom/google/zxing/client/android/m;->a:Lcom/google/zxing/client/android/m;
aput-object v1, v0, v2
sget-object v1, Lcom/google/zxing/client/android/m;->b:Lcom/google/zxing/client/android/m;
aput-object v1, v0, v3
sget-object v1, Lcom/google/zxing/client/android/m;->c:Lcom/google/zxing/client/android/m;
aput-object v1, v0, v4
sput-object v0, Lcom/google/zxing/client/android/m;->d:[Lcom/google/zxing/client/android/m;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/android/m;
.registers 2
const-class v0, Lcom/google/zxing/client/android/m;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/google/zxing/client/android/m;
return-object v0
.end method
.method public static values()[Lcom/google/zxing/client/android/m;
.registers 1
sget-object v0, Lcom/google/zxing/client/android/m;->d:[Lcom/google/zxing/client/android/m;
invoke-virtual {v0}, [Lcom/google/zxing/client/android/m;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/zxing/client/android/m;
return-object v0
.end method