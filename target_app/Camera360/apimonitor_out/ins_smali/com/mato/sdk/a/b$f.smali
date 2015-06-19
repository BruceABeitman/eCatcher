.class public final Lcom/mato/sdk/a/b$f;
.super Ljava/lang/Object;
.field private static volatile a:I
.field private static volatile b:I
.field private static volatile c:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0xa
sput v0, Lcom/mato/sdk/a/b$f;->a:I
const/16 v0, 0x64
sput v0, Lcom/mato/sdk/a/b$f;->b:I
const/4 v0, 0x0
sput-object v0, Lcom/mato/sdk/a/b$f;->c:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()I
.registers 1
sget v0, Lcom/mato/sdk/a/b$f;->a:I
return v0
.end method
.method public static a(I)V
.registers 1
sput p0, Lcom/mato/sdk/a/b$f;->a:I
return-void
.end method
.method public static a(Ljava/lang/String;)V
.registers 1
sput-object p0, Lcom/mato/sdk/a/b$f;->c:Ljava/lang/String;
return-void
.end method
.method public static b()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/mato/sdk/a/b$f;->c:Ljava/lang/String;
return-object v0
.end method
.method public static b(I)V
.registers 1
sput p0, Lcom/mato/sdk/a/b$f;->b:I
return-void
.end method
.method public static c()I
.registers 1
sget v0, Lcom/mato/sdk/a/b$f;->b:I
return v0
.end method
.method private static d()Z
.registers 2
sget v0, Lcom/mato/sdk/a/b$f;->a:I
const/4 v1, -0x1
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method