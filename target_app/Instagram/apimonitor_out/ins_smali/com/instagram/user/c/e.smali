.class public final enum Lcom/instagram/user/c/e;
.super Ljava/lang/Enum;
.source "User.java"
.field public static final enum a:Lcom/instagram/user/c/e;
.field public static final enum b:Lcom/instagram/user/c/e;
.field public static final enum c:Lcom/instagram/user/c/e;
.field private static final synthetic d:[Lcom/instagram/user/c/e;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v0, Lcom/instagram/user/c/e;
const-string v1, "PrivacyStatusUnknown"
invoke-direct {v0, v1, v2}, Lcom/instagram/user/c/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/user/c/e;->a:Lcom/instagram/user/c/e;
new-instance v0, Lcom/instagram/user/c/e;
const-string v1, "PrivacyStatusPublic"
invoke-direct {v0, v1, v3}, Lcom/instagram/user/c/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/user/c/e;->b:Lcom/instagram/user/c/e;
new-instance v0, Lcom/instagram/user/c/e;
const-string v1, "PrivacyStatusPrivate"
invoke-direct {v0, v1, v4}, Lcom/instagram/user/c/e;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;
const/4 v0, 0x3
new-array v0, v0, [Lcom/instagram/user/c/e;
sget-object v1, Lcom/instagram/user/c/e;->a:Lcom/instagram/user/c/e;
aput-object v1, v0, v2
sget-object v1, Lcom/instagram/user/c/e;->b:Lcom/instagram/user/c/e;
aput-object v1, v0, v3
sget-object v1, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;
aput-object v1, v0, v4
sput-object v0, Lcom/instagram/user/c/e;->d:[Lcom/instagram/user/c/e;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method public static valueOf(Ljava/lang/String;)Lcom/instagram/user/c/e;
.registers 2
const-class v0, Lcom/instagram/user/c/e;
invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
move-result-object v0
check-cast v0, Lcom/instagram/user/c/e;
return-object v0
.end method
.method public static values()[Lcom/instagram/user/c/e;
.registers 1
sget-object v0, Lcom/instagram/user/c/e;->d:[Lcom/instagram/user/c/e;
invoke-virtual {v0}, [Lcom/instagram/user/c/e;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/user/c/e;
return-object v0
.end method