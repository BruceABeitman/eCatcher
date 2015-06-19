.class  Lcom/twidroid/fragments/e/o;
.super Ljava/lang/Object;
.source "SourceFile"
.field public a:Lcom/twidroid/model/twitter/e;
.field public b:Ljava/util/List;
.field final synthetic c:Lcom/twidroid/fragments/e/n;
.method public constructor <init>(Lcom/twidroid/fragments/e/n;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/o;->c:Lcom/twidroid/fragments/e/n;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/twidroid/model/twitter/e;
invoke-direct {v0}, Lcom/twidroid/model/twitter/e;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/e/o;->a:Lcom/twidroid/model/twitter/e;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/e/o;->b:Ljava/util/List;
return-void
.end method