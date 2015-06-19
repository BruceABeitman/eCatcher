.class final Lcom/instagram/common/n/b;
.super Ljava/lang/Object;
.source "LocaleUtils.java"
.implements Ljava/lang/Iterable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/instagram/common/n/a;
.method constructor <init>(Lcom/instagram/common/n/a;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/instagram/common/n/b;->b:Lcom/instagram/common/n/a;
iput-object p2, p0, Lcom/instagram/common/n/b;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/instagram/common/n/c;
iget-object v1, p0, Lcom/instagram/common/n/b;->a:Ljava/lang/String;
invoke-direct {v0, v1}, Lcom/instagram/common/n/c;-><init>(Ljava/lang/String;)V
return-object v0
.end method