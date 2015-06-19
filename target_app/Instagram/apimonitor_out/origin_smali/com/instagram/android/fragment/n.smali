.class final Lcom/instagram/android/fragment/n;
.super Ljava/lang/Object;
.source "CameraSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/CompoundButton;

.field final synthetic b:Lcom/instagram/android/fragment/k;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/k;Landroid/widget/CompoundButton;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/fragment/n;->b:Lcom/instagram/android/fragment/k;

    iput-object p2, p0, Lcom/instagram/android/fragment/n;->a:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/fragment/n;->a:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->performClick()Z

    return-void
.end method
