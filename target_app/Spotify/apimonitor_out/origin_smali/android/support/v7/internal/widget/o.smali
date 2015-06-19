.class final Landroid/support/v7/internal/widget/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/l;

.field private final b:Landroid/support/v7/internal/widget/n;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/l;Landroid/support/v7/internal/widget/n;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/widget/o;->a:Landroid/support/v7/internal/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/internal/widget/o;->b:Landroid/support/v7/internal/widget/n;

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v7/internal/widget/o;->b:Landroid/support/v7/internal/widget/n;

    iget-object v1, p0, Landroid/support/v7/internal/widget/o;->a:Landroid/support/v7/internal/widget/l;

    invoke-interface {v0, p2, p3}, Landroid/support/v7/internal/widget/n;->a(Landroid/view/View;I)V

    return-void
.end method
