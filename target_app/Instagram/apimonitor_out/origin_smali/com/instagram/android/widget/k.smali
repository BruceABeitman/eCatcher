.class public final Lcom/instagram/android/widget/k;
.super Ljava/lang/Object;
.source "MapImageViewHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/Double;

.field private final c:Ljava/lang/Double;

.field private final d:Ljava/lang/CharSequence;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/widget/k;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/widget/k;->b:Ljava/lang/Double;

    iput-object p3, p0, Lcom/instagram/android/widget/k;->c:Ljava/lang/Double;

    iput-object p4, p0, Lcom/instagram/android/widget/k;->d:Ljava/lang/CharSequence;

    iput-object p5, p0, Lcom/instagram/android/widget/k;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/widget/k;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/widget/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/android/widget/k;)Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/widget/k;->b:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/widget/k;)Ljava/lang/Double;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/widget/k;->c:Ljava/lang/Double;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/widget/k;)Ljava/lang/CharSequence;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/widget/k;->d:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/widget/k;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/widget/k;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/widget/k;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/instagram/android/widget/l;

    invoke-direct {v1, p0}, Lcom/instagram/android/widget/l;-><init>(Lcom/instagram/android/widget/k;)V

    sget v2, Lcom/facebook/az;->open_in_maps:I

    invoke-virtual {v0, v2}, Lcom/instagram/ui/dialog/b;->b(I)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v2, Lcom/facebook/az;->open:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    sget v2, Lcom/facebook/az;->cancel:I

    invoke-virtual {v0, v2, v1}, Lcom/instagram/ui/dialog/b;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
