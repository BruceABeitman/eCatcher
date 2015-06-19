.class Lcom/flurry/sdk/db$4;
.super Lcom/flurry/sdk/fc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/db;->a(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/db;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/db;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/flurry/sdk/db$4;->c:Lcom/flurry/sdk/db;

    iput-object p2, p0, Lcom/flurry/sdk/db$4;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/flurry/sdk/db$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/fc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 5

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/flurry/sdk/db$4;->c:Lcom/flurry/sdk/db;

    iget-object v0, v0, Lcom/flurry/sdk/db;->f:Lcom/flurry/sdk/dd;

    iget-object v1, p0, Lcom/flurry/sdk/db$4;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/flurry/sdk/db$4;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/dd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/flurry/sdk/db$4;->c:Lcom/flurry/sdk/db;

    iget-object v0, v0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error. Block wasn\'t deleted with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/db$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2b
    iget-object v0, p0, Lcom/flurry/sdk/db$4;->c:Lcom/flurry/sdk/db;

    iget-object v0, v0, Lcom/flurry/sdk/db;->e:Ljava/util/Set;

    iget-object v1, p0, Lcom/flurry/sdk/db$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    iget-object v0, p0, Lcom/flurry/sdk/db$4;->c:Lcom/flurry/sdk/db;

    iget-object v0, v0, Lcom/flurry/sdk/db;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error. Block with id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/db$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not in progress state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_59
    return-void
.end method
