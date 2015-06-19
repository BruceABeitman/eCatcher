.class public Lcom/bbm/ui/views/SetupEditText;
.super Landroid/widget/EditText;
.source "SetupEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/bbm/ui/views/SetupEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/bbm/ui/views/SetupEditText;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/bbm/ui/views/SetupEditText;->a()V

    return-void
.end method

.method private a()V
    .registers 2

    const v0, 0x7f090166

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/SetupEditText;->setHintTextColor(I)V

    const v0, 0x7f090167

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/SetupEditText;->setTextColor(I)V

    const v0, 0x7f090165

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/SetupEditText;->setBackgroundResource(I)V

    return-void
.end method


# virtual methods
.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method
