.class public Lcom/igexin/push/a/j;
.super Ljava/lang/Object;
.field public static a:[Ljava/lang/String;
.field public static b:Ljava/lang/String;
.field public static c:[Ljava/lang/String;
.field public static d:Ljava/lang/String;
.field public static e:I
.field public static f:I
.field public static g:J
.field public static h:I
.field public static i:I
.field public static j:Z
.field public static k:Z
.field public static l:Z
.field public static m:Z
.field public static n:Z
.field public static o:Z
.field public static p:Z
.field public static q:Z
.field public static r:Z
.field public static s:Z
.field public static t:J
.field public static u:Z
.field public static v:Z
.field public static w:Z
.field public static x:Lcom/igexin/push/core/bean/f;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x0
const/4 v2, 0x1
sget-object v0, Lcom/igexin/push/a/l;->a:[Ljava/lang/String;
sput-object v0, Lcom/igexin/push/a/j;->a:[Ljava/lang/String;
const-string/jumbo v0, "http://sdk.open.phone.igexin.com/api.php"
sput-object v0, Lcom/igexin/push/a/j;->b:Ljava/lang/String;
new-array v0, v2, [Ljava/lang/String;
const-string/jumbo v1, "socket://sdk.open.talk.igexin.com:5224"
aput-object v1, v0, v3
sput-object v0, Lcom/igexin/push/a/j;->c:[Ljava/lang/String;
const-string/jumbo v0, "http://sdk.open.phone.igexin.com:8003/api.php"
sput-object v0, Lcom/igexin/push/a/j;->d:Ljava/lang/String;
sput-boolean v3, Lcom/igexin/push/a/j;->j:Z
sput-boolean v2, Lcom/igexin/push/a/j;->k:Z
sput-boolean v2, Lcom/igexin/push/a/j;->l:Z
sput-boolean v2, Lcom/igexin/push/a/j;->m:Z
sput-boolean v2, Lcom/igexin/push/a/j;->n:Z
sput-boolean v2, Lcom/igexin/push/a/j;->o:Z
sput-boolean v2, Lcom/igexin/push/a/j;->p:Z
sput-boolean v2, Lcom/igexin/push/a/j;->q:Z
sput-boolean v2, Lcom/igexin/push/a/j;->r:Z
sput-boolean v3, Lcom/igexin/push/a/j;->s:Z
const-wide/32 v0, 0x100000
sput-wide v0, Lcom/igexin/push/a/j;->t:J
sput-boolean v2, Lcom/igexin/push/a/j;->u:Z
sput-boolean v2, Lcom/igexin/push/a/j;->v:Z
sput-boolean v2, Lcom/igexin/push/a/j;->w:Z
return-void
.end method