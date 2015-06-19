.class  Lcom/facebook/ai$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/facebook/an;
.field final synthetic a:Ljava/util/ArrayList;
.field final synthetic b:Lcom/facebook/ai;
.method constructor <init>(Lcom/facebook/ai;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/facebook/ai$5;->b:Lcom/facebook/ai;
iput-object p2, p0, Lcom/facebook/ai$5;->a:Ljava/util/ArrayList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/facebook/ai$5;->a:Ljava/util/ArrayList;
const-string v1, "%s=%s"
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
const/4 v3, 0x1
const-string v4, "UTF-8"
invoke-static {p2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method