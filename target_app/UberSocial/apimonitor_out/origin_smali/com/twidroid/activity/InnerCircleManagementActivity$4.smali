.class Lcom/twidroid/activity/InnerCircleManagementActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/InnerCircleManagementActivity;->g()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/InnerCircleManagementActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$4;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    iget-object v1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$4;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/User;

    invoke-static {v1, v0}, Lcom/twidroid/activity/InnerCircleManagementActivity;->a(Lcom/twidroid/activity/InnerCircleManagementActivity;Lcom/twidroid/model/twitter/User;)V

    return-void
.end method
