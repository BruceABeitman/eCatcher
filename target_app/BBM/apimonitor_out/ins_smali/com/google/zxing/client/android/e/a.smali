.class final enum Lcom/google/zxing/client/android/e/a;
.super Ljava/lang/Enum;
.source "NetworkType.java"
.field public static final enum a:Lcom/google/zxing/client/android/e/a;
.field public static final enum b:Lcom/google/zxing/client/android/e/a;
.field public static final enum c:Lcom/google/zxing/client/android/e/a;
.field private static final synthetic d:[Lcom/google/zxing/client/android/e/a;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/google/zxing/client/android/e/a;
const-string v1, "WEP"
invoke-direct {v0, v1, v2}, Lcom/google/zxing/client/android/e/a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/zxing/client/android/e/a;->a:Lcom/google/zxing/client/android/e/a;
new-instance v0, Lcom/google/zxing/client/android/e/a;
const-string v1, "WPA"
invoke-direct {v0, v1, v3}, Lcom/google/zxing/client/android/e/a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/zxing/client/android/e/a;->b:Lcom/google/zxing/client/android/e/a;
new-instance v0, Lcom/google/zxing/client/android/e/a;
const-string v1, "NO_PASSWORD"
invoke-direct {v0, v1, v4}, Lcom/google/zxing/client/android/e/a;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/google/zxing/client/android/e/a;->c:Lcom/google/zxing/client/android/e/a;
const/4 v0, 0x3
new-array v0, v0, [Lcom/google/zxing/client/android/e/a;
sget-object v1, Lcom/google/zxing/client/android/e/a;->a:Lcom/google/zxing/client/android/e/a;
aput-object v1, v0, v2
sget-object v1, Lcom/google/zxing/client/android/e/a;->b:Lcom/google/zxing/client/android/e/a;
aput-object v1, v0, v3
sget-object v1, Lcom/google/zxing/client/android/e/a;->c:Lcom/google/zxing/client/android/e/a;
aput-object v1, v0, v4
sput-object v0, Lcom/google/zxing/client/android/e/a;->d:[Lcom/google/zxing/client/android/e/a;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method static a(Ljava/lang/String;)Lcom/google/zxing/client/android/e/a;
.registers 2
if-nez p0, :cond_5
sget-object v0, Lcom/google/zxing/client/android/e/a;->c:Lcom/google/zxing/client/android/e/a;
:goto_4
return-object v0
:cond_5
const-string v0, "WPA"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
sget-object v0, Lcom/google/zxing/client/android/e/a;->b:Lcom/google/zxing/client/android/e/a;
goto :goto_4
:cond_10
const-string v0, "WEP"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1b
sget-object v0, Lcom/google/zxing/client/android/e/a;->a:Lcom/google/zxing/client/android/e/a;
goto :goto_4
:cond_1b
const-string v0, "nopass"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_26
sget-object v0, Lcom/google/zxing/client/android/e/a;->c:Lcom/google/zxing/client/android/e/a;
goto :goto_4
:cond_26
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/google/zxing/client/android/e/a;
.registers 2
const-class v0, Lcom/google/zxing/client/android/e/a;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/google/zxing/client/android/e/a;
return-object v0
.end method
.method public static values()[Lcom/google/zxing/client/android/e/a;
.registers 1
sget-object v0, Lcom/google/zxing/client/android/e/a;->d:[Lcom/google/zxing/client/android/e/a;
invoke-virtual {v0}, [Lcom/google/zxing/client/android/e/a;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/zxing/client/android/e/a;
return-object v0
.end method