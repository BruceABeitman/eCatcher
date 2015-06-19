.class final Lcom/bbm/ui/b/c;
.super Ljava/lang/Object;
.source "BBChannelDateOfBirthDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/a;


# direct methods
.method constructor <init>(Lcom/bbm/ui/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/b/c;->a:Lcom/bbm/ui/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    iget-object v0, p0, Lcom/bbm/ui/b/c;->a:Lcom/bbm/ui/b/a;

    invoke-static {v0}, Lcom/bbm/ui/b/a;->c(Lcom/bbm/ui/b/a;)V

    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
