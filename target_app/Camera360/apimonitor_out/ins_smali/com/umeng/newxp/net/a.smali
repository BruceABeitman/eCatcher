.class public Lcom/umeng/newxp/net/a;
.super Lcom/umeng/common/net/m;
.source "BaseXpReportClient.java"
.field private static a:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string/jumbo v2, "http://ex.puata.info/api/r?"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string/jumbo v2, "http://ex.umengcloud.com/api/r?"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string/jumbo v2, "http://ex.mobmore.com/api/r?"
aput-object v2, v0, v1
sput-object v0, Lcom/umeng/newxp/net/a;->a:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/umeng/common/net/m;-><init>()V
return-void
.end method
.method public static final getReprotList()[Ljava/lang/String;
.registers 1
sget-object v0, Lcom/umeng/newxp/net/a;->a:[Ljava/lang/String;
return-object v0
.end method
.method public send(Lcom/umeng/common/net/n;)Lcom/umeng/common/net/o$a;
.registers 5
const/4 v0, 0x0
:goto_1
sget-object v1, Lcom/umeng/newxp/net/a;->a:[Ljava/lang/String;
array-length v1, v1
if-lt v0, v1, :cond_9
sget-object v0, Lcom/umeng/common/net/o$a;->b:Lcom/umeng/common/net/o$a;
:goto_8
return-object v0
:cond_9
sget-object v1, Lcom/umeng/newxp/net/a;->a:[Ljava/lang/String;
aget-object v1, v1, v0
invoke-virtual {p1, v1}, Lcom/umeng/common/net/n;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/umeng/newxp/common/g;->d()Ljava/util/Map;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/umeng/newxp/net/a;->setHeader(Ljava/util/Map;)Lcom/umeng/common/net/r;
invoke-super {p0, p1}, Lcom/umeng/common/net/m;->send(Lcom/umeng/common/net/n;)Lcom/umeng/common/net/o$a;
move-result-object v1
sget-object v2, Lcom/umeng/common/net/o$a;->a:Lcom/umeng/common/net/o$a;
if-ne v1, v2, :cond_21
move-object v0, v1
goto :goto_8
:cond_21
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method