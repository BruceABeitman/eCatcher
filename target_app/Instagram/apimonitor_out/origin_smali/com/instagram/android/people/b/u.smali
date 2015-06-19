.class final Lcom/instagram/android/people/b/u;
.super Lcom/instagram/api/j/a;
.source "PhotosOfYouOptionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/people/b/q;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/b/q;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/b/u;->a:Lcom/instagram/android/people/b/q;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/b/q;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/people/b/u;-><init>(Lcom/instagram/android/people/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/facebook/az;->people_tagging_settings_change_fail:I

    invoke-static {v0}, Lcom/instagram/n/e;->a(I)V

    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/people/b/u;->a:Lcom/instagram/android/people/b/q;

    invoke-static {v0}, Lcom/instagram/android/people/b/q;->c(Lcom/instagram/android/people/b/q;)V

    return-void
.end method

.method public final b()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/android/people/b/u;->a:Lcom/instagram/android/people/b/q;

    invoke-static {v0}, Lcom/instagram/android/people/b/q;->a(Lcom/instagram/android/people/b/q;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/instagram/android/people/b/u;->a:Lcom/instagram/android/people/b/q;

    invoke-static {v0}, Lcom/instagram/android/people/b/q;->b(Lcom/instagram/android/people/b/q;)Lcom/instagram/android/widget/IndeterminateCheckBox;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setIndeterminate(Z)V

    return-void
.end method
