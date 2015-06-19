.class Landroid/support/v7/widget/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/h;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/h;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/k;->a:Landroid/support/v7/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/h;Landroid/support/v7/widget/h$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/k;-><init>(Landroid/support/v7/widget/h;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Landroid/support/v7/widget/k;->a:Landroid/support/v7/widget/h;

    invoke-static {v0}, Landroid/support/v7/widget/h;->a(Landroid/support/v7/widget/h;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/k;->a:Landroid/support/v7/widget/h;

    invoke-static {v1}, Landroid/support/v7/widget/h;->b(Landroid/support/v7/widget/h;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/d;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v7/internal/widget/d;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/d;->b(I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_28

    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/support/v7/widget/k;->a:Landroid/support/v7/widget/h;

    invoke-static {v1}, Landroid/support/v7/widget/h;->a(Landroid/support/v7/widget/h;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_28
    const/4 v0, 0x1

    return v0
.end method
