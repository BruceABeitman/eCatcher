.class Lcom/twidroid/fragments/base/d$3;
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

.field final synthetic b:Lcom/twidroid/fragments/base/d;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/base/d;I)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/base/d$3;->b:Lcom/twidroid/fragments/base/d;

    iput p2, p0, Lcom/twidroid/fragments/base/d$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/base/d$3;->b:Lcom/twidroid/fragments/base/d;

    invoke-virtual {v0}, Lcom/twidroid/fragments/base/d;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/twidroid/fragments/base/d$3;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void
.end method
