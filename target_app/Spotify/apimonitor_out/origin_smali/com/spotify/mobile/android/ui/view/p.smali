.class abstract Lcom/spotify/mobile/android/ui/view/p;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/p;-><init>()V

    return-void
.end method

.method protected static a(Landroid/widget/TextView;Ljava/lang/String;ZZ)V
    .registers 5

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_11

    const/4 v0, 0x4

    :goto_6
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void

    :cond_11
    const/4 v0, 0x0

    goto :goto_6
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract b()V
.end method
