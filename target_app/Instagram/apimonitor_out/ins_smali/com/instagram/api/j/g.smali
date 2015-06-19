.class public abstract Lcom/instagram/api/j/g;
.super Lcom/instagram/api/j/b;
.source "AbstractStreamingIgLoaderRequest.java"
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V
return-void
.end method
.method public a(Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 2
return-void
.end method
.method public a(Lcom/instagram/api/j/q;)V
.registers 2
return-void
.end method
.method public abstract a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/q;)Z
.end method
.method public final b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public g()Ljava/io/File;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method protected final i()Lcom/instagram/api/j/h;
.registers 4
new-instance v0, Lcom/instagram/api/j/o;
iget-object v1, p0, Lcom/instagram/api/j/g;->d:Landroid/content/Context;
iget-object v2, p0, Lcom/instagram/api/j/g;->c:Lcom/instagram/api/j/a;
invoke-direct {v0, v1, p0, v2}, Lcom/instagram/api/j/o;-><init>(Landroid/content/Context;Lcom/instagram/api/j/g;Lcom/instagram/api/j/a;)V
return-object v0
.end method
.method public n()V
.registers 1
return-void
.end method