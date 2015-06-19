.class final Lcom/instagram/android/fragment/ao;
.super Landroid/widget/ArrayAdapter;
.source "EditProfileFragment.java"

# interfaces
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/CharSequence;",
        ">;",
        "Landroid/widget/SpinnerAdapter;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    sget v0, Lcom/facebook/aw;->spinner_gender_selected:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/instagram/android/fragment/ao;->a:Landroid/content/Context;

    const-string v0, "-"

    iput-object v0, p0, Lcom/instagram/android/fragment/ao;->b:Ljava/lang/String;

    sget v0, Lcom/facebook/az;->gender_male:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ao;->c:Ljava/lang/String;

    sget v0, Lcom/facebook/az;->gender_female:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/fragment/ao;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(I)I
    .registers 2

    sget v0, Lcom/instagram/android/h/b/c;->c:I

    if-ne p0, v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    sget v0, Lcom/instagram/android/h/b/c;->a:I

    if-ne p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x2

    goto :goto_5
.end method

.method public static b(I)I
    .registers 2

    if-nez p0, :cond_5

    sget v0, Lcom/instagram/android/h/b/c;->c:I

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    sget v0, Lcom/instagram/android/h/b/c;->a:I

    goto :goto_4

    :cond_b
    sget v0, Lcom/instagram/android/h/b/c;->b:I

    goto :goto_4
.end method

.method private c(I)Ljava/lang/CharSequence;
    .registers 4

    invoke-static {p1}, Lcom/instagram/android/fragment/ao;->b(I)I

    move-result v0

    sget v1, Lcom/instagram/android/h/b/c;->c:I

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/instagram/android/fragment/ao;->b:Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    sget v1, Lcom/instagram/android/h/b/c;->a:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/instagram/android/fragment/ao;->c:Ljava/lang/String;

    goto :goto_a

    :cond_12
    iget-object v0, p0, Lcom/instagram/android/fragment/ao;->d:Ljava/lang/String;

    goto :goto_a
.end method


# virtual methods
.method public final getCount()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    if-nez p2, :cond_f

    iget-object v0, p0, Lcom/instagram/android/fragment/ao;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->spinner_gender_dropdown:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_f
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ao;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ao;->c(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
