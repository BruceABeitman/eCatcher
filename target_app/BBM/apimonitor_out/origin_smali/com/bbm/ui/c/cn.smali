.class final Lcom/bbm/ui/c/cn;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/ck;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ck;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/cn;->a:Lcom/bbm/ui/c/ck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v2, 0x1

    const-string v0, "mOnItemLongClickListener onItemLongClick"

    const-class v1, Lcom/bbm/ui/c/ck;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cn;->a:Lcom/bbm/ui/c/ck;

    invoke-static {v0, p3}, Lcom/bbm/ui/c/ck;->a(Lcom/bbm/ui/c/ck;I)I

    iget-object v0, p0, Lcom/bbm/ui/c/cn;->a:Lcom/bbm/ui/c/ck;

    invoke-static {v0, v2}, Lcom/bbm/ui/c/ck;->a(Lcom/bbm/ui/c/ck;Z)Z

    iget-object v0, p0, Lcom/bbm/ui/c/cn;->a:Lcom/bbm/ui/c/ck;

    invoke-static {v0}, Lcom/bbm/ui/c/ck;->d(Lcom/bbm/ui/c/ck;)Lcom/bbm/j/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return v2
.end method
