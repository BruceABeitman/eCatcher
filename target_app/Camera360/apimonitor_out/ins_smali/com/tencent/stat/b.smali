.class  Lcom/tencent/stat/b;
.super Ljava/lang/Object;
.field  a:I
.field  b:Lorg/json/JSONObject;
.field  c:Ljava/lang/String;
.field  d:I
.method public constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
iput-object v0, p0, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/tencent/stat/b;->c:Ljava/lang/String;
const/4 v0, 0x0
iput v0, p0, Lcom/tencent/stat/b;->d:I
iput p1, p0, Lcom/tencent/stat/b;->a:I
return-void
.end method
.method  a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/tencent/stat/b;->b:Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method