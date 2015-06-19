.class final Lcom/bbm/ui/views/s;
.super Lcom/bbm/j/k;
.source "EphemeralPickerPagerV2.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;


# direct methods
.method constructor <init>(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/views/s;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/views/s;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;

    const v1, 0x7f0a05a3

    invoke-virtual {v0, v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/bbm/ui/views/s;->a:Lcom/bbm/ui/views/EphemeralPickerPagerV2;

    invoke-static {v1}, Lcom/bbm/ui/views/EphemeralPickerPagerV2;->c(Lcom/bbm/ui/views/EphemeralPickerPagerV2;)Lcom/bbm/j/r;

    move-result-object v1

    invoke-interface {v1}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_24

    const v1, 0x7f0e0656

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_23
    return-void

    :cond_24
    const v1, 0x7f0e0553

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_23
.end method
