.class final Landroid/support/v4/app/am;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Landroid/support/v4/app/ak;


# direct methods
.method constructor <init>(Landroid/support/v4/app/ak;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/ak;

    invoke-static {}, Landroid/support/v4/app/ak;->a()V

    return-void
.end method
