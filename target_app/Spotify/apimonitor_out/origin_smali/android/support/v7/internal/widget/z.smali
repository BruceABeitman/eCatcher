.class final Landroid/support/v7/internal/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ProgressBarICS;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method constructor <init>(Landroid/support/v7/internal/widget/ProgressBarICS;II)V
    .registers 5

    iput-object p1, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/support/v7/internal/widget/z;->b:I

    iput p3, p0, Landroid/support/v7/internal/widget/z;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/z;->d:Z

    return-void
.end method


# virtual methods
.method public final a(II)V
    .registers 4

    iput p1, p0, Landroid/support/v7/internal/widget/z;->b:I

    iput p2, p0, Landroid/support/v7/internal/widget/z;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/widget/z;->d:Z

    return-void
.end method

.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/support/v7/internal/widget/ProgressBarICS;

    iget v1, p0, Landroid/support/v7/internal/widget/z;->b:I

    iget v2, p0, Landroid/support/v7/internal/widget/z;->c:I

    iget-boolean v3, p0, Landroid/support/v7/internal/widget/z;->d:Z

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/support/v7/internal/widget/ProgressBarICS;II)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/z;->a:Landroid/support/v7/internal/widget/ProgressBarICS;

    invoke-static {v0, p0}, Landroid/support/v7/internal/widget/ProgressBarICS;->a(Landroid/support/v7/internal/widget/ProgressBarICS;Landroid/support/v7/internal/widget/z;)Landroid/support/v7/internal/widget/z;

    return-void
.end method
