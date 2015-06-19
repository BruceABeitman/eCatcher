.class Landroid/support/v7/internal/widget/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/n;

.field private final b:Landroid/support/v7/internal/widget/q;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/widget/n;Landroid/support/v7/internal/widget/q;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v7/internal/widget/r;->a:Landroid/support/v7/internal/widget/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/internal/widget/r;->b:Landroid/support/v7/internal/widget/q;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12

    iget-object v0, p0, Landroid/support/v7/internal/widget/r;->b:Landroid/support/v7/internal/widget/q;

    iget-object v1, p0, Landroid/support/v7/internal/widget/r;->a:Landroid/support/v7/internal/widget/n;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v7/internal/widget/q;->a(Landroid/support/v7/internal/widget/n;Landroid/view/View;IJ)V

    return-void
.end method
