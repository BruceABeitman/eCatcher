.class public Lcom/igexin/push/a/l;
.super Ljava/lang/Object;
.field public static final a:[Ljava/lang/String;
.field public static b:Ljava/lang/String;
.field public static c:Ljava/lang/String;
.field public static d:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "socket://sdk.open.talk.igexin.com:5224"
aput-object v2, v0, v1
sput-object v0, Lcom/igexin/push/a/l;->a:[Ljava/lang/String;
const-string/jumbo v0, "none"
sput-object v0, Lcom/igexin/push/a/l;->b:Ljava/lang/String;
const-string/jumbo v0, "/sdcard/libs/"
sput-object v0, Lcom/igexin/push/a/l;->c:Ljava/lang/String;
const-string/jumbo v0, "0"
sput-object v0, Lcom/igexin/push/a/l;->d:Ljava/lang/String;
return-void
.end method