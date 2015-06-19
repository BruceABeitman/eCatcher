.class public final Lcom/bbm/ui/activities/wf;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/d/ea;

.field final synthetic b:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/d/ea;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/wf;->b:Lcom/bbm/ui/activities/MainActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/wf;->a:Lcom/bbm/d/ea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "CategoriesContextSlideMenu Bottom Item Clicked"

    const-class v1, Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/wf;->a:Lcom/bbm/d/ea;

    invoke-static {v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a(Lcom/bbm/d/ea;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/wf;->b:Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    return-void
.end method
