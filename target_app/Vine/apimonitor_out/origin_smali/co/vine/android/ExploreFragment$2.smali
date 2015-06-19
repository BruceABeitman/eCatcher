.class Lco/vine/android/ExploreFragment$2;
.super Ljava/lang/Object;
.source "ExploreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/ExploreFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ExploreFragment;


# direct methods
.method constructor <init>(Lco/vine/android/ExploreFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ExploreFragment$2;->this$0:Lco/vine/android/ExploreFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lco/vine/android/ExploreFragment$2;->this$0:Lco/vine/android/ExploreFragment;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lco/vine/android/ExploreFragment$2;->this$0:Lco/vine/android/ExploreFragment;

    invoke-virtual {v2}, Lco/vine/android/ExploreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lco/vine/android/SearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lco/vine/android/ExploreFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
