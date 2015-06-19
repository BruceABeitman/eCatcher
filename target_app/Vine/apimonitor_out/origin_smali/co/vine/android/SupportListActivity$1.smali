.class Lco/vine/android/SupportListActivity$1;
.super Ljava/lang/Object;
.source "SupportListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/SupportListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/SupportListActivity;


# direct methods
.method constructor <init>(Lco/vine/android/SupportListActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SupportListActivity$1;->this$0:Lco/vine/android/SupportListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/SupportListActivity$1;->this$0:Lco/vine/android/SupportListActivity;

    iget-object v0, v0, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/SupportListActivity$1;->this$0:Lco/vine/android/SupportListActivity;

    iget-object v1, v1, Lco/vine/android/SupportListActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
