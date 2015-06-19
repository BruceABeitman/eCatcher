.class final Lcom/facebook/e/c/h;
.super Lcom/facebook/d/e/c;
.source "TraceEvent.java"
.method constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/d/e/c;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method private static a(Lcom/facebook/e/c/g;)V
.registers 1
invoke-static {p0}, Lcom/facebook/e/c/g;->b(Lcom/facebook/e/c/g;)Ljava/lang/String;
invoke-static {p0}, Lcom/facebook/e/c/g;->c(Lcom/facebook/e/c/g;)Ljava/lang/String;
return-void
.end method
.method private static b()Lcom/facebook/e/c/g;
.registers 2
new-instance v0, Lcom/facebook/e/c/g;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/facebook/e/c/g;-><init>(B)V
return-object v0
.end method
.method public final synthetic a()Ljava/lang/Object;
.registers 2
invoke-static {}, Lcom/facebook/e/c/h;->b()Lcom/facebook/e/c/g;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/facebook/e/c/g;
invoke-static {p1}, Lcom/facebook/e/c/h;->a(Lcom/facebook/e/c/g;)V
return-void
.end method