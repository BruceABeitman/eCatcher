.class Lcom/twidroid/activity/InnerCircleManagementActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/InnerCircleManagementActivity;->b(Lcom/twidroid/model/twitter/User;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/InnerCircleManagementActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/InnerCircleManagementActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/InnerCircleManagementActivity$6;->a:Lcom/twidroid/activity/InnerCircleManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method