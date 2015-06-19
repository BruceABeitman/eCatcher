.class public final Lcom/instagram/common/a/a/q;
.super Lcom/instagram/common/a/a/e;
.source "SerialRequestPerformer.java"
.method public constructor <init>()V
.registers 3
invoke-static {}, Lcom/instagram/common/u/c/e;->a()Lcom/instagram/common/u/c/e;
move-result-object v0
const-string v1, "serialrequestperformer"
invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/u/c/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/u/c/e;->c()Lcom/instagram/common/u/c/d;
move-result-object v0
invoke-direct {p0, v0}, Lcom/instagram/common/a/a/e;-><init>(Ljava/util/concurrent/Executor;)V
return-void
.end method