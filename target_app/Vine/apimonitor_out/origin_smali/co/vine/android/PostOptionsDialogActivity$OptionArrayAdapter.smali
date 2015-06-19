.class Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PostOptionsDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/PostOptionsDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lco/vine/android/PostOptionsDialogActivity$Option;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/PostOptionsDialogActivity;


# direct methods
.method public constructor <init>(Lco/vine/android/PostOptionsDialogActivity;Landroid/content/Context;I)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;->this$0:Lco/vine/android/PostOptionsDialogActivity;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1}, Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/PostOptionsDialogActivity$Option;

    const v3, 0x7f0a014c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v3, v0, Lco/vine/android/PostOptionsDialogActivity$Option;->id:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_37

    iget-object v3, p0, Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;->this$0:Lco/vine/android/PostOptionsDialogActivity;

    invoke-virtual {v3}, Lco/vine/android/PostOptionsDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090081

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_28
    iget-object v3, v0, Lco/vine/android/PostOptionsDialogActivity$Option;->text:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v0, Lco/vine/android/PostOptionsDialogActivity$Option;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_37
    iget-object v3, p0, Lco/vine/android/PostOptionsDialogActivity$OptionArrayAdapter;->this$0:Lco/vine/android/PostOptionsDialogActivity;

    invoke-virtual {v3}, Lco/vine/android/PostOptionsDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_28
.end method
