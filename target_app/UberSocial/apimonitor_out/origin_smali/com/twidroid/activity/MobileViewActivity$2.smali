.class Lcom/twidroid/activity/MobileViewActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/MobileViewActivity;->b(Landroid/widget/FrameLayout;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout;

.field final synthetic b:Lcom/twidroid/activity/MobileViewActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/MobileViewActivity;Landroid/widget/FrameLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/activity/MobileViewActivity$2;->b:Lcom/twidroid/activity/MobileViewActivity;

    iput-object p2, p0, Lcom/twidroid/activity/MobileViewActivity$2;->a:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$2;->a:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
