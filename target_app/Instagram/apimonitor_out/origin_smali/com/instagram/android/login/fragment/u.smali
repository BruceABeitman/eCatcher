.class final Lcom/instagram/android/login/fragment/u;
.super Ljava/lang/Object;
.source "LookupFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/o;


# direct methods
.method private constructor <init>(Lcom/instagram/android/login/fragment/o;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/login/fragment/u;->a:Lcom/instagram/android/login/fragment/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/o;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/u;-><init>(Lcom/instagram/android/login/fragment/o;)V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/login/fragment/u;->a:Lcom/instagram/android/login/fragment/o;

    invoke-static {v0}, Lcom/instagram/android/login/fragment/o;->e(Lcom/instagram/android/login/fragment/o;)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
