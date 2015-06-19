.class public Lcom/fsck/k9/activity/setup/SpinnerOption;
.super Ljava/lang/Object;
.source "SpinnerOption.java"


# instance fields
.field public label:Ljava/lang/String;

.field public value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    return-void
.end method

.method public static setSpinnerOptionValue(Landroid/widget/Spinner;Ljava/lang/Object;)V
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_19

    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/activity/setup/SpinnerOption;

    iget-object v3, v2, Lcom/fsck/k9/activity/setup/SpinnerOption;->value:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3}, Landroid/widget/Spinner;->setSelection(IZ)V

    :cond_19
    return-void

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/activity/setup/SpinnerOption;->label:Ljava/lang/String;

    return-object v0
.end method
