.class final Lcom/instagram/android/fragment/ah;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/fragment/ab;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/ah;->a:Lcom/instagram/android/fragment/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/ah;->a:Lcom/instagram/android/fragment/ab;

    invoke-static {v0}, Lcom/instagram/android/fragment/ab;->g(Lcom/instagram/android/fragment/ab;)Landroid/widget/CompoundButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z

    return-void
.end method
