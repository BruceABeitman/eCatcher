.class Lcom/twidroid/fragments/e/g$6$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/g$6;->a(Lcom/twidroid/model/twitter/c;Lcom/twidroid/model/twitter/DirectMessage;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/twidroid/fragments/e/g$6;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/g$6;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/e/g$6$3;->b:Lcom/twidroid/fragments/e/g$6;

    iput-object p2, p0, Lcom/twidroid/fragments/e/g$6$3;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$6$3;->b:Lcom/twidroid/fragments/e/g$6;

    iget-object v0, v0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/g$6$3;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->d(Ljava/util/List;)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$6$3;->b:Lcom/twidroid/fragments/e/g$6;

    iget-object v0, v0, Lcom/twidroid/fragments/e/g$6;->a:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    return-void
.end method
