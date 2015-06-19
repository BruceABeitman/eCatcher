.class Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EditionsSpinnerAdapter"
.end annotation


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field final synthetic this$0:Lco/vine/android/SettingsFragment;


# direct methods
.method constructor <init>(Lco/vine/android/SettingsFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->this$0:Lco/vine/android/SettingsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getCursor()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    iget-object v2, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_3a

    if-eqz p2, :cond_27

    move-object v0, p2

    :goto_f
    const v2, 0x7f0a004a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->getEditionName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :goto_26
    return-object v0

    :cond_27
    iget-object v2, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030092

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    :cond_3a
    move-object v0, p2

    goto :goto_26
.end method

.method public getEditionCode(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const-string v0, ""

    goto :goto_18
.end method

.method public getEditionName(I)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_19

    iget-object v0, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    iget-object v0, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :cond_19
    const-string v0, ""

    goto :goto_18
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    iget-object v2, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_3c

    if-eqz p2, :cond_29

    move-object v0, p2

    :goto_f
    const v2, 0x7f0a004a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->getEditionName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_28
    return-object v0

    :cond_29
    iget-object v2, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->this$0:Lco/vine/android/SettingsFragment;

    invoke-virtual {v2}, Lco/vine/android/SettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030092

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_f

    :cond_3c
    move-object v0, p2

    goto :goto_28
.end method

.method public setSelectionToUserEdition()V
    .registers 4

    iget-object v1, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_34

    iget-object v1, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_a
    iget-object v1, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mEdition:Ljava/lang/String;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$1200(Lco/vine/android/SettingsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->this$0:Lco/vine/android/SettingsFragment;

    #getter for: Lco/vine/android/SettingsFragment;->mEditionsSpinner:Landroid/widget/Spinner;
    invoke-static {v1}, Lco/vine/android/SettingsFragment;->access$2700(Lco/vine/android/SettingsFragment;)Landroid/widget/Spinner;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/SettingsFragment$EditionsSpinnerAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_34
    return-void
.end method
