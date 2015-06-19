.class public final Lcom/ford/syncV4/protocol/enums/b;
.super Lcom/ford/syncV4/util/b;
.source "SourceFile"
.field public static final b:Lcom/ford/syncV4/protocol/enums/b;
.field public static final c:Lcom/ford/syncV4/protocol/enums/b;
.field public static final d:Lcom/ford/syncV4/protocol/enums/b;
.field public static final e:Lcom/ford/syncV4/protocol/enums/b;
.field private static f:Ljava/util/Vector;
.field  a:B
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
sput-object v0, Lcom/ford/syncV4/protocol/enums/b;->f:Ljava/util/Vector;
new-instance v0, Lcom/ford/syncV4/protocol/enums/b;
const/4 v1, 0x0
const-string v2, "Control"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/protocol/enums/b;-><init>(BLjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/protocol/enums/b;->b:Lcom/ford/syncV4/protocol/enums/b;
new-instance v0, Lcom/ford/syncV4/protocol/enums/b;
const/4 v1, 0x1
const-string v2, "Single"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/protocol/enums/b;-><init>(BLjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/protocol/enums/b;->c:Lcom/ford/syncV4/protocol/enums/b;
new-instance v0, Lcom/ford/syncV4/protocol/enums/b;
const/4 v1, 0x2
const-string v2, "First"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/protocol/enums/b;-><init>(BLjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/protocol/enums/b;->d:Lcom/ford/syncV4/protocol/enums/b;
new-instance v0, Lcom/ford/syncV4/protocol/enums/b;
const/4 v1, 0x3
const-string v2, "Consecutive"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/protocol/enums/b;-><init>(BLjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/protocol/enums/b;->e:Lcom/ford/syncV4/protocol/enums/b;
sget-object v0, Lcom/ford/syncV4/protocol/enums/b;->f:Ljava/util/Vector;
sget-object v1, Lcom/ford/syncV4/protocol/enums/b;->b:Lcom/ford/syncV4/protocol/enums/b;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
sget-object v0, Lcom/ford/syncV4/protocol/enums/b;->f:Ljava/util/Vector;
sget-object v1, Lcom/ford/syncV4/protocol/enums/b;->c:Lcom/ford/syncV4/protocol/enums/b;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
sget-object v0, Lcom/ford/syncV4/protocol/enums/b;->f:Ljava/util/Vector;
sget-object v1, Lcom/ford/syncV4/protocol/enums/b;->d:Lcom/ford/syncV4/protocol/enums/b;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
sget-object v0, Lcom/ford/syncV4/protocol/enums/b;->f:Ljava/util/Vector;
sget-object v1, Lcom/ford/syncV4/protocol/enums/b;->e:Lcom/ford/syncV4/protocol/enums/b;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method private constructor <init>(BLjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/ford/syncV4/util/b;-><init>(BLjava/lang/String;)V
const/4 v0, 0x0
iput-byte v0, p0, Lcom/ford/syncV4/protocol/enums/b;->a:B
return-void
.end method
.method public static a(B)Lcom/ford/syncV4/protocol/enums/b;
.registers 2
sget-object v0, Lcom/ford/syncV4/protocol/enums/b;->f:Ljava/util/Vector;
invoke-static {v0, p0}, Lcom/ford/syncV4/protocol/enums/b;->a(Ljava/util/Vector;B)Lcom/ford/syncV4/util/b;
move-result-object v0
check-cast v0, Lcom/ford/syncV4/protocol/enums/b;
return-object v0
.end method