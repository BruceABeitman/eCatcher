.class Lcom/twidroid/fragments/base/d$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/base/d;->q()V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twidroid/fragments/base/TimelineState;

.field final synthetic c:Lcom/twidroid/fragments/base/d;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/base/d;ILcom/twidroid/fragments/base/TimelineState;)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/fragments/base/d$5;->c:Lcom/twidroid/fragments/base/d;

    iput p2, p0, Lcom/twidroid/fragments/base/d$5;->a:I

    iput-object p3, p0, Lcom/twidroid/fragments/base/d$5;->b:Lcom/twidroid/fragments/base/TimelineState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/base/d$5;->c:Lcom/twidroid/fragments/base/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/d;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/twidroid/fragments/base/d$5;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    iget-object v0, p0, Lcom/twidroid/fragments/base/d$5;->b:Lcom/twidroid/fragments/base/TimelineState;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/twidroid/fragments/base/d$5;->c:Lcom/twidroid/fragments/base/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/d;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twidroid/fragments/base/d$5;->b:Lcom/twidroid/fragments/base/TimelineState;

    invoke-virtual {v2}, Lcom/twidroid/fragments/base/TimelineState;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->scrollBy(II)V

    :cond_1f
    return-void
.end method
