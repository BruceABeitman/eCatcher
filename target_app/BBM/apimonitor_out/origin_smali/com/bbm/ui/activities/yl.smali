.class final Lcom/bbm/ui/activities/yl;
.super Ljava/lang/Object;
.source "NewChannelCategoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/NewChannelCategoryActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/yl;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/yl;->a:Lcom/bbm/ui/activities/NewChannelCategoryActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/NewChannelCategoryActivity;->finish()V

    return-void
.end method
