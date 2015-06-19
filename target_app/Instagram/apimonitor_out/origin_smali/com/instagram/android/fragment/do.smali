.class final Lcom/instagram/android/fragment/do;
.super Ljava/lang/Object;
.source "PreloadOptionsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/instagram/android/fragment/dl;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/dl;Landroid/widget/CompoundButton;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/fragment/do;->b:Lcom/instagram/android/fragment/dl;

    iput-object p2, p0, Lcom/instagram/android/fragment/do;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/fragment/do;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z

    return-void
.end method
