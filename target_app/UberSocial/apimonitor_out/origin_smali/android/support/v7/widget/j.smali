.class Landroid/support/v7/widget/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/j;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/h;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/h;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/widget/j;->a:Landroid/support/v7/widget/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/h;Landroid/support/v7/widget/h$1;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/j;-><init>(Landroid/support/v7/widget/h;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/widget/d;Landroid/content/Intent;)Z
    .registers 5

    iget-object v0, p0, Landroid/support/v7/widget/j;->a:Landroid/support/v7/widget/h;

    invoke-static {v0}, Landroid/support/v7/widget/h;->c(Landroid/support/v7/widget/h;)Landroid/support/v7/widget/i;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Landroid/support/v7/widget/j;->a:Landroid/support/v7/widget/h;

    invoke-static {v0}, Landroid/support/v7/widget/h;->c(Landroid/support/v7/widget/h;)Landroid/support/v7/widget/i;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/j;->a:Landroid/support/v7/widget/h;

    invoke-interface {v0, v1, p2}, Landroid/support/v7/widget/i;->a(Landroid/support/v7/widget/h;Landroid/content/Intent;)Z

    :cond_13
    const/4 v0, 0x0

    return v0
.end method
