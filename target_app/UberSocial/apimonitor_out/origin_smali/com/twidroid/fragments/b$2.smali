.class Lcom/twidroid/fragments/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/b;->a(Lcom/twidroid/model/twitter/DirectMessage;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/twidroid/fragments/b;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/b;I)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/b$2;->b:Lcom/twidroid/fragments/b;

    iput p2, p0, Lcom/twidroid/fragments/b$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/b$2;->b:Lcom/twidroid/fragments/b;

    iget-object v0, v0, Lcom/twidroid/fragments/b;->j:Lcom/twidroid/ui/widgets/AccountSpinner;

    iget v1, p0, Lcom/twidroid/fragments/b$2;->a:I

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setSelection(I)V

    return-void
.end method
