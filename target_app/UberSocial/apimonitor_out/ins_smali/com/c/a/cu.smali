.class final Lcom/c/a/cu;
.super Ljava/lang/Object;
.implements Lcom/c/a/dk;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/String;)Ljava/lang/Integer;
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public synthetic b(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/c/a/cu;->a(Ljava/lang/String;)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method