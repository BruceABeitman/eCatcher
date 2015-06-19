.class public final Lcom/instagram/common/e/c/e;
.super Ljava/lang/Object;
.source "IgVideoCache.java"
.implements Ljava/io/Closeable;
.field private final a:Lcom/c/a/g;
.method public constructor <init>(Lcom/c/a/g;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/instagram/common/e/c/e;->a:Lcom/c/a/g;
return-void
.end method
.method public final a()Ljava/io/FileDescriptor;
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/c/e;->a:Lcom/c/a/g;
invoke-virtual {v0}, Lcom/c/a/g;->a()Ljava/io/InputStream;
move-result-object v0
check-cast v0, Ljava/io/FileInputStream;
invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
move-result-object v0
return-object v0
.end method
.method public final close()V
.registers 2
iget-object v0, p0, Lcom/instagram/common/e/c/e;->a:Lcom/c/a/g;
invoke-virtual {v0}, Lcom/c/a/g;->close()V
return-void
.end method