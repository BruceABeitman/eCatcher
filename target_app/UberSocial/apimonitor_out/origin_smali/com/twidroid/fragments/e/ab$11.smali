.class Lcom/twidroid/fragments/e/ab$11;
.super Lcom/twidroid/ui/a/ad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/ab;->Z()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/ab;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/ab;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/twidroid/fragments/e/ab$11;->a:Lcom/twidroid/fragments/e/ab;

    invoke-direct {p0, p2, p3}, Lcom/twidroid/ui/a/ad;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$11;->a:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
