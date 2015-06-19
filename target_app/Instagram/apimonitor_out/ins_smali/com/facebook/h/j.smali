.class final Lcom/facebook/h/j;
.super Ljava/lang/Object;
.source "JsonUtil.java"
.implements Ljava/util/Map$Entry;
.field private final a:Ljava/lang/String;
.field private final b:Ljava/lang/Object;
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/h/j;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/h/j;->b:Ljava/lang/Object;
return-void
.end method
.method private a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/facebook/h/j;->a:Ljava/lang/String;
return-object v0
.end method
.method public final synthetic getKey()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Lcom/facebook/h/j;->a()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/facebook/h/j;->b:Ljava/lang/Object;
return-object v0
.end method
.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "JSONObjectEntry is immutable"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method