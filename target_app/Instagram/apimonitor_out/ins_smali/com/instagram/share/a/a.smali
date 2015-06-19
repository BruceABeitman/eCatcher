.class public abstract Lcom/instagram/share/a/a;
.super Lcom/instagram/api/k/a/c;
.source "ApiPathRequest.java"
.field private final b:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/api/k/a/c;-><init>()V
iput-object p1, p0, Lcom/instagram/share/a/a;->b:Ljava/lang/String;
return-void
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method protected final d_()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/share/a/a;->b:Ljava/lang/String;
return-object v0
.end method