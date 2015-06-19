.class final Lcom/facebook/e/c/l;
.super Ljava/lang/ThreadLocal;
.source "Tracer.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method private static a()Lcom/facebook/e/c/m;
.registers 2
new-instance v0, Lcom/facebook/e/c/m;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/facebook/e/c/m;-><init>(B)V
return-object v0
.end method
.method protected final synthetic initialValue()Ljava/lang/Object;
.registers 2
invoke-static {}, Lcom/facebook/e/c/l;->a()Lcom/facebook/e/c/m;
move-result-object v0
return-object v0
.end method