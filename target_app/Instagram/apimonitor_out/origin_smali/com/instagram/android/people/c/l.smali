.class final Lcom/instagram/android/people/c/l;
.super Lcom/instagram/api/j/a;
.source "ModifyPhotosOfYouHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/people/c/a;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/c/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    iput-object p2, p0, Lcom/instagram/android/people/c/l;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/c/a;Ljava/lang/String;B)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/android/people/c/l;-><init>(Lcom/instagram/android/people/c/a;Ljava/lang/String;)V

    return-void
.end method

.method private c()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->e(Lcom/instagram/android/people/c/a;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->c(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/c/l;->b:Ljava/lang/String;

    const-string v2, "approve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->d(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/people/c/l;->b:Ljava/lang/String;

    const-string v2, "remove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    goto :goto_8
.end method


# virtual methods
.method public final a()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->c(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->d(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/instagram/android/people/c/l;->b:Ljava/lang/String;

    const-string v1, "approve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->c(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    :goto_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->d(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    goto :goto_27
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V

    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->people_tagging_modify_photos_of_you_failure:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/people/c/l;->c()V

    return-void
.end method

.method public final b()V
    .registers 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->e(Lcom/instagram/android/people/c/a;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->c(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->d(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/instagram/android/people/c/l;->b:Ljava/lang/String;

    const-string v1, "approve"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->c(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    goto :goto_a

    :cond_31
    iget-object v0, p0, Lcom/instagram/android/people/c/l;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->d(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    goto :goto_a
.end method
