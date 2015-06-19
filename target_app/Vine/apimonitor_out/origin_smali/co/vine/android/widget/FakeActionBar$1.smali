.class Lco/vine/android/widget/FakeActionBar$1;
.super Ljava/lang/Object;
.source "FakeActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/widget/FakeActionBar;->onCreateOptionsMenu(Landroid/view/Menu;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/FakeActionBar;

.field final synthetic val$item:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Lco/vine/android/widget/FakeActionBar;Landroid/view/MenuItem;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/widget/FakeActionBar$1;->this$0:Lco/vine/android/widget/FakeActionBar;

    iput-object p2, p0, Lco/vine/android/widget/FakeActionBar$1;->val$item:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/widget/FakeActionBar$1;->this$0:Lco/vine/android/widget/FakeActionBar;

    #getter for: Lco/vine/android/widget/FakeActionBar;->mActivity:Landroid/support/v7/app/ActionBarActivity;
    invoke-static {v0}, Lco/vine/android/widget/FakeActionBar;->access$000(Lco/vine/android/widget/FakeActionBar;)Landroid/support/v7/app/ActionBarActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/widget/FakeActionBar$1;->val$item:Landroid/view/MenuItem;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    return-void
.end method
