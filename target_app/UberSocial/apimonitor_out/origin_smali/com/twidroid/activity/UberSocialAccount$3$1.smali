.class Lcom/twidroid/activity/UberSocialAccount$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/activity/UberSocialAccount$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/activity/UberSocialAccount$3;


# direct methods
.method constructor <init>(Lcom/twidroid/activity/UberSocialAccount$3;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/activity/UberSocialAccount$3$1;->a:Lcom/twidroid/activity/UberSocialAccount$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
