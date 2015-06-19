.class Lcom/twidroid/fragments/e/ab$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/e/ab;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/e/ab;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/e/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/e/ab$6;->a:Lcom/twidroid/fragments/e/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4

    const v0, 0x7f0900e4

    if-ne p2, v0, :cond_10

    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$6;->a:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->B()V

    :goto_a
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$6;->a:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->d()V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/twidroid/fragments/e/ab$6;->a:Lcom/twidroid/fragments/e/ab;

    invoke-virtual {v0}, Lcom/twidroid/fragments/e/ab;->C()V

    goto :goto_a
.end method
