.class final Lcom/bbm/ui/av;
.super Ljava/lang/Object;
.source "DateTimePickerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/DateTimePickerView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/DateTimePickerView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v0}, Lcom/bbm/ui/DateTimePickerView;->a(Lcom/bbm/ui/DateTimePickerView;)Z

    move-result v0

    if-nez v0, :cond_51

    const-string v0, "dateTimePicker Clicked"

    const-class v1, Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Lcom/bbm/ui/ax;

    iget-object v1, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    iget-object v2, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v2}, Lcom/bbm/ui/DateTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v3}, Lcom/bbm/ui/DateTimePickerView;->getMode()I

    move-result v3

    iget-object v4, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-virtual {v4}, Lcom/bbm/ui/DateTimePickerView;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/ax;-><init>(Lcom/bbm/ui/DateTimePickerView;Landroid/content/Context;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v1}, Lcom/bbm/ui/DateTimePickerView;->b(Lcom/bbm/ui/DateTimePickerView;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-object v1, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v1}, Lcom/bbm/ui/DateTimePickerView;->b(Lcom/bbm/ui/DateTimePickerView;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/bbm/ui/ax;->b:Ljava/util/Date;

    :cond_38
    iget-object v1, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v1}, Lcom/bbm/ui/DateTimePickerView;->c(Lcom/bbm/ui/DateTimePickerView;)Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v1}, Lcom/bbm/ui/DateTimePickerView;->c(Lcom/bbm/ui/DateTimePickerView;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v0, Lcom/bbm/ui/ax;->a:Ljava/util/Date;

    :cond_48
    invoke-virtual {v0}, Lcom/bbm/ui/ax;->show()V

    iget-object v0, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bbm/ui/DateTimePickerView;->a(Lcom/bbm/ui/DateTimePickerView;Z)Z

    :cond_51
    iget-object v0, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v0}, Lcom/bbm/ui/DateTimePickerView;->d(Lcom/bbm/ui/DateTimePickerView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_64

    iget-object v0, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-static {v0}, Lcom/bbm/ui/DateTimePickerView;->d(Lcom/bbm/ui/DateTimePickerView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/av;->a:Lcom/bbm/ui/DateTimePickerView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_64
    return-void
.end method
