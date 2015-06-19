.class final Landroid/support/v4/app/x$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/x;


# direct methods
.method constructor <init>(Landroid/support/v4/app/x;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/x$1;->a:Landroid/support/v4/app/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/app/x$1;->a:Landroid/support/v4/app/x;

    iget-object v0, v0, Landroid/support/v4/app/x;->b:Landroid/widget/ListView;

    iget-object v1, p0, Landroid/support/v4/app/x$1;->a:Landroid/support/v4/app/x;

    iget-object v1, v1, Landroid/support/v4/app/x;->b:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
