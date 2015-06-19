.class  Lcom/umeng/common/net/q;
.super Ljava/lang/Object;
.source "ResUtil.java"
.implements Ljava/lang/Runnable;
.field private final synthetic a:Ljava/io/File;
.method constructor <init>(Ljava/io/File;)V
.registers 2
iput-object p1, p0, Lcom/umeng/common/net/q;->a:Ljava/io/File;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/umeng/common/net/q;->a:Ljava/io/File;
invoke-static {v0}, Lcom/umeng/common/net/p;->b(Ljava/io/File;)Z
const/4 v0, 0x0
invoke-static {v0}, Lcom/umeng/common/net/p;->a(Ljava/lang/Thread;)V
return-void
.end method