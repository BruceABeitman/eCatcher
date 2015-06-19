.class final Lcom/instagram/android/people/c/m;
.super Lcom/instagram/api/j/a;
.source "ModifyPhotosOfYouHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/a",
        "<",
        "Lcom/instagram/feed/d/l;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instagram/android/people/c/a;

.field private b:Lcom/instagram/ui/dialog/f;


# direct methods
.method private constructor <init>(Lcom/instagram/android/people/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/people/c/m;->a:Lcom/instagram/android/people/c/a;

    invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/android/people/c/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/people/c/m;-><init>(Lcom/instagram/android/people/c/a;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    new-instance v0, Lcom/instagram/ui/dialog/f;

    iget-object v1, p0, Lcom/instagram/android/people/c/m;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v1}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/instagram/android/people/c/m;->b:Lcom/instagram/ui/dialog/f;

    iget-object v0, p0, Lcom/instagram/android/people/c/m;->b:Lcom/instagram/ui/dialog/f;

    iget-object v1, p0, Lcom/instagram/android/people/c/m;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v1}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/facebook/az;->removing:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/people/c/m;->b:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->show()V

    return-void
.end method

.method protected final a(Lcom/instagram/api/j/j;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/people/c/m;->a:Lcom/instagram/android/people/c/a;

    invoke-static {v0}, Lcom/instagram/android/people/c/a;->f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/facebook/az;->request_error:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/c/m;->b:Lcom/instagram/ui/dialog/f;

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->hide()V

    return-void
.end method
