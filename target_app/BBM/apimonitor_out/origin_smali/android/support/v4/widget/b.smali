.class final Landroid/support/v4/widget/b;
.super Ljava/lang/Object;
.source "ContentLoadingProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/ContentLoadingProgressBar;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/ContentLoadingProgressBar;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    invoke-static {v0}, Landroid/support/v4/widget/ContentLoadingProgressBar;->a(Landroid/support/v4/widget/ContentLoadingProgressBar;)Z

    iget-object v0, p0, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Landroid/support/v4/widget/ContentLoadingProgressBar;->a(Landroid/support/v4/widget/ContentLoadingProgressBar;J)J

    iget-object v0, p0, Landroid/support/v4/widget/b;->a:Landroid/support/v4/widget/ContentLoadingProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ContentLoadingProgressBar;->setVisibility(I)V

    return-void
.end method
