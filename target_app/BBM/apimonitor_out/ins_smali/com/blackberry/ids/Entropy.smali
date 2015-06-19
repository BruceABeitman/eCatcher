.class  Lcom/blackberry/ids/Entropy;
.super Ljava/lang/Object;
.source "Entropy.java"
.field private static final a:Ljava/security/SecureRandom;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/security/SecureRandom;
invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V
sput-object v0, Lcom/blackberry/ids/Entropy;->a:Ljava/security/SecureRandom;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static a()Ljava/lang/String;
.registers 2
const/16 v0, 0x10
new-array v0, v0, [B
sget-object v1, Lcom/blackberry/ids/Entropy;->a:Ljava/security/SecureRandom;
invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V
invoke-static {v0}, Lcom/blackberry/ids/StringUtils;->b([B)Ljava/lang/String;
move-result-object v0
return-object v0
.end method