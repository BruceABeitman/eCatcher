.class final Lcom/google/b/a/n;
.super Ljava/lang/ThreadLocal;
.source "Platform.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V
return-void
.end method
.method protected final bridge synthetic initialValue()Ljava/lang/Object;
.registers 2
const/16 v0, 0x400
new-array v0, v0, [C
return-object v0
.end method