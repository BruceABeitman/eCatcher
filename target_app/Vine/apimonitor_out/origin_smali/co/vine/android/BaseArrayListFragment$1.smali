.class Lco/vine/android/BaseArrayListFragment$1;
.super Ljava/lang/Object;
.source "BaseArrayListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/BaseArrayListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/BaseArrayListFragment;


# direct methods
.method constructor <init>(Lco/vine/android/BaseArrayListFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/BaseArrayListFragment$1;->this$0:Lco/vine/android/BaseArrayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/BaseArrayListFragment$1;->this$0:Lco/vine/android/BaseArrayListFragment;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/BaseArrayListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method
