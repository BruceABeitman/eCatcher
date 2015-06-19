.class Lcom/twidroid/uberchannels/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/uberchannels/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/uberchannels/models/UberTopic;

.field final synthetic b:Lcom/twidroid/uberchannels/a;


# direct methods
.method constructor <init>(Lcom/twidroid/uberchannels/a;Lcom/twidroid/uberchannels/models/UberTopic;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/uberchannels/a$1;->b:Lcom/twidroid/uberchannels/a;

    iput-object p2, p0, Lcom/twidroid/uberchannels/a$1;->a:Lcom/twidroid/uberchannels/models/UberTopic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_56

    iget-object v2, p0, Lcom/twidroid/uberchannels/a$1;->b:Lcom/twidroid/uberchannels/a;

    invoke-static {v2, v1}, Lcom/twidroid/uberchannels/a;->a(Lcom/twidroid/uberchannels/a;Z)Z

    iget-object v2, p0, Lcom/twidroid/uberchannels/a$1;->b:Lcom/twidroid/uberchannels/a;

    iget-object v3, p0, Lcom/twidroid/uberchannels/a$1;->a:Lcom/twidroid/uberchannels/models/UberTopic;

    iget v3, v3, Lcom/twidroid/uberchannels/models/UberTopic;->h:I

    invoke-virtual {v2, v3}, Lcom/twidroid/uberchannels/a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v3, p0, Lcom/twidroid/uberchannels/a$1;->b:Lcom/twidroid/uberchannels/a;

    invoke-static {v3}, Lcom/twidroid/uberchannels/a;->a(Lcom/twidroid/uberchannels/a;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/twidroid/uberchannels/a$1;->a:Lcom/twidroid/uberchannels/models/UberTopic;

    iget v4, v4, Lcom/twidroid/uberchannels/models/UberTopic;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_2a
    iget-object v3, p0, Lcom/twidroid/uberchannels/a$1;->b:Lcom/twidroid/uberchannels/a;

    check-cast p1, Landroid/widget/TextView;

    if-nez v2, :cond_31

    move v0, v1

    :cond_31
    invoke-static {v3, p1, v0}, Lcom/twidroid/uberchannels/a;->a(Lcom/twidroid/uberchannels/a;Landroid/widget/TextView;Z)V

    if-nez v2, :cond_43

    iget-object v0, p0, Lcom/twidroid/uberchannels/a$1;->b:Lcom/twidroid/uberchannels/a;

    invoke-static {v0}, Lcom/twidroid/uberchannels/a;->b(Lcom/twidroid/uberchannels/a;)Lcom/twidroid/fragments/whatshotfragments/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_43
    :goto_43
    return v1

    :cond_44
    iget-object v3, p0, Lcom/twidroid/uberchannels/a$1;->b:Lcom/twidroid/uberchannels/a;

    invoke-static {v3}, Lcom/twidroid/uberchannels/a;->a(Lcom/twidroid/uberchannels/a;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/twidroid/uberchannels/a$1;->a:Lcom/twidroid/uberchannels/models/UberTopic;

    iget v4, v4, Lcom/twidroid/uberchannels/models/UberTopic;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_56
    move v1, v0

    goto :goto_43
.end method
