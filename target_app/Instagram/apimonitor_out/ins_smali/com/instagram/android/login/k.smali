.class public final enum Lcom/instagram/android/login/k;
.super Ljava/lang/Enum;
.source "RegMethod.java"
.field public static final enum a:Lcom/instagram/android/login/k;
.field public static final enum b:Lcom/instagram/android/login/k;
.field public static final enum c:Lcom/instagram/android/login/k;
.field private static final synthetic e:[Lcom/instagram/android/login/k;
.field private final d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/instagram/android/login/k;
const-string v1, "EmailOnly"
const-string v2, "email_only"
invoke-direct {v0, v1, v3, v2}, Lcom/instagram/android/login/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/instagram/android/login/k;->a:Lcom/instagram/android/login/k;
new-instance v0, Lcom/instagram/android/login/k;
const-string v1, "EmailFirst"
const-string v2, "email_first"
invoke-direct {v0, v1, v4, v2}, Lcom/instagram/android/login/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/instagram/android/login/k;->b:Lcom/instagram/android/login/k;
new-instance v0, Lcom/instagram/android/login/k;
const-string v1, "PhoneFirst"
const-string v2, "phone_first"
invoke-direct {v0, v1, v5, v2}, Lcom/instagram/android/login/k;-><init>(Ljava/lang/String;ILjava/lang/String;)V
sput-object v0, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
const/4 v0, 0x3
new-array v0, v0, [Lcom/instagram/android/login/k;
sget-object v1, Lcom/instagram/android/login/k;->a:Lcom/instagram/android/login/k;
aput-object v1, v0, v3
sget-object v1, Lcom/instagram/android/login/k;->b:Lcom/instagram/android/login/k;
aput-object v1, v0, v4
sget-object v1, Lcom/instagram/android/login/k;->c:Lcom/instagram/android/login/k;
aput-object v1, v0, v5
sput-object v0, Lcom/instagram/android/login/k;->e:[Lcom/instagram/android/login/k;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
iput-object p3, p0, Lcom/instagram/android/login/k;->d:Ljava/lang/String;
return-void
.end method
.method private static a(Ljava/lang/String;)Lcom/instagram/android/login/k;
.registers 6
invoke-static {}, Lcom/instagram/android/login/k;->values()[Lcom/instagram/android/login/k;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_7
if-ge v1, v3, :cond_1a
aget-object v0, v2, v1
invoke-virtual {v0}, Lcom/instagram/android/login/k;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_16
:goto_15
return-object v0
:cond_16
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_1a
sget-object v0, Lcom/instagram/android/login/k;->a:Lcom/instagram/android/login/k;
goto :goto_15
.end method
.method public static b()Lcom/instagram/android/login/k;
.registers 2
sget-object v0, Lcom/instagram/l/c;->g:Lcom/instagram/l/b;
invoke-virtual {v0}, Lcom/instagram/l/b;->h()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/login/k;->a(Ljava/lang/String;)Lcom/instagram/android/login/k;
move-result-object v0
sget-object v1, Lcom/instagram/android/login/k;->a:Lcom/instagram/android/login/k;
if-ne v0, v1, :cond_18
sget-object v0, Lcom/instagram/l/c;->h:Lcom/instagram/l/b;
invoke-virtual {v0}, Lcom/instagram/l/b;->h()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/login/k;->a(Ljava/lang/String;)Lcom/instagram/android/login/k;
move-result-object v0
:cond_18
return-object v0
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/login/k;
.registers 2
const-class v0, Lcom/instagram/android/login/k;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/android/login/k;
return-object v0
.end method
.method public static values()[Lcom/instagram/android/login/k;
.registers 1
sget-object v0, Lcom/instagram/android/login/k;->e:[Lcom/instagram/android/login/k;
invoke-virtual {v0}, [Lcom/instagram/android/login/k;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/android/login/k;
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/login/k;->d:Ljava/lang/String;
return-object v0
.end method