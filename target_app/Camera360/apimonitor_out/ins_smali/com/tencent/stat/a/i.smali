.class public Lcom/tencent/stat/a/i;
.super Lcom/tencent/stat/a/e;
.field private static a:Ljava/lang/String;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/tencent/stat/a/i;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;I)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;I)V
iput-object v0, p0, Lcom/tencent/stat/a/i;->l:Ljava/lang/String;
iput-object v0, p0, Lcom/tencent/stat/a/i;->m:Ljava/lang/String;
invoke-static {p1}, Lcom/tencent/stat/common/k;->p(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/tencent/stat/a/i;->l:Ljava/lang/String;
sget-object v0, Lcom/tencent/stat/a/i;->a:Ljava/lang/String;
if-nez v0, :cond_18
invoke-static {p1}, Lcom/tencent/stat/common/k;->m(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/tencent/stat/a/i;->a:Ljava/lang/String;
:cond_18
return-void
.end method
.method public a()Lcom/tencent/stat/a/f;
.registers 2
sget-object v0, Lcom/tencent/stat/a/f;->h:Lcom/tencent/stat/a/f;
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/tencent/stat/a/i;->m:Ljava/lang/String;
return-void
.end method
.method public a(Lorg/json/JSONObject;)Z
.registers 4
const-string/jumbo v0, "op"
sget-object v1, Lcom/tencent/stat/a/i;->a:Ljava/lang/String;
invoke-static {p1, v0, v1}, Lcom/tencent/stat/common/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "cn"
iget-object v1, p0, Lcom/tencent/stat/a/i;->l:Ljava/lang/String;
invoke-static {p1, v0, v1}, Lcom/tencent/stat/common/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "sp"
iget-object v1, p0, Lcom/tencent/stat/a/i;->m:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const/4 v0, 0x1
return v0
.end method