.class public Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;
.super Ljava/lang/Object;
.source "ContactsPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ContactsPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContactsPickerViewHolder"
.end annotation


# instance fields
.field public contactId:J

.field public divider:Landroid/view/View;

.field public emailIndicator:Landroid/widget/ImageView;

.field public phoneIndicator:Landroid/widget/ImageView;

.field public position:I

.field public separator:Landroid/widget/TextView;

.field public username:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a0123

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->emailIndicator:Landroid/widget/ImageView;

    const v0, 0x7f0a0122

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->phoneIndicator:Landroid/widget/ImageView;

    const v0, 0x7f0a01a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->separator:Landroid/widget/TextView;

    const v0, 0x7f0a0124

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->username:Landroid/widget/TextView;

    const v0, 0x7f0a0060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/ContactsPickerAdapter$ContactsPickerViewHolder;->divider:Landroid/view/View;

    return-void
.end method
