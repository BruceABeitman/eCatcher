.class Lcom/twidroid/fragments/e/g$5$1;
.super Lcom/ubermedia/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/g$5;->a(Lcom/twidroid/fragments/e/g;Ljava/util/List;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/g;

.field final synthetic b:Lcom/twidroid/fragments/e/g$5;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/g$5;Lcom/twidroid/fragments/e/g;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/e/g$5$1;->b:Lcom/twidroid/fragments/e/g$5;

    iput-object p2, p0, Lcom/twidroid/fragments/e/g$5$1;->a:Lcom/twidroid/fragments/e/g;

    invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g$5$1;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    const-wide/16 v0, 0xbb8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_7

    :goto_5
    const/4 v0, 0x0

    return-object v0

    :catch_7
    move-exception v0

    goto :goto_5
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/g$5$1;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected a(Ljava/lang/Void;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5$1;->a:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->c()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/fragments/e/g$5$1;->b:Lcom/twidroid/fragments/e/g$5;

    iget-object v1, v1, Lcom/twidroid/fragments/e/g$5;->c:Lcom/twidroid/model/TimelineGap;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/TimelineGap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twidroid/model/TimelineGap;->a(Z)V

    iget-object v0, p0, Lcom/twidroid/fragments/e/g$5$1;->a:Lcom/twidroid/fragments/e/g;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/g;->i()Lcom/twidroid/ui/a/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->notifyDataSetChanged()V

    :cond_28
    return-void
.end method
