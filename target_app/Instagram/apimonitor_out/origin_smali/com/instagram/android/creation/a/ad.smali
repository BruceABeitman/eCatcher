.class final Lcom/instagram/android/creation/a/ad;
.super Ljava/lang/Object;
.source "FollowersShareFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/creation/a/t;


# direct methods
.method constructor <init>(Lcom/instagram/android/creation/a/t;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/creation/a/ad;->a:Lcom/instagram/android/creation/a/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/creation/a/ad;->a:Lcom/instagram/android/creation/a/t;

    invoke-static {v0}, Lcom/instagram/android/creation/a/t;->b(Lcom/instagram/android/creation/a/t;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z

    return-void
.end method
