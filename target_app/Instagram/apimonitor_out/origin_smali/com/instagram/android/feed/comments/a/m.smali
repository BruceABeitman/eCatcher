.class final Lcom/instagram/android/feed/comments/a/m;
.super Ljava/lang/Object;
.source "CommentThreadFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/instagram/android/feed/comments/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/android/feed/comments/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/feed/comments/a/m;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/feed/comments/a/m;->a:Lcom/instagram/android/feed/comments/a/a;

    invoke-static {v0}, Lcom/instagram/android/feed/comments/a/a;->c(Lcom/instagram/android/feed/comments/a/a;)Z

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
