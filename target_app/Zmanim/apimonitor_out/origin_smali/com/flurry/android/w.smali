.class final Lcom/flurry/android/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private synthetic a:Landroid/widget/TextView;

.field private synthetic b:Lcom/flurry/android/v;


# direct methods
.method constructor <init>(Lcom/flurry/android/v;Landroid/widget/TextView;)V
    .registers 3

    iput-object p1, p0, Lcom/flurry/android/w;->b:Lcom/flurry/android/v;

    iput-object p2, p0, Lcom/flurry/android/w;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-eqz p2, :cond_e

    iget-object v0, p0, Lcom/flurry/android/w;->b:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->a(Lcom/flurry/android/v;)Landroid/text/SpannedString;

    move-result-object v0

    :goto_8
    iget-object v1, p0, Lcom/flurry/android/w;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/flurry/android/w;->b:Lcom/flurry/android/v;

    invoke-static {v0}, Lcom/flurry/android/v;->b(Lcom/flurry/android/v;)Landroid/text/SpannedString;

    move-result-object v0

    goto :goto_8
.end method
