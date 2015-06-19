.class final Lcom/bbm/ui/views/t;
.super Ljava/lang/Object;
.source "EphemeralPickerPin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/views/EphemeralPickerPin;


# direct methods
.method constructor <init>(Lcom/bbm/ui/views/EphemeralPickerPin;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/views/t;->a:Lcom/bbm/ui/views/EphemeralPickerPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/views/t;->a:Lcom/bbm/ui/views/EphemeralPickerPin;

    invoke-static {v0}, Lcom/bbm/ui/views/EphemeralPickerPin;->a(Lcom/bbm/ui/views/EphemeralPickerPin;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    iget-object v0, p0, Lcom/bbm/ui/views/t;->a:Lcom/bbm/ui/views/EphemeralPickerPin;

    invoke-static {v0}, Lcom/bbm/ui/views/EphemeralPickerPin;->b(Lcom/bbm/ui/views/EphemeralPickerPin;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bbm/ui/views/t;->a:Lcom/bbm/ui/views/EphemeralPickerPin;

    invoke-static {v0}, Lcom/bbm/ui/views/EphemeralPickerPin;->b(Lcom/bbm/ui/views/EphemeralPickerPin;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/views/t;->a:Lcom/bbm/ui/views/EphemeralPickerPin;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1d
    return-void
.end method
