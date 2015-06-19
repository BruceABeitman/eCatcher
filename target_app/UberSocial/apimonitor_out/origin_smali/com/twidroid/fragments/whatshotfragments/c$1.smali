.class Lcom/twidroid/fragments/whatshotfragments/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/whatshotfragments/c;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/fragments/whatshotfragments/c;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/whatshotfragments/c;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/c$1;->a:Lcom/twidroid/fragments/whatshotfragments/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "PremiumThemeFragment"

    const-string v1, "Channel selected"

    invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/twidroid/fragments/whatshotfragments/e;

    iget-object v2, p0, Lcom/twidroid/fragments/whatshotfragments/c$1;->a:Lcom/twidroid/fragments/whatshotfragments/c;

    iget-object v3, p0, Lcom/twidroid/fragments/whatshotfragments/c$1;->a:Lcom/twidroid/fragments/whatshotfragments/c;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/twidroid/fragments/whatshotfragments/e;-><init>(Lcom/twidroid/fragments/whatshotfragments/c;Lcom/twidroid/fragments/whatshotfragments/c;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/twidroid/fragments/whatshotfragments/e;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;

    return-void
.end method
