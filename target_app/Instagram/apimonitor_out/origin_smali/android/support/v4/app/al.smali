.class final Landroid/support/v4/app/al;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/app/ak;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ak;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/al;->a:Landroid/support/v4/app/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/al;->a:Landroid/support/v4/app/ak;

    iget-object v0, v0, Landroid/support/v4/app/ak;->b:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/al;->a:Landroid/support/v4/app/ak;

    iget-object v1, v1, Landroid/support/v4/app/ak;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
