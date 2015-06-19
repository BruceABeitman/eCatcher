.class final Lcom/instagram/android/directshare/d/r;
.super Ljava/lang/Object;
.source "DirectSharePermalinkFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/c;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/r;->a:Lcom/instagram/android/directshare/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/directshare/d/r;->a:Lcom/instagram/android/directshare/d/c;

    invoke-static {v0}, Lcom/instagram/android/directshare/d/c;->k(Lcom/instagram/android/directshare/d/c;)V

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
