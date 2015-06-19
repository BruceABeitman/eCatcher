.class public final Lcom/ford/syncV4/protocol/enums/a;
.super Lcom/ford/syncV4/util/b;
.source "SourceFile"
.field public static final a:Lcom/ford/syncV4/protocol/enums/a;
.field public static final b:Lcom/ford/syncV4/protocol/enums/a;
.field public static final c:Lcom/ford/syncV4/protocol/enums/a;
.field public static final d:Lcom/ford/syncV4/protocol/enums/a;
.field private static e:Ljava/util/Vector;
.field private f:B
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/util/Vector;
invoke-direct {v0}, Ljava/util/Vector;-><init>()V
sput-object v0, Lcom/ford/syncV4/protocol/enums/a;->e:Ljava/util/Vector;
new-instance v0, Lcom/ford/syncV4/protocol/enums/a;
const/4 v1, 0x1
const-string v2, "StartSession"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/protocol/enums/a;-><init>(BLjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/protocol/enums/a;->a:Lcom/ford/syncV4/protocol/enums/a;
new-instance v0, Lcom/ford/syncV4/protocol/enums/a;
const/4 v1, 0x2
const-string v2, "StartSessionACK"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/protocol/enums/a;-><init>(BLjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/protocol/enums/a;->b:Lcom/ford/syncV4/protocol/enums/a;
new-instance v0, Lcom/ford/syncV4/protocol/enums/a;
const/4 v1, 0x3
const-string v2, "StartSessionNACK"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/protocol/enums/a;-><init>(BLjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/protocol/enums/a;->c:Lcom/ford/syncV4/protocol/enums/a;
new-instance v0, Lcom/ford/syncV4/protocol/enums/a;
const/4 v1, 0x4
const-string v2, "EndSession"
invoke-direct {v0, v1, v2}, Lcom/ford/syncV4/protocol/enums/a;-><init>(BLjava/lang/String;)V
sput-object v0, Lcom/ford/syncV4/protocol/enums/a;->d:Lcom/ford/syncV4/protocol/enums/a;
sget-object v0, Lcom/ford/syncV4/protocol/enums/a;->e:Ljava/util/Vector;
sget-object v1, Lcom/ford/syncV4/protocol/enums/a;->a:Lcom/ford/syncV4/protocol/enums/a;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
sget-object v0, Lcom/ford/syncV4/protocol/enums/a;->e:Ljava/util/Vector;
sget-object v1, Lcom/ford/syncV4/protocol/enums/a;->b:Lcom/ford/syncV4/protocol/enums/a;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
sget-object v0, Lcom/ford/syncV4/protocol/enums/a;->e:Ljava/util/Vector;
sget-object v1, Lcom/ford/syncV4/protocol/enums/a;->c:Lcom/ford/syncV4/protocol/enums/a;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
sget-object v0, Lcom/ford/syncV4/protocol/enums/a;->e:Ljava/util/Vector;
sget-object v1, Lcom/ford/syncV4/protocol/enums/a;->d:Lcom/ford/syncV4/protocol/enums/a;
invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method private constructor <init>(BLjava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/ford/syncV4/util/b;-><init>(BLjava/lang/String;)V
const/4 v0, 0x0
iput-byte v0, p0, Lcom/ford/syncV4/protocol/enums/a;->f:B
return-void
.end method