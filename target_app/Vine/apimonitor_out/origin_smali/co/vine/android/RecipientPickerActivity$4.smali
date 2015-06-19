.class Lco/vine/android/RecipientPickerActivity$4;
.super Landroid/widget/ImageView;
.source "RecipientPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/RecipientPickerActivity;->addSendIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/RecipientPickerActivity;

.field final synthetic val$gray:I


# direct methods
.method constructor <init>(Lco/vine/android/RecipientPickerActivity;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/RecipientPickerActivity$4;->this$0:Lco/vine/android/RecipientPickerActivity;

    iput p3, p0, Lco/vine/android/RecipientPickerActivity$4;->val$gray:I

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    if-eqz p1, :cond_16

    iget-object v0, p0, Lco/vine/android/RecipientPickerActivity$4;->this$0:Lco/vine/android/RecipientPickerActivity;

    #getter for: Lco/vine/android/RecipientPickerActivity;->mProfileColor:I
    invoke-static {v0}, Lco/vine/android/RecipientPickerActivity;->access$200(Lco/vine/android/RecipientPickerActivity;)I

    move-result v0

    :goto_d
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v1}, Lco/vine/android/RecipientPickerActivity$4;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_16
    iget v0, p0, Lco/vine/android/RecipientPickerActivity$4;->val$gray:I

    goto :goto_d
.end method
