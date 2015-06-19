.class final Lcom/bbm/ui/activities/aeh;
.super Ljava/lang/Object;
.source "SelectCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/SelectCategoryActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/SelectCategoryActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aeh;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "headerActionBar NegativeButton Clicked"

    const-class v1, Lcom/bbm/ui/activities/SelectCategoryActivity;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aeh;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/SelectCategoryActivity;->setResult(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/aeh;->a:Lcom/bbm/ui/activities/SelectCategoryActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->finish()V

    return-void
.end method
