.class final Lcom/instagram/android/login/e;
.super Ljava/lang/Object;
.source "PasswordValidator.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/d;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/d;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/e;->a:Lcom/instagram/android/login/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .registers 5

    if-nez p2, :cond_2f

    iget-object v0, p0, Lcom/instagram/android/login/e;->a:Lcom/instagram/android/login/d;

    invoke-static {v0}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/d;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/login/e;->a:Lcom/instagram/android/login/d;

    invoke-static {v1}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/d;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_30

    iget-object v0, p0, Lcom/instagram/android/login/e;->a:Lcom/instagram/android/login/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/d;Z)V

    sget v0, Lcom/facebook/az;->password_must_be_six_characters:I

    invoke-static {v0}, Lcom/instagram/n/e;->a(I)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/instagram/android/login/e;->a:Lcom/instagram/android/login/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/login/d;->a(Lcom/instagram/android/login/d;Z)V

    goto :goto_2f
.end method
