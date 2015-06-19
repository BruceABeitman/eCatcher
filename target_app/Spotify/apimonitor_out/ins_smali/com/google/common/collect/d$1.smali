.class final Lcom/google/common/collect/d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/google/common/base/b;
.field final synthetic a:Ljava/util/Collection;
.method constructor <init>(Ljava/util/Collection;)V
.registers 2
iput-object p1, p0, Lcom/google/common/collect/d$1;->a:Ljava/util/Collection;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/common/collect/d$1;->a:Ljava/util/Collection;
if-ne p1, v0, :cond_6
const-string p1, "(this Collection)"
:cond_6
return-object p1
.end method